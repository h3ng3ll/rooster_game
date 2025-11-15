import 'dart:async';
import 'dart:math';
import 'package:flame/components.dart';
import 'package:flame/effects.dart';
import '../components/egg.dart';
import '../systems/match_detector.dart';

typedef GridEgg = List<List<Egg?>>;

class GameBoard extends PositionComponent {
  final int gridSize;
  late GridEgg grid;
  final MatchDetector matchDetector = MatchDetector();

  Egg? selectedEgg;
  final Random random = Random();

  // Коллбэки для UI
  final Function(int score) onScoreChanged;
  final Function(int moves) onMovesChanged;
  final Function() onWin;
  final Function() onLose;

  int score = 0;
  int moves = 0;
  int targetScore = 1000;

  GameBoard({
    super.children,
    super.priority,
    super.key,
    required this.gridSize,
    required this.onScoreChanged,
    required this.onMovesChanged,
    required this.onWin,
    required this.onLose,
  });

  @override
  FutureOr<void> onLoad() async {
    // Инициализируем сетку
    grid = List.generate(
      gridSize,
      (row) => List.generate(gridSize, (col) => null),
    );

    // Заполняем доску
    await fillBoard();

    // Проверяем начальные совпадения и удаляем их
    await removeInitialMatches();
  }

  Future<void> fillBoard() async {
    for (int row = 0; row < gridSize; row++) {
      for (int col = 0; col < gridSize; col++) {
        if (grid[row][col] == null) {
          final egg = createRandomEgg(row, col);
          grid[row][col] = egg;
          await add(egg);
        }
      }
    }
  }

  Egg createRandomEgg(int row, int col) {
    // Получаем доступные цвета (избегаем создания начальных совпадений)
    final availableColors = getAvailableColors(row, col);
    final color = availableColors[random.nextInt(availableColors.length)];

    return Egg(
      color: color,
      row: row,
      col: col,
    );
  }

  //
  List<EggColor> getAvailableColors(int row, int col) {
    final allColors = EggColor.values.toList();
    final excludeColors = <EggColor>{};

    // // Проверяем горизонталь (два слева)
    // if (col >= 2 && grid[row][col - 1]?.color == grid[row][col - 2]?.color) {
    //   excludeColors.add(grid[row][col - 1]!.color);
    // }
    if (col >= 2) {
      final leftEgg1 = grid[row][col - 1];
      final leftEgg2 = grid[row][col - 2];
      if (leftEgg1 != null &&
          leftEgg2 != null &&
          leftEgg1.color == leftEgg2.color) {
        excludeColors.add(leftEgg1.color);
      }
    }

    // // Проверяем вертикаль (два сверху)
    // if (row >= 2 && grid[row - 1][col]?.color == grid[row - 2][col]?.color) {
    //   excludeColors.add(grid[row - 1][col]!.color);
    // }

    // вертикаль
    if (row >= 2) {
      final up1 = grid[row - 1][col];
      final up2 = grid[row - 2][col];
      if (up1 != null && up2 != null && up1.color == up2.color) {
        excludeColors.add(up1.color);
      }
    }
    final available = allColors
        .where((c) => !excludeColors.contains(c))
        .toList();
    return available.isEmpty ? allColors : available;
  }

  Future<void> removeInitialMatches() async {
    var matches = matchDetector.findMatches(grid);
    while (matches.isNotEmpty) {
      for (final egg in matches) {
        grid[egg.row][egg.col] = null;
        egg.removeFromParent();
      }
      await fillBoard();
      matches = matchDetector.findMatches(grid);
    }
  }

  //
  void onEggTapped(Egg egg) {
    print(
      'Selected egg ${selectedEgg?.col.toString()} ${selectedEgg?.row.toString()}',
    );

    if (selectedEgg == null) {
      // Выбираем первое яйцо
      selectedEgg = egg;
      egg.setSelected(true);
    } else if (selectedEgg == egg) {
      // Отменяем выбор
      egg.setSelected(false);
      selectedEgg = null;
    } else if (areNeighbors(selectedEgg!, egg)) {
      // Меняем местами соседние яйца
      selectedEgg!.setSelected(false);
      handleSwap(selectedEgg!, egg);
      selectedEgg = null;
    } else {
      // Выбираем другое яйцо
      selectedEgg!.setSelected(false);
      selectedEgg = egg;
      egg.setSelected(true);
    }
    print(
      'Selected egg ${(selectedEgg?.col).toString()} ${selectedEgg?.row.toString()}',
    );
  }

  //
  bool areNeighbors(Egg egg1, Egg egg2) {
    final rowDiff = (egg1.row - egg2.row).abs();
    final colDiff = (egg1.col - egg2.col).abs();
    print('Egg1 Row : ${egg1.row + 1} Col : ${egg1.col + 1}');
    print('Egg2 Row : ${egg2.row + 1} Col : ${egg2.col + 1}');
    return (rowDiff == 1 && colDiff == 0) || (rowDiff == 0 && colDiff == 1);
  }

  //
  Future<void> _swap(Egg a, Egg b) async {
    final ar = a.row;
    final ac = a.col;

    final br = b.row;
    final bc = b.col;

    // Меняем в grid
    grid[ar][ac] = b;
    grid[br][bc] = a;

    // Анимации
    await Future.wait([
      a.moveTo(br, bc),
      b.moveTo(ar, ac),
    ]);
  }

  Future<void> handleSwap(Egg egg1, Egg egg2) async {
    await _swap(egg1, egg2);
    // await processMatches();
    // Проверяем совпадения
    final matches = matchDetector.findMatches(
      grid,
    );

    if (matches.isNotEmpty) {
      // Есть совпадения - обрабатываем их
      moves--;
      onMovesChanged.call(moves);
      await processMatches();

      checkGameEnd();
    }
  }

  //
  Future<void> processMatches() async {
    var matches = matchDetector.findMatches(grid);

    while (matches.isNotEmpty) {
      // Удаляем совпадения
      for (final egg in matches) {
        score += 10;
        grid[egg.row][egg.col] = null;

        // Анимация исчезновения
        await egg.add(
          ScaleEffect.to(
            Vector2.zero(),
            EffectController(duration: 0.2),
          ),
        );
        egg.removeFromParent();
      }

      onScoreChanged.call(score);

      // Опускаем яйца
      await dropEggs();

      // Заполняем пустые места
      await fillEmptySpaces();

      // Проверяем новые совпадения
      matches = matchDetector.findMatches(grid);
    }
  }

  Future<void> dropEggs() async {
    final futures = <Future>[];

    for (int col = 0; col < gridSize; col++) {
      int emptyRow = gridSize - 1;

      for (int row = gridSize - 1; row >= 0; row--) {
        if (grid[row][col] != null) {
          if (row != emptyRow) {
            final egg = grid[row][col]!;
            grid[emptyRow][col] = egg;
            grid[row][col] = null;
            futures.add(egg.moveTo(emptyRow, col));
          }
          emptyRow--;
        }
      }
    }

    await Future.wait(futures);
  }

  Future<void> fillEmptySpaces() async {
    for (int col = 0; col < gridSize; col++) {
      for (int row = gridSize - 1; row >= 0; row--) {
        if (grid[row][col] == null) {
          final egg = createRandomEgg(row, col);

          // Начинаем сверху экрана
          egg.position.y = -Egg.cellSize;

          grid[row][col] = egg;
          await add(egg);
          await egg.moveTo(row, col);
        }
      }
    }
  }

  void checkGameEnd() {
    if (score >= targetScore) {
      onWin.call();
    } else if (moves <= 0) {
      onLose.call();
    }
  }
}





import 'package:rooster_game/src/pages/game_page/flame_component/components/egg.dart';

class MatchDetector {
  // Поиск совпадений 3+ в ряд
  List<Egg> findMatches(List<List<Egg?>> grid) {
    final matches = <Egg>{};

    // Горизонтальные совпадения
    for (int row = 0; row < grid.length; row++) {
      for (int col = 0; col < grid[row].length - 2; col++) {
        final egg1 = grid[row][col];
        final egg2 = grid[row][col + 1];
        final egg3 = grid[row][col + 2];

        if (egg1 != null && egg2 != null && egg3 != null &&
            egg1.color == egg2.color && egg2.color == egg3.color) {
          matches.addAll([egg1, egg2, egg3]);

          // Проверяем еще дальше
          int checkCol = col + 3;
          while (checkCol < grid[row].length &&
              grid[row][checkCol]?.color == egg1.color) {
            matches.add(grid[row][checkCol]!);
            checkCol++;
          }
        }
      }
    }

    // Вертикальные совпадения
    for (int col = 0; col < grid[0].length; col++) {
      for (int row = 0; row < grid.length - 2; row++) {
        final egg1 = grid[row][col];
        final egg2 = grid[row + 1][col];
        final egg3 = grid[row + 2][col];

        if (egg1 != null && egg2 != null && egg3 != null &&
            egg1.color == egg2.color && egg2.color == egg3.color) {
          matches.addAll([egg1, egg2, egg3]);

          // Проверяем еще дальше
          int checkRow = row + 3;
          while (checkRow < grid.length &&
              grid[checkRow][col]?.color == egg1.color) {
            matches.add(grid[checkRow][col]!);
            checkRow++;
          }
        }
      }
    }

    return matches.toList();
  }
}
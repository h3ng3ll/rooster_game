


import 'package:rooster_game/src/models/game_config.dart';

abstract class GameLevels {
  static final levels = <GameConfig>[
    // ---------- УРОВНИ 1–3 (обучающие) ----------
    GameConfig(
      gridSize: 4,        // маленькое поле
      tries: 9999,         // попытки не ограничены
      canByAttempts: false,
      demandScore: 50,
      calculateAttemptAtMoves: false, // неверные ходы не штрафуются
    ),

    GameConfig(
      gridSize: 5,        // поле увеличилось
      tries: 9999,
      canByAttempts: false,
      demandScore: 120,
      calculateAttemptAtMoves: false,
    ),

    GameConfig(
      gridSize: 6,        // максимальное обучающее поле
      tries: 9999,
      canByAttempts: false,
      demandScore: 200,
      calculateAttemptAtMoves: false,
    ),

    // ---------- УРОВНИ 4–6 (классика: ограничены попытки, но движение без штрафов) ----------
    GameConfig(
      gridSize: 7,        // максимальный размер
      tries: 20,           // попытки ограничены
      canByAttempts: true, // можно покупать попытки
      demandScore: 350,
      calculateAttemptAtMoves: false, // штраф только за удачный матч
    ),

    GameConfig(
      gridSize: 7,
      tries: 18,
      canByAttempts: true,
      demandScore: 450,
      calculateAttemptAtMoves: false,
    ),

    GameConfig(
      gridSize: 7,
      tries: 16,
      canByAttempts: true,
      demandScore: 550,
      calculateAttemptAtMoves: false,
    ),

    // ---------- УРОВНИ 7–8 (каждое движение тратит попытку!) ----------
    GameConfig(
      gridSize: 7,
      tries: 25,           // даём побольше, потому что каждый свайп — минус попытка
      canByAttempts: true,
      demandScore: 700,
      calculateAttemptAtMoves: true,  // теперь ЛЮБОЙ ход уменьшает tries
    ),

    GameConfig(
      gridSize: 7,
      tries: 22,
      canByAttempts: true,
      demandScore: 850,
      calculateAttemptAtMoves: true,
    ),

    // ---------- УРОВЕНЬ 9 (особый, без изменения логики игры, но с вызовом) ----------
    GameConfig(
      gridSize: 7,
      tries: 12,           // очень мало попыток → чел должен играть аккуратно
      canByAttempts: true, // можно докупить, чтобы не бесить игроков
      demandScore: 950,    // высокий порог → чел должен делать только точные ходы
      calculateAttemptAtMoves: true,  // как в 7–8 уровне, но жёстче
    ),
  ];

}
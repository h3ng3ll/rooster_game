class GameConfig {
  /// 4x4 for example
  final int gridSize;

  /// 20 attempt for a round for example
  final int tries;

  /// if false calculate only complete match combo
  /// if true every moves and any swaps are decrement
  /// moves
  final bool calculateAttemptAtMoves;

  /// can user buy more attempt when out of tries
  final bool canByAttempts;

  /// the criteria of which game to be win
  /// For example required score is 300 and user
  /// earn greater it will win otherwise if score lower and
  /// attempts are out e.g. 0 it will loose
  final int demandScore;

  GameConfig({
    required this.gridSize,
    required this.tries,
    required this.canByAttempts,
    required this.demandScore,
    required this.calculateAttemptAtMoves,
  });
}

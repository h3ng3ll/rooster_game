extension StringExt on String {
  /// remove prefix 'assets/' или '/assets/' from paths,
  /// in order load assets to flame.
  String get withoutAssets {
    return replaceFirst(RegExp(r'^/?assets/'), '');
  }
}

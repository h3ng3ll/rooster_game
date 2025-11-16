// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsAudioGen {
  const $AssetsAudioGen();

  /// File path: assets/audio/background_sound.mp3
  String get backgroundSound => 'assets/audio/background_sound.mp3';

  /// List of all assets
  List<String> get values => [backgroundSound];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/arrow_back.svg
  String get arrowBack => 'assets/icons/arrow_back.svg';

  /// File path: assets/icons/edit.svg
  String get edit => 'assets/icons/edit.svg';

  /// File path: assets/icons/info.svg
  String get info => 'assets/icons/info.svg';

  /// File path: assets/icons/menu.svg
  String get menu => 'assets/icons/menu.svg';

  /// File path: assets/icons/pause.svg
  String get pause => 'assets/icons/pause.svg';

  /// List of all assets
  List<String> get values => [arrowBack, edit, info, menu, pause];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/action_btn.png
  AssetGenImage get actionBtn =>
      const AssetGenImage('assets/images/action_btn.png');

  /// File path: assets/images/btn.png
  AssetGenImage get btn => const AssetGenImage('assets/images/btn.png');

  /// File path: assets/images/burst_egg.png
  AssetGenImage get burstEgg =>
      const AssetGenImage('assets/images/burst_egg.png');

  /// File path: assets/images/coin.png
  AssetGenImage get coin => const AssetGenImage('assets/images/coin.png');

  /// File path: assets/images/crimson_egg.png
  AssetGenImage get crimsonEgg =>
      const AssetGenImage('assets/images/crimson_egg.png');

  /// File path: assets/images/fire_circle.png
  AssetGenImage get fireCircle =>
      const AssetGenImage('assets/images/fire_circle.png');

  /// File path: assets/images/fire_egg.png
  AssetGenImage get fireEgg =>
      const AssetGenImage('assets/images/fire_egg.png');

  /// File path: assets/images/game_field_bg.png
  AssetGenImage get gameFieldBg =>
      const AssetGenImage('assets/images/game_field_bg.png');

  /// File path: assets/images/green_egg.png
  AssetGenImage get greenEgg =>
      const AssetGenImage('assets/images/green_egg.png');

  /// File path: assets/images/hen.png
  AssetGenImage get hen => const AssetGenImage('assets/images/hen.png');

  /// File path: assets/images/ic_launcher.png
  AssetGenImage get icLauncher =>
      const AssetGenImage('assets/images/ic_launcher.png');

  /// File path: assets/images/ice_egg.png
  AssetGenImage get iceEgg => const AssetGenImage('assets/images/ice_egg.png');

  /// File path: assets/images/lemon_egg.png
  AssetGenImage get lemonEgg =>
      const AssetGenImage('assets/images/lemon_egg.png');

  /// File path: assets/images/nav_btn.png
  AssetGenImage get navBtn => const AssetGenImage('assets/images/nav_btn.png');

  /// File path: assets/images/orange_white_egg.png
  AssetGenImage get orangeWhiteEgg =>
      const AssetGenImage('assets/images/orange_white_egg.png');

  /// File path: assets/images/purple_egg.png
  AssetGenImage get purpleEgg =>
      const AssetGenImage('assets/images/purple_egg.png');

  /// File path: assets/images/red_egg.png
  AssetGenImage get redEgg => const AssetGenImage('assets/images/red_egg.png');

  /// File path: assets/images/red_white_egg.png
  AssetGenImage get redWhiteEgg =>
      const AssetGenImage('assets/images/red_white_egg.png');

  /// File path: assets/images/rooster.png
  AssetGenImage get rooster => const AssetGenImage('assets/images/rooster.png');

  /// File path: assets/images/wall_in_flame.png
  AssetGenImage get wallInFlame =>
      const AssetGenImage('assets/images/wall_in_flame.png');

  /// File path: assets/images/white_red_egg.png
  AssetGenImage get whiteRedEgg =>
      const AssetGenImage('assets/images/white_red_egg.png');

  /// File path: assets/images/white_star_pink_egg.png
  AssetGenImage get whiteStarPinkEgg =>
      const AssetGenImage('assets/images/white_star_pink_egg.png');

  /// File path: assets/images/x10.png
  AssetGenImage get x10 => const AssetGenImage('assets/images/x10.png');

  /// File path: assets/images/x20.png
  AssetGenImage get x20 => const AssetGenImage('assets/images/x20.png');

  /// File path: assets/images/x30.png
  AssetGenImage get x30 => const AssetGenImage('assets/images/x30.png');

  /// File path: assets/images/x60.png
  AssetGenImage get x60 => const AssetGenImage('assets/images/x60.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    actionBtn,
    btn,
    burstEgg,
    coin,
    crimsonEgg,
    fireCircle,
    fireEgg,
    gameFieldBg,
    greenEgg,
    hen,
    icLauncher,
    iceEgg,
    lemonEgg,
    navBtn,
    orangeWhiteEgg,
    purpleEgg,
    redEgg,
    redWhiteEgg,
    rooster,
    wallInFlame,
    whiteRedEgg,
    whiteStarPinkEgg,
    x10,
    x20,
    x30,
    x60,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsAudioGen audio = $AssetsAudioGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}

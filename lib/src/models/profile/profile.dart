
import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rooster_game/src/utils/converters/uint_8_list_converter.dart';

part 'profile.freezed.dart';

part 'profile.g.dart';

@freezed
sealed class Profile with _$Profile {
  Profile._();

  factory Profile({
    @Uint8ListConverter() Uint8List? avatar,
    @Default('') String username,
    @Default('') String email,
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
}

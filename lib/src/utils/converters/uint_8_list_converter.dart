import 'dart:convert';
import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

class Uint8ListConverter implements JsonConverter<Uint8List?, List<dynamic>?> {
  const Uint8ListConverter();

  @override
  Uint8List? fromJson(dynamic json) {
    if (json == null) return null;

    return Uint8List.fromList(
      (json as List)
          .map(
            (e) => e as int,
          )
          .toList(),
    );
  }

  @override
  List<int>? toJson(Uint8List? object) {
    return object?.toList();
  }
}

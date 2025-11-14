
import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

class Uint8ListConverter implements JsonConverter<Uint8List?, dynamic> {
  const Uint8ListConverter();

  @override
  Uint8List? fromJson(dynamic json) {
    return json == null ? null : Uint8List.fromList(json);
  }

  @override
  dynamic toJson(Uint8List? object) {
    return object;
  }
}
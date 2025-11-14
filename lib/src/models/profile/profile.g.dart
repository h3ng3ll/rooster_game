// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Profile _$ProfileFromJson(Map<String, dynamic> json) => _Profile(
  avatar: const Uint8ListConverter().fromJson(json['avatar']),
  username: json['username'] as String? ?? '',
  email: json['email'] as String? ?? '',
);

Map<String, dynamic> _$ProfileToJson(_Profile instance) => <String, dynamic>{
  'avatar': const Uint8ListConverter().toJson(instance.avatar),
  'username': instance.username,
  'email': instance.email,
};

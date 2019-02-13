// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Album _$AlbumFromJson(Map<String, dynamic> json) {
  return Album(name: json['#text'] as String, mbid: json['mbid'] as String);
}

Map<String, dynamic> _$AlbumToJson(Album instance) =>
    <String, dynamic>{'#text': instance.name, 'mbid': instance.mbid};

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Artist _$ArtistFromJson(Map<String, dynamic> json) {
  return Artist(name: json['#text'] as String, mbid: json['mbid'] as String);
}

Map<String, dynamic> _$ArtistToJson(Artist instance) =>
    <String, dynamic>{'#text': instance.name, 'mbid': instance.mbid};

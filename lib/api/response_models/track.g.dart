// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Track _$TrackFromJson(Map<String, dynamic> json) {
  return Track(
      name: json['name'] as String,
      mbid: json['mbid'] as String,
      image: (json['image'] as List)
          .map((e) => _TrackImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      album: Album.fromJson(json['album'] as Map<String, dynamic>),
      artist: Artist.fromJson(json['artist'] as Map<String, dynamic>),
      attr: json['attr'] == null
          ? null
          : _TrackAttribute.fromJson(json['attr'] as Map<String, dynamic>));
}

Map<String, dynamic> _$TrackToJson(Track instance) => <String, dynamic>{
      'name': instance.name,
      'mbid': instance.mbid,
      'attr': instance.attr,
      'image': instance.image,
      'album': instance.album,
      'artist': instance.artist
    };

_TrackAttribute _$_TrackAttributeFromJson(Map<String, dynamic> json) {
  return _TrackAttribute(nowPlaying: json['nowplaying'] as String);
}

Map<String, dynamic> _$_TrackAttributeToJson(_TrackAttribute instance) =>
    <String, dynamic>{'nowplaying': instance.nowPlaying};

_TrackImage _$_TrackImageFromJson(Map<String, dynamic> json) {
  return _TrackImage(
      imageUrl: json['#text'] as String, size: json['size'] as String);
}

Map<String, dynamic> _$_TrackImageToJson(_TrackImage instance) =>
    <String, dynamic>{'#text': instance.imageUrl, 'size': instance.size};

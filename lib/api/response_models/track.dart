import 'package:json_annotation/json_annotation.dart';
import 'package:mobilefm/api/api.dart';

part 'track.g.dart';

@JsonSerializable(nullable: false)
class Track {
  final String name;

  final String mbid;

  @JsonKey(nullable: true)
  final _TrackAttribute attr;

  final List<_TrackImage> image;
  final Album album;
  final Artist artist;

  Track({this.name, this.mbid, this.image, this.album, this.artist, this.attr});
  factory Track.fromJson(Map<String, dynamic> json) => _$TrackFromJson(json);
  Map<String, dynamic> toJson() => _$TrackToJson(this);
}

@JsonSerializable(nullable: false)
class _TrackAttribute {
  @JsonKey(name: "nowplaying")
  final String nowPlaying;

  _TrackAttribute({this.nowPlaying});
  factory _TrackAttribute.fromJson(Map<String, dynamic> json) =>
      _$_TrackAttributeFromJson(json);
  Map<String, dynamic> toJson() => _$_TrackAttributeToJson(this);
}

@JsonSerializable(nullable: false)
class _TrackImage {
  @JsonKey(name: "#text")
  final String imageUrl;

  final String size;

  _TrackImage({this.imageUrl, this.size});
  factory _TrackImage.fromJson(Map<String, dynamic> json) =>
      _$_TrackImageFromJson(json);
  Map<String, dynamic> toJson() => _$_TrackImageToJson(this);
}

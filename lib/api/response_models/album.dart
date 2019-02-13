import 'package:json_annotation/json_annotation.dart';

part 'album.g.dart';

@JsonSerializable(nullable: false)
class Album {
  @JsonKey(name: "#text")
  final String name;

  final String mbid;

  Album({this.name, this.mbid});
  factory Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson(json);
  Map<String, dynamic> toJson() => _$AlbumToJson(this);
}
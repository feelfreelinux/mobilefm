import 'package:json_annotation/json_annotation.dart';

part 'artist.g.dart';

@JsonSerializable(nullable: false)
class Artist {
  @JsonKey(name: "#text")
  final String name;

  final String mbid;

  Artist({this.name, this.mbid});
  factory Artist.fromJson(Map<String, dynamic> json) => _$ArtistFromJson(json);
  Map<String, dynamic> toJson() => _$ArtistToJson(this);
}
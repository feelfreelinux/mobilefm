import 'package:mobilefm/api/api.dart';
import 'dart:convert';

///
/// User api handles all user-related stuff
/// 
///
class UserApi extends ApiResource {
  UserApi(ApiClient client) : super(client);


  Future<List<Track>> getRecentTracks(String username) async {
    var result = await client.request("user.getrecenttracks", params: { 'user': username });
    var tracks = result["recenttracks"]["track"] as List<dynamic>;
    return tracks.map((e) => Track.fromJson(e)).toList();
  }
}
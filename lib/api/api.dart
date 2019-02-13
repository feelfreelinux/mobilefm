export 'client.dart';
export 'resources/api_resource.dart';
export 'resources/user.dart';
export 'resources/library.dart';
export 'resources/artist.dart';
export 'resources/tag.dart';
export 'resources/geo.dart';
export 'resources/chart.dart';
export 'resources/track.dart';
export 'resources/user.dart';
export 'resources/album.dart';
export 'response_models/album.dart';
export 'response_models/artist.dart';
export 'response_models/track.dart';

import 'package:mobilefm/api/client.dart';
import 'package:mobilefm/api/api.dart';
import 'dart:convert';
import 'dart:async' show Future;

class LastFmApiCient {
  final ApiClient _client = ApiClient();

  UserApi user;

  LastFmApiCient() {
    this.user = UserApi(_client);
  }
}

var api = LastFmApiCient();

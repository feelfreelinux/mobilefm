import 'dart:io';

import 'package:mobx/mobx.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:mobilefm/api/api.dart';

part 'track_list.g.dart';

class TrackList = TrackListBase with _$TrackList;


enum LoadType { Initial, Reload }

abstract class TrackListBase implements Store {
  @observable
  var isLoading = true;

  @observable
  ObservableList<Track> tracks = ObservableList<Track>();

  @action
  Future<void> loadRecentTracks({LoadType loadType = LoadType.Initial,}) async {
    if (loadType == LoadType.Initial) {
      this.isLoading = true;
    }

    var recentTracks = await api.user.getRecentTracks('dddcya');
    tracks.clear();
    tracks.addAll(recentTracks);

    if (loadType == LoadType.Initial) {
      this.isLoading = false;
    }
  }
}

final TrackList tracks = TrackList();
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_list.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies

mixin _$TrackList on TrackListBase, Store {
  final _$isLoadingAtom = Atom(name: 'TrackListBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportObserved();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    mainContext.checkIfStateModificationsAreAllowed(_$isLoadingAtom);
    super.isLoading = value;
    _$isLoadingAtom.reportChanged();
  }

  final _$tracksAtom = Atom(name: 'TrackListBase.tracks');

  @override
  ObservableList<Track> get tracks {
    _$tracksAtom.reportObserved();
    return super.tracks;
  }

  @override
  set tracks(ObservableList<Track> value) {
    mainContext.checkIfStateModificationsAreAllowed(_$tracksAtom);
    super.tracks = value;
    _$tracksAtom.reportChanged();
  }

  final _$loadRecentTracksAsyncAction = AsyncAction('loadRecentTracks');

  @override
  Future<void> loadRecentTracks({LoadType loadType = LoadType.Initial}) {
    return _$loadRecentTracksAsyncAction
        .run(() => super.loadRecentTracks(loadType: loadType));
  }
}

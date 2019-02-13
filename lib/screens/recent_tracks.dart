import 'package:mobilefm/api/api.dart';
import 'package:mobilefm/models/track_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class RecentTracksWidget extends StatefulWidget {
  RecentTracksWidget();

  @override
  RecentTracksState createState() => RecentTracksState();
}

class RecentTracksState extends State<RecentTracksWidget> {
  @override
  void initState() {
    super.initState();
    print('init state');
    tracks.loadRecentTracks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recent scrobbles'),
      ),
      body: Container(
        child: RefreshIndicator(
          child: Observer(
            builder: (_) {
              if (tracks.isLoading) {
                return Center(child: CircularProgressIndicator());
              }

              return ListView.builder(
                itemCount: tracks.tracks.length,
                itemBuilder: (_, index) {
                  final track = tracks.tracks[index];

                  return ListTile(title: Text(track.name ?? ''));
                },
              );
            },
          ),
          onRefresh: () => tracks.loadRecentTracks(loadType: LoadType.Reload),
        ),
      ),
    );
  }
}

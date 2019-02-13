import 'package:mobx/mobx.dart';

part 'scrobble.g.dart';

class Scrobble = ScrobbleBase with _$Scrobble;

abstract class ScrobbleBase implements Store {
  ScrobbleBase(
      {this.id,
      this.title,
      this.user,
      this.timeAgo,
      this.commentsCount,
      this.points,
      this.url,
      this.content});

  final int id;

  @observable
  String title = '';

  @observable
  String user = '';

  @observable
  String timeAgo = '';

  @observable
  String url = '';

  @observable
  int commentsCount = 0;

  @observable
  int points = 0;

  @observable
  bool done = false;

  @observable
  String content = '';
}

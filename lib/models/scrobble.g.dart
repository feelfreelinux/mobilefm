// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scrobble.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies

mixin _$Scrobble on ScrobbleBase, Store {
  final _$titleAtom = Atom(name: 'ScrobbleBase.title');

  @override
  String get title {
    _$titleAtom.reportObserved();
    return super.title;
  }

  @override
  set title(String value) {
    mainContext.checkIfStateModificationsAreAllowed(_$titleAtom);
    super.title = value;
    _$titleAtom.reportChanged();
  }

  final _$userAtom = Atom(name: 'ScrobbleBase.user');

  @override
  String get user {
    _$userAtom.reportObserved();
    return super.user;
  }

  @override
  set user(String value) {
    mainContext.checkIfStateModificationsAreAllowed(_$userAtom);
    super.user = value;
    _$userAtom.reportChanged();
  }

  final _$timeAgoAtom = Atom(name: 'ScrobbleBase.timeAgo');

  @override
  String get timeAgo {
    _$timeAgoAtom.reportObserved();
    return super.timeAgo;
  }

  @override
  set timeAgo(String value) {
    mainContext.checkIfStateModificationsAreAllowed(_$timeAgoAtom);
    super.timeAgo = value;
    _$timeAgoAtom.reportChanged();
  }

  final _$urlAtom = Atom(name: 'ScrobbleBase.url');

  @override
  String get url {
    _$urlAtom.reportObserved();
    return super.url;
  }

  @override
  set url(String value) {
    mainContext.checkIfStateModificationsAreAllowed(_$urlAtom);
    super.url = value;
    _$urlAtom.reportChanged();
  }

  final _$commentsCountAtom = Atom(name: 'ScrobbleBase.commentsCount');

  @override
  int get commentsCount {
    _$commentsCountAtom.reportObserved();
    return super.commentsCount;
  }

  @override
  set commentsCount(int value) {
    mainContext.checkIfStateModificationsAreAllowed(_$commentsCountAtom);
    super.commentsCount = value;
    _$commentsCountAtom.reportChanged();
  }

  final _$pointsAtom = Atom(name: 'ScrobbleBase.points');

  @override
  int get points {
    _$pointsAtom.reportObserved();
    return super.points;
  }

  @override
  set points(int value) {
    mainContext.checkIfStateModificationsAreAllowed(_$pointsAtom);
    super.points = value;
    _$pointsAtom.reportChanged();
  }

  final _$doneAtom = Atom(name: 'ScrobbleBase.done');

  @override
  bool get done {
    _$doneAtom.reportObserved();
    return super.done;
  }

  @override
  set done(bool value) {
    mainContext.checkIfStateModificationsAreAllowed(_$doneAtom);
    super.done = value;
    _$doneAtom.reportChanged();
  }

  final _$contentAtom = Atom(name: 'ScrobbleBase.content');

  @override
  String get content {
    _$contentAtom.reportObserved();
    return super.content;
  }

  @override
  set content(String value) {
    mainContext.checkIfStateModificationsAreAllowed(_$contentAtom);
    super.content = value;
    _$contentAtom.reportChanged();
  }
}

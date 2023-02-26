// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:custom_player_tdd/src/domain/models/track_model.dart';
import 'package:custom_player_tdd/utils/int_utils.dart';

import 'external_urls_model.dart';
import 'followers_model.dart';
import 'images_model.dart';
import 'owner_model.dart';

class PlayListModel {
  bool? collaborative;
  String? description;
  ExternalUrls? externalUrls;
  Followers? followers;
  String? href;
  String? id;
  List<Images>? images;
  String? name;
  Owner? owner;
  bool? public;
  String? snapshotId;
  PlayListTracks? tracks;
  String? type;
  String? uri;
}

class PlayListTracks {
  final String? href;
  final int? limit;
  final String? next;
  final int? offset;
  final String? previous;
  final int? total;
  final List<PlayListTrackItems>? items;
  PlayListTracks({
    this.href,
    this.limit,
    this.next,
    this.offset,
    this.previous,
    this.total,
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'href': href,
      'limit': limit,
      'next': next,
      'offset': offset,
      'previous': previous,
      'total': total,
      'items': items?.map((x) => x.toMap()).toList(),
    };
  }

  factory PlayListTracks.fromMap(Map<String, dynamic> map) {
    return PlayListTracks(
      href: map['href'] != null ? map['href'] as String : null,
      limit: IntUtil.parseInt(map['limit']),
      next: map['next'] != null ? map['next'] as String : null,
      offset: IntUtil.parseInt(map['offset']),
      previous: map['previous'] != null ? map['previous'] as String : null,
      total: IntUtil.parseInt(map['total']),
      items: map['items'] != null
          ? List<PlayListTrackItems>.from(
              (map['items'] as List).map<PlayListTrackItems?>(
                (x) => PlayListTrackItems.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory PlayListTracks.fromJson(String source) =>
      PlayListTracks.fromMap(json.decode(source) as Map<String, dynamic>);
}

class PlayListTrackItems {
  final bool? addedAt;
  final AddedBy? addedBy;
  final bool? isLocal;
  final Track? track;
  PlayListTrackItems({
    this.addedAt,
    this.addedBy,
    this.isLocal,
    this.track,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addedAt': addedAt,
      'addedBy': addedBy?.toMap(),
      'isLocal': isLocal,
      'track': track?.toMap(),
    };
  }

  factory PlayListTrackItems.fromMap(Map<String, dynamic> map) {
    return PlayListTrackItems(
      addedAt: map['addedAt'] != null ? map['addedAt'] as bool : null,
      addedBy: map['addedBy'] != null
          ? AddedBy.fromMap(map['addedBy'] as Map<String, dynamic>)
          : null,
      isLocal: map['isLocal'] != null ? map['isLocal'] as bool : null,
      track: map['track'] != null
          ? Track.fromMap(map['track'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory PlayListTrackItems.fromJson(String source) =>
      PlayListTrackItems.fromMap(json.decode(source) as Map<String, dynamic>);
}

class AddedBy {
  final ExternalUrls? externalUrls;
  final Followers? followers;
  final String? href;
  final String? id;
  final String? type;
  final String? uri;
  AddedBy({
    this.externalUrls,
    this.followers,
    this.href,
    this.id,
    this.type,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalUrls': externalUrls?.toMap(),
      'followers': followers?.toMap(),
      'href': href,
      'id': id,
      'type': type,
      'uri': uri,
    };
  }

  factory AddedBy.fromMap(Map<String, dynamic> map) {
    return AddedBy(
      externalUrls: map['externalUrls'] != null
          ? ExternalUrls.fromMap(map['externalUrls'] as Map<String, dynamic>)
          : null,
      followers: map['followers'] != null
          ? Followers.fromMap(map['followers'] as Map<String, dynamic>)
          : null,
      href: map['href'] != null ? map['href'] as String : null,
      id: map['id'] != null ? map['id'] as String : null,
      type: map['type'] != null ? map['type'] as String : null,
      uri: map['uri'] != null ? map['uri'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory AddedBy.fromJson(String source) =>
      AddedBy.fromMap(json.decode(source) as Map<String, dynamic>);
}

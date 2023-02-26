// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:custom_player_tdd/src/domain/models/restrictions_model.dart';
import 'package:custom_player_tdd/utils/int_utils.dart';

import 'album_model.dart';
import 'artist_model.dart';
import 'external_urls_model.dart';

class Track {
  Album? album;
  List<Artist>? artists;
  List<String>? availableMarkets;
  int? discNumber;
  int? durationMs;
  bool? explicit;
  ExternalIds? externalIds;
  ExternalUrls? externalUrls;
  String? href;
  String? id;
  bool? isPlayable;
  Restrictions? restrictions;
  String? name;
  int? popularity;
  String? previewUrl;
  int? trackNumber;
  String? type;
  String? uri;
  bool? isLocal;
  Track({
    this.album,
    this.artists,
    this.availableMarkets,
    this.discNumber,
    this.durationMs,
    this.explicit,
    this.externalIds,
    this.externalUrls,
    this.href,
    this.id,
    this.isPlayable,
    this.restrictions,
    this.name,
    this.popularity,
    this.previewUrl,
    this.trackNumber,
    this.type,
    this.uri,
    this.isLocal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'album': album?.toMap(),
      'artists': artists?.map((x) => x.toMap()).toList(),
      'availableMarkets': availableMarkets,
      'discNumber': discNumber,
      'durationMs': durationMs,
      'explicit': explicit,
      'externalIds': externalIds?.toMap(),
      'externalUrls': externalUrls?.toMap(),
      'href': href,
      'id': id,
      'isPlayable': isPlayable,
      'restrictions': restrictions?.toMap(),
      'name': name,
      'popularity': popularity,
      'previewUrl': previewUrl,
      'trackNumber': trackNumber,
      'type': type,
      'uri': uri,
      'isLocal': isLocal,
    };
  }

  factory Track.fromMap(Map<String, dynamic> map) {
    return Track(
      album: map['album'] != null
          ? Album.fromMap(map['album'] as Map<String, dynamic>)
          : null,
      artists: map['artists'] != null
          ? List<Artist>.from(
              (map['artists'] as List).map<Artist?>(
                (x) => Artist.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      availableMarkets: map['availableMarkets'] != null
          ? List<String>.from((map['availableMarkets'] as List<String>))
          : null,
      discNumber: IntUtil.parseInt(map['discNumber']),
      durationMs: IntUtil.parseInt(map['durationMs']),
      explicit: map['explicit'] != null ? map['explicit'] as bool : null,
      externalIds: map['externalIds'] != null
          ? ExternalIds.fromMap(map['externalIds'] as Map<String, dynamic>)
          : null,
      externalUrls: map['externalUrls'] != null
          ? ExternalUrls.fromMap(map['externalUrls'] as Map<String, dynamic>)
          : null,
      href: map['href'] != null ? map['href'] as String : null,
      id: map['id'] != null ? map['id'] as String : null,
      isPlayable: map['isPlayable'] != null ? map['isPlayable'] as bool : null,
      restrictions: map['restrictions'] != null
          ? Restrictions.fromMap(map['restrictions'] as Map<String, dynamic>)
          : null,
      name: map['name'] != null ? map['name'] as String : null,
      popularity: IntUtil.parseInt(map['popularity']),
      previewUrl:
          map['previewUrl'] != null ? map['previewUrl'] as String : null,
      trackNumber: IntUtil.parseInt(map['trackNumber']),
      type: map['type'] != null ? map['type'] as String : null,
      uri: map['uri'] != null ? map['uri'] as String : null,
      isLocal: map['isLocal'] != null ? map['isLocal'] as bool : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Track.fromJson(String source) =>
      Track.fromMap(json.decode(source) as Map<String, dynamic>);
}

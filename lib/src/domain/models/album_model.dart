// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:custom_player_tdd/src/domain/models/restrictions_model.dart';
import 'package:custom_player_tdd/utils/int_utils.dart';

import 'artist_model.dart';
import 'copy_rights_model.dart';
import 'external_urls_model.dart';
import 'images_model.dart';

class Album {
  String? albumType;
  int? totalTracks;
  List<String>? availableMarkets;
  ExternalUrls? externalUrls;
  String? href;
  String? id;
  List<Images>? images;
  String? name;
  String? releaseDate;
  String? releaseDatePrecision;
  Restrictions? restrictions;
  String? type;
  String? uri;
  List<Copyrights>? copyrights;
  ExternalIds? externalIds;
  List<String>? genres;
  String? label;
  int? popularity;
  String? albumGroup;
  List<Artist>? artists;
  Album({
    this.albumType,
    this.totalTracks,
    this.availableMarkets,
    this.externalUrls,
    this.href,
    this.id,
    this.images,
    this.name,
    this.releaseDate,
    this.releaseDatePrecision,
    this.restrictions,
    this.type,
    this.uri,
    this.copyrights,
    this.externalIds,
    this.genres,
    this.label,
    this.popularity,
    this.albumGroup,
    this.artists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'albumType': albumType,
      'totalTracks': totalTracks,
      'availableMarkets': availableMarkets,
      'externalUrls': externalUrls?.toMap(),
      'href': href,
      'id': id,
      'images': images?.map((x) => x.toMap()).toList(),
      'name': name,
      'releaseDate': releaseDate,
      'releaseDatePrecision': releaseDatePrecision,
      'restrictions': restrictions?.toMap(),
      'type': type,
      'uri': uri,
      'copyrights': copyrights?.map((x) => x.toMap()).toList(),
      'externalIds': externalIds?.toMap(),
      'genres': genres,
      'label': label,
      'popularity': popularity,
      'albumGroup': albumGroup,
      'artists': artists?.map((x) => x.toMap()).toList(),
    };
  }

  factory Album.fromMap(Map<String, dynamic> map) {
    return Album(
      albumType: map['albumType'] != null ? map['albumType'] as String : null,
      totalTracks: IntUtil.parseInt(map['totalTracks']),
      availableMarkets: map['availableMarkets'] != null
          ? List<String>.from((map['availableMarkets'] as List<String>))
          : null,
      externalUrls: map['externalUrls'] != null
          ? ExternalUrls.fromMap(map['externalUrls'] as Map<String, dynamic>)
          : null,
      href: map['href'] != null ? map['href'] as String : null,
      id: map['id'] != null ? map['id'] as String : null,
      images: map['images'] != null
          ? List<Images>.from(
              (map['images'] as List<int>).map<Images?>(
                (x) => Images.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      name: map['name'] != null ? map['name'] as String : null,
      releaseDate:
          map['releaseDate'] != null ? map['releaseDate'] as String : null,
      releaseDatePrecision: map['releaseDatePrecision'] != null
          ? map['releaseDatePrecision'] as String
          : null,
      restrictions: map['restrictions'] != null
          ? Restrictions.fromMap(map['restrictions'] as Map<String, dynamic>)
          : null,
      type: map['type'] != null ? map['type'] as String : null,
      uri: map['uri'] != null ? map['uri'] as String : null,
      copyrights: map['copyrights'] != null
          ? List<Copyrights>.from(
              (map['copyrights'] as List<int>).map<Copyrights?>(
                (x) => Copyrights.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      externalIds: map['externalIds'] != null
          ? ExternalIds.fromMap(map['externalIds'] as Map<String, dynamic>)
          : null,
      genres: map['genres'] != null
          ? List<String>.from((map['genres'] as List<String>))
          : null,
      label: map['label'] != null ? map['label'] as String : null,
      popularity: IntUtil.parseInt(map['popularity']),
      albumGroup:
          map['albumGroup'] != null ? map['albumGroup'] as String : null,
      artists: map['artists'] != null
          ? List<Artist>.from(
              (map['artists'] as List<int>).map<Artist?>(
                (x) => Artist.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Album.fromJson(String source) =>
      Album.fromMap(json.decode(source) as Map<String, dynamic>);
}

class ExternalIds {
  String? isrc;
  String? ean;
  String? upc;
  ExternalIds({
    this.isrc,
    this.ean,
    this.upc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isrc': isrc,
      'ean': ean,
      'upc': upc,
    };
  }

  factory ExternalIds.fromMap(Map<String, dynamic> map) {
    return ExternalIds(
      isrc: map['isrc'] != null ? map['isrc'] as String : null,
      ean: map['ean'] != null ? map['ean'] as String : null,
      upc: map['upc'] != null ? map['upc'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ExternalIds.fromJson(String source) =>
      ExternalIds.fromMap(json.decode(source) as Map<String, dynamic>);
}

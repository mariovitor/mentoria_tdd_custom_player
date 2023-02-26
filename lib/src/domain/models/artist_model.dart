// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:custom_player_tdd/utils/int_utils.dart';

import 'external_urls_model.dart';
import 'followers_model.dart';
import 'images_model.dart';

class Artist {
  final ExternalUrls? externalUrls;
  final Followers? followers;
  final List<String>? genres;
  final String? href;
  final String? id;
  final List<Images>? images;
  final String? name;
  final int? popularity;
  final String? type;
  final String? uri;
  Artist({
    this.externalUrls,
    this.followers,
    this.genres,
    this.href,
    this.id,
    this.images,
    this.name,
    this.popularity,
    this.type,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalUrls': externalUrls?.toMap(),
      'followers': followers?.toMap(),
      'genres': genres,
      'href': href,
      'id': id,
      'images': images?.map((x) => x.toMap()).toList(),
      'name': name,
      'popularity': popularity,
      'type': type,
      'uri': uri,
    };
  }

  factory Artist.fromMap(Map<String, dynamic> map) {
    return Artist(
      externalUrls: map['externalUrls'] != null
          ? ExternalUrls.fromMap(map['externalUrls'] as Map<String, dynamic>)
          : null,
      followers: map['followers'] != null
          ? Followers.fromMap(map['followers'] as Map<String, dynamic>)
          : null,
      genres: map['genres'] != null
          ? List<String>.from((map['genres'] as List).map((e) => e.toString()))
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
      popularity: IntUtil.parseInt(map['popularity']),
      type: map['type'] != null ? map['type'] as String : null,
      uri: map['uri'] != null ? map['uri'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Artist.fromJson(String source) =>
      Artist.fromMap(json.decode(source) as Map<String, dynamic>);
}

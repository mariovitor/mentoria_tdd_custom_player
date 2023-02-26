// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:custom_player_tdd/src/domain/models/followers_model.dart';

import 'external_urls_model.dart';

class Owner {
  final ExternalUrls? externalUrls;
  final Followers? followers;
  final String? href;
  final String? id;
  final String? type;
  final String? uri;
  final String? displayName;
  Owner({
    this.externalUrls,
    this.followers,
    this.href,
    this.id,
    this.type,
    this.uri,
    this.displayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalUrls': externalUrls?.toMap(),
      'followers': followers?.toMap(),
      'href': href,
      'id': id,
      'type': type,
      'uri': uri,
      'displayName': displayName,
    };
  }

  factory Owner.fromMap(Map<String, dynamic> map) {
    return Owner(
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
      displayName:
          map['displayName'] != null ? map['displayName'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Owner.fromJson(String source) =>
      Owner.fromMap(json.decode(source) as Map<String, dynamic>);
}

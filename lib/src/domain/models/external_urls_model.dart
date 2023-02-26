// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ExternalUrls {
  final String? spotify;

  ExternalUrls({this.spotify});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'spotify': spotify,
    };
  }

  factory ExternalUrls.fromMap(Map<String, dynamic> map) {
    return ExternalUrls(
      spotify: map['spotify'] as String?,
    );
  }

  String toJson() => json.encode(toMap());

  factory ExternalUrls.fromJson(String source) =>
      ExternalUrls.fromMap(json.decode(source) as Map<String, dynamic>);
}

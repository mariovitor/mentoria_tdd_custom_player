// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Followers {
  final String? href;
  final int? total;

  Followers({this.href, this.total});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'href': href,
      'total': total,
    };
  }

  factory Followers.fromMap(Map<String, dynamic> map) {
    return Followers(
      href: map['href'] as String?,
      total: int.tryParse(map['total']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Followers.fromJson(String source) =>
      Followers.fromMap(json.decode(source) as Map<String, dynamic>);
}

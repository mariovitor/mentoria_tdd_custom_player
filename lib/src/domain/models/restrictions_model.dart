// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Restrictions {
  final String? reason;
  Restrictions({
    this.reason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reason': reason,
    };
  }

  factory Restrictions.fromMap(Map<String, dynamic> map) {
    return Restrictions(
      reason: map['reason'] != null ? map['reason'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Restrictions.fromJson(String source) =>
      Restrictions.fromMap(json.decode(source) as Map<String, dynamic>);
}

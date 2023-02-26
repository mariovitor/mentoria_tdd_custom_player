import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Copyrights {
  final String? text;
  final String? type;
  Copyrights({
    this.text,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text': text,
      'type': type,
    };
  }

  factory Copyrights.fromMap(Map<String, dynamic> map) {
    return Copyrights(
      text: map['text'] != null ? map['text'] as String : null,
      type: map['type'] != null ? map['type'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Copyrights.fromJson(String source) =>
      Copyrights.fromMap(json.decode(source) as Map<String, dynamic>);
}

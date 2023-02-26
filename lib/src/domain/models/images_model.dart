// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Images {
  final String? url;
  final int? height;
  final int? width;

  Images({
    this.url,
    this.height,
    this.width,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': url,
      'height': height,
      'width': width,
    };
  }

  factory Images.fromMap(Map<String, dynamic> map) {
    return Images(
      url: map['url'] as String?,
      height: int.tryParse(map['height']),
      width: int.tryParse(map['width']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Images.fromJson(String source) =>
      Images.fromMap(json.decode(source) as Map<String, dynamic>);
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class RatingVO {
   double rate;
   int count;
  RatingVO({
    required this.rate,
    required this.count,
  });



  factory RatingVO.fromMap(Map<String, dynamic> map) {
    return RatingVO(
      rate: (map['rate'] as num).toDouble(),
      count: map['count'] as int,
    );
  }

  // String toJson() => json.encode(toMap());

  // factory RatingVO.fromJson(String source) => RatingVO.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'RatingVO(rate: $rate, count: $count)';
}

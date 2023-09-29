import 'package:equatable/equatable.dart';

import 'book.dart';

class KindModel extends Equatable {
  final String? kind;
  final int? totalItems;
  final List<Book>? items;

  const KindModel({this.kind, this.totalItems, this.items});

  factory KindModel.fromJson(Map<String, dynamic> json) => KindModel(
        kind: json['kind'] as String?,
        totalItems: json['totalItems'] as int?,
        items: (json['items'] as List<dynamic>?)
            ?.map((e) => Book.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'kind': kind,
        'totalItems': totalItems,
        'items': items?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props => [kind, totalItems, items];
}

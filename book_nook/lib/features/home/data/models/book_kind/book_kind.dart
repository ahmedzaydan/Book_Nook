import 'package:equatable/equatable.dart';

import 'book_model.dart';

class BookKind extends Equatable {
  final String? kind;
  final int? totalItems;
  final List<BookModel>? items;

  const BookKind({this.kind, this.totalItems, this.items});

  factory BookKind.fromJson(Map<String, dynamic> json) => BookKind(
        kind: json['kind'] as String?,
        totalItems: json['totalItems'] as int?,
        items: (json['items'] as List<dynamic>?)
            ?.map((e) => BookModel.fromJson(e as Map<String, dynamic>))
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

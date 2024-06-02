// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';

import 'package:equatable/equatable.dart';

class ToDoItem extends Equatable {
  final String? id;
  final bool? isDone;
  final String? title;
  const ToDoItem({
    this.id,
    this.isDone,
    this.title,
  });

  ToDoItem copyWith({
    String? id,
    bool? isDone,
    String? title,
  }) {
    return ToDoItem(
      id: id ?? this.id,
      isDone: isDone ?? this.isDone,
      title: title ?? this.title,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'isDone': isDone,
      'title': title,
    };
  }

  factory ToDoItem.fromMap(Map<String, dynamic> map) {
    return ToDoItem(
      id: map['id'] != null ? map['id'] as String : null,
      isDone: map['isDone'] != null ? map['isDone'] as bool : null,
      title: map['title'] != null ? map['title'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ToDoItem.fromJson(String source) =>
      ToDoItem.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [id, isDone, title];
}

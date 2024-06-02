import 'dart:convert';

import 'package:to_do_app_mobile/features/to_do_list/domain/entities/to_do_item.dart';

class ToDoItemModel extends ToDoItem {
  const ToDoItemModel({
    String? id,
    bool? isDone,
    String? title,
  });

  factory ToDoItemModel.fromJson(String source) =>
      ToDoItemModel.fromMap(json.decode(source) as Map<String, dynamic>);

  factory ToDoItemModel.fromMap(Map<String, dynamic> map) {
    return ToDoItemModel(
      id: map['id'] != null ? map['id'] as String : null,
      isDone: map['isDone'] != null ? map['isDone'] as bool : null,
      title: map['title'] != null ? map['title'] as String : null,
    );
  }
}

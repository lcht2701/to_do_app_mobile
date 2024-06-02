import 'package:to_do_app_mobile/core/resources/data_state.dart';
import 'package:to_do_app_mobile/features/to_do_list/domain/entities/to_do_item.dart';

abstract class ToDoListRepository {
  Future<DataState<List<ToDoItem>>> getList();
  Future<DataState<ToDoItem>> add(ToDoItem item);
  Future<DataState<ToDoItem>> markAsDone(int id);
  Future<DataState<ToDoItem>> delete(int id);
}

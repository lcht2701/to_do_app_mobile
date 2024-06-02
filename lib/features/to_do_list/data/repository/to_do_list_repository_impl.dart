import 'package:to_do_app_mobile/core/resources/data_state.dart';
import 'package:to_do_app_mobile/features/to_do_list/data/models/to_do_item_model.dart';
import 'package:to_do_app_mobile/features/to_do_list/domain/entities/to_do_item.dart';
import 'package:to_do_app_mobile/features/to_do_list/domain/repository/to_do_list_repository.dart';

class ToDoListRepositoryImpl implements ToDoListRepository {
  @override
  Future<DataState<ToDoItemModel>> add(ToDoItem item) {
    // TODO: implement add
    throw UnimplementedError();
  }

  @override
  Future<DataState<ToDoItemModel>> delete(int id) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<DataState<List<ToDoItemModel>>> getList() {
    // TODO: implement getList
    throw UnimplementedError();
  }

  @override
  Future<DataState<ToDoItemModel>> markAsDone(int id) {
    // TODO: implement markAsDone
    throw UnimplementedError();
  }
}

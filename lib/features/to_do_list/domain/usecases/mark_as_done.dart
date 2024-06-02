import 'package:to_do_app_mobile/core/resources/data_state.dart';
import 'package:to_do_app_mobile/core/usecase/usecase.dart';
import 'package:to_do_app_mobile/features/to_do_list/domain/entities/to_do_item.dart';
import 'package:to_do_app_mobile/features/to_do_list/domain/repository/to_do_list_repository.dart';

class MarkAsDoneUseCase implements UseCase<DataState<ToDoItem>, int> {
  final ToDoListRepository _toDoListRepository;

  MarkAsDoneUseCase(this._toDoListRepository);

  @override
  Future<DataState<ToDoItem>> call({int? params}) {
    return _toDoListRepository.markAsDone(params!);
  }
}

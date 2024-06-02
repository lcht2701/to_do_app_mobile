import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/to_do_item.dart';
import '../repository/to_do_list_repository.dart';

class DeleteToDoItemUseCase implements UseCase<DataState<ToDoItem>, int> {
  final ToDoListRepository _toDoListRepository;

  DeleteToDoItemUseCase(this._toDoListRepository);

  @override
  Future<DataState<ToDoItem>> call({int? params}) {
    return _toDoListRepository.delete(params!);
  }
}

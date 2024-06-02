import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/to_do_item.dart';
import '../repository/to_do_list_repository.dart';

class AddToDoItemUseCase implements UseCase<DataState<ToDoItem>, ToDoItem> {
  final ToDoListRepository _toDoListRepository;

  AddToDoItemUseCase(this._toDoListRepository);

  @override
  Future<DataState<ToDoItem>> call({ToDoItem? params}) {
    return _toDoListRepository.add(params!);
  }
}

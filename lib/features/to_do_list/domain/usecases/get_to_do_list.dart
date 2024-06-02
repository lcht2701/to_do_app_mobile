import 'package:to_do_app_mobile/core/resources/data_state.dart';
import 'package:to_do_app_mobile/core/usecase/usecase.dart';
import 'package:to_do_app_mobile/features/to_do_list/domain/entities/to_do_item.dart';
import 'package:to_do_app_mobile/features/to_do_list/domain/repository/to_do_list_repository.dart';

class GetToDoListUseCase implements UseCase<DataState<List<ToDoItem>>, void> {
  final ToDoListRepository _toDoListRepository;

  GetToDoListUseCase(this._toDoListRepository);

  @override
  Future<DataState<List<ToDoItem>>> call({void params}) {
    return _toDoListRepository.getList();
  }
}

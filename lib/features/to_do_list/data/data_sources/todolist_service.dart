import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:to_do_app_mobile/features/to_do_list/domain/entities/to_do_item.dart';
import '../../../../core/constants/constant.dart';
part 'todolist_service.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class TodolistService {
  factory TodolistService(Dio dio) = _TodolistService;

  @GET('/ToDoItem')
  Future<HttpResponse<List<ToDoItem>>> getToDoList();

  @POST('/ToDoItem')
  Future<HttpResponse<ToDoItem>> addToDoItem(ToDoItem item);

  @PATCH('/ToDoItem/{id}/is-done')
  Future<HttpResponse<ToDoItem>> markAsDone(@Path("id") int id);

  @DELETE('/ToDoItem/{id}')
  Future<HttpResponse<ToDoItem>> deleteToDoItem(@Path("id") int id);
}

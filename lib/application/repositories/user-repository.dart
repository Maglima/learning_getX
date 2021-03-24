import 'package:dio/dio.dart';
import 'package:learning_getx/application/models/pagination_filter.dart';
import 'package:learning_getx/application/models/user-model.dart';

class UserRepository {
  Dio _dio;
  UserRepository(
    this._dio,
  );

  Future<List<UserModel>> findAll(PaginationFilter filter) async {
    var retorno = await _dio.get(
      "/users",
      queryParameters: {
        'page': filter.page,
        'limit': filter.limit,
      },
    ).then(
      (res) => res?.data?.map<UserModel>((u) => UserModel.fromMap(u))?.toList(),
    );

    return retorno;
  }
}

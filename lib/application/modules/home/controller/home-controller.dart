import 'package:get/get.dart';
import 'package:learning_getx/application/models/pagination_filter.dart';
import 'package:learning_getx/application/models/user-model.dart';

import 'package:learning_getx/application/repositories/user-repository.dart';

class HomeController extends GetxController {
  final UserRepository _userRepository;
  List<UserModel> get users => [..._users.toList()];
  final _users = <UserModel>[].obs;
  final _paginationFilter = PaginationFilter().obs;
  final _lastPage = false.obs;
  String get teste => "teste";
  HomeController(
    this._userRepository,
  );

  @override
  void onInit() {
    ever(_paginationFilter, (_) => _findUsers());
    _changePaginationFilter(1, 15);

    super.onInit();
  }

  Future<void> _findUsers() async {
    final userData = await _userRepository.findAll(_paginationFilter.value);
    if (userData.isEmpty) {
      _lastPage.update((val) {
        val = true;
      });
    }
    _users.addAll(userData);
  }

  _changePaginationFilter(int page, int limit) {
    _paginationFilter.update((val) {
      val.page = page;
      val.limit = limit;
    });
  }
}

import 'package:blog_app/App/model/Blog_Model.dart';
import 'package:blog_app/App/model/Rest_api.dart';
import 'package:blog_app/App/model/user.dart';

import 'package:get/get.dart';

class BlogController extends GetxController {
  final blogs = Rx<List<Blog_Model>>([]);
  Rx<User?> user = Rx<User?>(null);
  User? get currUser {
    return user.value;
  }

  final isLoading = false.obs;
  Future<void> getBlogs() async {
    var data = await Blog_servies.getBlog();
    if (data.isNotEmpty) {
      blogs.update((value) {
        value!.assignAll(data);
      });
    }
  }

  Future getUser(int userId) async {
    isLoading.value = true;
    print('before');
    user.value = await Blog_servies.getUserById(userId.toString());
    print('after with user value = ${user.value!.username}');
    isLoading.value = false;
  }

  @override
  void onInit() {
    super.onInit();
    getBlogs();
  }
}

import 'dart:convert';
import 'package:blog_app/App/model/user.dart';
import 'package:http/http.dart' as http;

import 'Blog_Model.dart';

class Blog_servies {
  static Future<List<Blog_Model>> getBlog() async {
    try {
      final url = "https://jsonplaceholder.typicode.com/posts";
      final res = await http.get(Uri.parse(url));
      final blog = blogFromJson(res.body);
      return blog;
    } catch (e) {
      rethrow;
    }
  }

  static Future<User> getUserById(String id) async {
    try {
      final url = "https://jsonplaceholder.typicode.com/users/$id";
      final res = await http.get(Uri.parse(url));
      final user = User.fromJson(jsonDecode(res.body));
      return user;
    } catch (e) {
      rethrow;
    }
  }
}

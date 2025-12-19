import 'dart:convert';

import 'package:flutter_its_2025/data/models/post.model.dart';
import 'package:http/http.dart' as http;

class PostRepository {
  Future<List<Post>> getAll() async {
    try {
      final response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/posts'),
        headers: {'Content-Type': 'application/json'},
      );
      // await Future.delayed(const Duration(seconds: 3));
      if (response.statusCode == 200) {
        final Iterable data = jsonDecode(response.body);
        return data.map((json) => Post.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load posts');
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<Post> get(String id) async {
    try {
      final response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/posts/$id'),
        headers: {'Content-Type': 'application/json'},
      );
      if (response.statusCode == 200) {
        return Post.fromJson(jsonDecode(response.body));
      } else {
        throw Exception('Failed to load post');
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> create(Post post) async {
    try {
      final response = await http.post(
        Uri.parse('https://jsonplaceholder.typicode.com/posts'),
        body: jsonEncode(post.toJson()),
      );
      if (response.statusCode != 201) {
        throw Exception('Failed to create post');
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> update(Post post) async {
    try {
      final response = await http.put(
        Uri.parse('https://jsonplaceholder.typicode.com/posts/${post.id}'),
        body: jsonEncode(post.toJson()),
      );
      if (response.statusCode != 200) {
        throw Exception('Failed to update post');
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> delete(String id) async {
    try {
      final response = await http.delete(
        Uri.parse('https://jsonplaceholder.typicode.com/posts/$id'),
      );
      if (response.statusCode != 200) {
        throw Exception('Failed to delete post');
      }
    } catch (e) {
      rethrow;
    }
  }
}

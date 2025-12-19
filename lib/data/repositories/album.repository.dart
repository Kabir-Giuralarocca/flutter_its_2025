import 'package:dio/dio.dart';
import 'package:flutter_its_2025/data/clients/album.client.dart';
import 'package:flutter_its_2025/data/interfaces/base_repository.interface.dart';
import 'package:flutter_its_2025/data/models/album.model.dart';

class AlbumRepository extends AlbumClient implements IBaseRepository<Album> {
  @override
  Future<void> add(Album item) async {
    try {
      await dio.post('', data: item.toJson());
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<void> delete(int id) async {
    try {
      await dio.delete('/$id');
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<void> edit(int id, Album item) async {
    try {
      await dio.put('/$id', data: item.toJson());
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<Album> get(int id) async {
    try {
      final response = await dio.get('/$id');
      return Album.fromJson(response.data);
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<List<Album>> getAll() async {
    try {
      final response = await dio.get('');
      final Iterable data = response.data;
      return data.map((e) => Album.fromJson(e)).toList();
    } on DioException {
      rethrow;
    }
  }
}

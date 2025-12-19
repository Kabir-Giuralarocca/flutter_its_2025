import 'package:json_annotation/json_annotation.dart';

part 'album.model.g.dart';

@JsonSerializable()
class Album {
  Album({required this.userId, required this.id, required this.title, this.description});

  factory Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson(json);
  Map<String, dynamic> toJson() => _$AlbumToJson(this);

  final int userId;
  final int id;
  final String title;
  final String? description;
}

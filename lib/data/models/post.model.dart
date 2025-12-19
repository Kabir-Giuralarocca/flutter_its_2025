class Post {
  Post({required this.id, required this.userId, required this.title, required this.body});

  Post.empty() : id = 0, userId = 0, title = '', body = '';

  factory Post.fromJson(Map<String, dynamic> json) => Post(
    id: json['id'] as int,
    userId: json['userId'] as int,
    title: json['title'] as String,
    body: json['body'] as String,
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'userId': userId,
    'title': title,
    'body': body,
  };

  final int id;
  final int userId;
  final String title;
  final String body;
}

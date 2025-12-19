import 'package:flutter/material.dart';
import 'package:flutter_its_2025/data/interfaces/base_repository.interface.dart';
import 'package:flutter_its_2025/data/models/album.model.dart';
import 'package:flutter_its_2025/data/models/post.model.dart';
import 'package:flutter_its_2025/data/repositories/album.repository.dart';
import 'package:flutter_its_2025/data/repositories/post.repository.dart';

class HttpFutureScreen extends StatefulWidget {
  const HttpFutureScreen({super.key});

  @override
  State<HttpFutureScreen> createState() => _HttpFutureScreenState();
}

class _HttpFutureScreenState extends State<HttpFutureScreen> {
  final PostRepository _repository = PostRepository();
  final IBaseRepository<Album> _albumRepository = AlbumRepository();
  late Future<List<Post>> _posts;
  // ignore: unused_field
  late Future<List<Album>> _albums;

  @override
  void initState() {
    super.initState();
    _posts = _repository.getAll();
    _albums = _albumRepository.getAll();
  }

  void _add() async {
    final post = Post(
      id: 0,
      userId: 1,
      title: 'New Post Title',
      body: 'This is the body of the new post.',
    );

    await _albumRepository
        .add(Album(userId: 1, id: 0, title: 'New Album Title', description: 'This is a new album.'))
        .then((value) {
          debugPrint('Album added successfully');
        })
        .onError((error, stackTrace) {
          debugPrint('Error adding album: $error');
        });

    await _repository
        .create(post)
        .then((value) {
          setState(() {
            _posts = _repository.getAll();
          });
        })
        .onError((error, stackTrace) {
          debugPrint('Error creating post: $error');
        });
  }

  void _edit() async {
    final post = Post(
      id: 1,
      userId: 1,
      title: 'Updated Post Title',
      body: 'This is the updated body of the post.',
    );

    await _albumRepository
        .edit(
          1,
          Album(
            userId: 1,
            id: 1,
            title: 'Updated Album Title',
            description: 'This is an updated album.',
          ),
        )
        .then((value) {
          debugPrint('Album updated successfully');
        })
        .onError((error, stackTrace) {
          debugPrint('Error updating album: $error');
        });

    await _repository
        .update(post)
        .then((value) {
          setState(() {
            _posts = _repository.getAll();
          });
        })
        .onError((error, stackTrace) {
          debugPrint('Error updating post: $error');
        });
  }

  void _delete() async {
    await _albumRepository
        .delete(1)
        .then((value) {
          debugPrint('Album deleted successfully');
        })
        .onError((error, stackTrace) {
          debugPrint('Error deleting album: $error');
        });

    await _repository
        .delete('1')
        .then((value) {
          setState(() {
            _posts = _repository.getAll();
          });
        })
        .onError((error, stackTrace) {
          debugPrint('Error deleting post: $error');
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('HTTP & Future')),
      body: HttpFutureLayout(add: _add, delete: _delete, edit: _edit, posts: _posts),
    );
  }
}

class HttpFutureLayout extends StatelessWidget {
  const HttpFutureLayout({
    required this.add,
    required this.delete,
    required this.edit,
    required this.posts,
    super.key,
  });

  final Future<List<Post>> posts;
  final VoidCallback add;
  final VoidCallback edit;
  final VoidCallback delete;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverPadding(
          padding: const .all(16),
          sliver: SliverToBoxAdapter(
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                FilledButton.icon(
                  onPressed: add,
                  label: const Text('Add'),
                  icon: const Icon(Icons.add),
                ),
                FilledButton.icon(
                  onPressed: edit,
                  label: const Text('Edit'),
                  icon: const Icon(Icons.edit),
                ),
                FilledButton.icon(
                  onPressed: delete,
                  label: const Text('Delete'),
                  icon: const Icon(Icons.delete),
                ),
              ],
            ),
          ),
        ),
        FutureBuilder(
          future: posts,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const SliverFillRemaining(child: Center(child: CircularProgressIndicator()));
            }
            if (snapshot.hasError) {
              return SliverFillRemaining(child: Center(child: Text('Error: ${snapshot.error}')));
            }
            return SliverPadding(
              padding: const .all(16),
              sliver: SliverList.builder(
                itemCount: snapshot.data?.length ?? 0,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const .only(bottom: 8),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                        child: Text('${snapshot.data?[index].id ?? ''}'),
                      ),
                      title: Text('Post Title ${snapshot.data?[index].title ?? ''}'),
                      subtitle: Text(snapshot.data?[index].body ?? ''),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(color: Theme.of(context).colorScheme.outline),
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ],
    );
  }
}

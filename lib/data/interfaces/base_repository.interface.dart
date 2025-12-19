abstract class IBaseRepository<T> {
  Future<List<T>> getAll();
  Future<T> get(int id);
  Future<void> add(T item);
  Future<void> edit(int id, T item);
  Future<void> delete(int id);
}

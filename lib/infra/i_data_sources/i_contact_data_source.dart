abstract class IContactDataSource {
  Future<List<Map<String, dynamic>>> get();
  Future<String> add({required String fristName, required String lastName, required String number});
   Future<String> addFavorite({required bool favorite, required int id});
}
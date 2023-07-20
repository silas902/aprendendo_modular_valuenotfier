import '../entities/contact.dart';

abstract class IContactRepository {
  Future<List<Contact>>get();
  Future<String> add({required String fristName, required String lastName, required String number});
  Future<String> addFavorite({required bool favorite, required int id});
}
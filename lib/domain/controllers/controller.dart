import 'package:flutter/foundation.dart';

import '../entities/contact.dart';
import '../repositories/i_contact_repositori.dart';

class Controller extends ValueNotifier<List<Contact>> {
  final IContactRepository repository;
  Controller({required this.repository}) : super([]);

  List<Contact> contacts = [];

  Future add({required String fristName, required String lastName, required String number}) async {
    repository.add(fristName: fristName, lastName: lastName, number: number);
  }

  Future<void> get() async {
    final List<Contact> response = await repository.get();
    contacts = response;
    value = contacts;
  }

  Future addFavorite({required int id, required bool favorite}) async {
    repository.addFavorite(favorite: favorite, id: id);
  }
}

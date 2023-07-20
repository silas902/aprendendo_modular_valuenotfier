import '../../domain/entities/contact.dart';
import '../../domain/repositories/i_contact_repositori.dart';
import '../i_data_sources/i_contact_data_source.dart';

class ContactRepository extends IContactRepository {
  final IContactDataSource dataSource;

  ContactRepository({required this.dataSource});
  @override
  Future<String> add({required String fristName, required String lastName, required String number}) async {
   await dataSource.add(fristName: fristName, lastName: lastName, number: number);
   return '';
  }

  @override
  Future<List<Contact>> get() async {
    List<Contact> contacts = [];
  
    final List<Map<String, dynamic>> response = await dataSource.get();
    
    for (var contact in response) {
      contacts.add(Contact.fromMap(contact)) ;
    }

    return contacts;
  }
  
  @override
  Future<String> addFavorite({required bool favorite, required int id}) {
    // TODO: implement addFavorite
    throw UnimplementedError();
  }
  
}
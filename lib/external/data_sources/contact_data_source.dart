import 'package:supabase_flutter/supabase_flutter.dart';
import '../../infra/i_data_sources/i_contact_data_source.dart';

class ContactDataSource extends IContactDataSource{
  final supabase = Supabase.instance;
  @override
  Future<String> add({required String fristName, required String lastName, required String number}) async {
    await supabase.client.from('contact').insert({
      'fistName': fristName,
      'lastName': lastName,
      'number': number
    });
    return '';
  }

  @override
  Future<List<Map<String, dynamic>>> get() async {
    final List<Map<String, dynamic>> response = await supabase.client.from('contact').select();
    return response;
  }
  
  @override
  Future<String> addFavorite({required bool favorite, required int id}) async {
    await supabase.client.from('contact').update({favorite: favorite}).eq('id', id) .select('favorite');
    throw UnimplementedError();
  }
  
}
import '../text_vo.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Contact {
  final int id;
  final TextVO fistName;
  final TextVO lastName;
  final TextVO number;
  final bool favorite;
  Contact({
    required this.id,
    required this.fistName,
    required this.lastName,
    required this.number,
    required this.favorite,
  });

 

  factory Contact.fromMap(Map<String, dynamic> map) {
    return Contact(
      id: map['id'],
      fistName: TextVO(map['fistName']),
      lastName: TextVO(map['lastName']),
      number: TextVO(map['number']),
      favorite: map['favorite'],
    );
  }

  

  
}

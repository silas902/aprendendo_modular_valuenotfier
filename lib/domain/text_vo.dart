
import 'package:apredendo_modular_valuenotfier/domain/value_object.dart';

class TextVO extends ValueObject<String>{
  
  TextVO(
    super.value,
  );

  @override
  String? validate(){
    if(value.isEmpty) {
      return 'Esta vazio';
    } 
    return null;
  }

  toMap() {}

  static fromMap(Map<String, dynamic> map) {}
  
}

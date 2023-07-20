import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../domain/controllers/controller.dart';
import '../domain/text_vo.dart';

class RegisterContactPage extends StatefulWidget {
  final Controller controller;
  const RegisterContactPage({super.key, required this.controller});

  @override
  State<RegisterContactPage> createState() => _RegisterContactPageState();
}

class _RegisterContactPageState extends State<RegisterContactPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late final TextEditingController _fistName;
  late final TextEditingController _lastName;
  late final TextEditingController _number;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _fistName = TextEditingController();
    _lastName = TextEditingController();
    _number = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _fistName.dispose();
    _lastName.dispose();
    _number.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registrar'),
        actions: [
          IconButton(onPressed: () => Modular.to.navigate('/home'), icon: Icon(Icons.arrow_back_ios))
        ],
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _fistName,
                validator: (value) => TextVO(value!).validate(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _lastName,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _number,
              ),
            ),
            ElevatedButton(
                child: const Text('Cadastrar'),
                onPressed: () async {
                  bool formValid = _formKey.currentState?.validate() ?? false;
                  if (formValid) {
                    await widget.controller.add(fristName: _fistName.text, lastName: _lastName.text, number: _number.text);
                  }
                })
          ],
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../domain/controllers/controller.dart';
import 'home_page_list_view_contact_widget.dart';



class HomePage extends StatefulWidget {
  final Controller controller;
  
  const HomePage({super.key, required this.controller});
  
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  void initState(){
    super.initState();
    widget.controller.get();
  }
  

  
  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceInfo = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
      ),
      body: SizedBox(
        height: deviceInfo.size.height,
        width: deviceInfo.size.width,
        child: Column(
          children: [
            Expanded(
              child: AnimatedBuilder(animation: widget.controller, builder: (context, child) {
                return HomePageListViewContactWidget(contacts: widget.controller.contacts, controller:  widget.controller,);
              },),
            )
          ],
        ),
      ),
       floatingActionButton: FloatingActionButton(
         onPressed: () => Modular.to.navigate('/RegisterContactPage'),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
       ),
    );
  }
}
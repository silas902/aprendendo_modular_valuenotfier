import 'package:flutter/material.dart';

import '../../domain/controllers/controller.dart';
import '../../domain/entities/contact.dart';

class HomePageListViewContactWidget extends StatelessWidget {
  final List<Contact> contacts;
  final Controller controller;
  const HomePageListViewContactWidget({super.key, required this.contacts, required this.controller});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: contacts.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${contacts[index].fistName.value}  ${contacts[index].lastName.value} ',
                    style: const TextStyle(fontSize: 25),
                  ),
                  Text(
                    contacts[index].number.value,
                    style: const TextStyle(fontSize: 14),
                  ),
                ],
              ),
              IconButton(
                icon: contacts[index].favorite? const Icon(Icons.favorite)  : const Icon(Icons.favorite_border),
                onPressed: () {},
              )
            ],
          )),
        );
      },
    );
  }
}

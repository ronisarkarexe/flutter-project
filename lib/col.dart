import 'package:flutter/material.dart';
import 'package:flutter_application_5/contextDetails.dart';

class ColRow extends StatelessWidget {
  ColRow({super.key});
  List<ContactDetails> contact = [
    ContactDetails("Hello", "World", 1),
    ContactDetails("Roni", "Sarkar", 1),
    ContactDetails("Roni1", "Sarkar1", 11),
    ContactDetails("Roni2", "Sarkar2", 12),
    ContactDetails("Roni3", "Sarkar3", 13),
    ContactDetails("Roni4", "Sarkar4", 14),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Col Row Test")
      ),
      body: Column(children: [
        for(int i = 0; i <contact.length; i++)
          getContactCard(contact[i]),
      ],)
    );
  }
  getContactCard(ContactDetails ct) {
    return Card(
        child: Container(
      //  height: 55,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(ct.name, style: TextStyle(color: Color.fromARGB(255, 240, 20, 174), fontSize: 22)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(ct.enroll, style: TextStyle(fontSize: 18)),
            Text(ct.mono.toString(), style: TextStyle(color: const Color.fromARGB(255, 54, 57, 244)))
              ],
            )
          ],
        )
        )
    );
  }

  getContactCardTwo(BuildContext context){
    return Card(
      child: Container(
        height: 40,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("Hello Roni", style: TextStyle(fontSize: 22, backgroundColor: Colors.red),)
        ]),
      ),
    );
  }
}
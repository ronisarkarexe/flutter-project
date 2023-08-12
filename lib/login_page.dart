import 'package:flutter/material.dart';

class LoginFrom extends StatelessWidget {
  LoginFrom({super.key});

  TextEditingController userController = TextEditingController();
  TextEditingController pwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page")
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: userController,
              decoration: InputDecoration(labelText: 'User Name'),
            ),
            TextField(
              controller: pwdController,
              decoration: InputDecoration(hintText: 'Password'),
            ),

            ElevatedButton(onPressed: () {
              print(userController.text);
              print(pwdController.text);
              if(userController.text == pwdController.text){
                print("Both are same");
              } else {
                print('Both are different');
              }
            }, child: Text('Login'))
          ],
        )
      )
    );
  }
}
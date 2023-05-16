import 'package:auth_login_regsiter/auth_services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  final FirebaseUser user;
  MainPage(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(user.uid),
            RaisedButton(onPressed: () async {
              await AuthServices.signOut();
            })
          ],
        ),
      ),
    );
  }
}

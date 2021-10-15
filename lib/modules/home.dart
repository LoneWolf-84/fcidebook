// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../constant.dart';
import 'login.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Image.asset('assets/images/FCI.png'),
            ),
            ListTile(
              leading: Icon(
                Icons.library_books_outlined,
              ),
              title: Text('EBooks',style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.quiz_outlined,
              ),
              title: Text("Quiz's",style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
              ),
              title: Text("Logout",style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),),
              onTap: (){},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          'Damanhour Ebooks'
        ),
      ),
      body: Center(
        child: Container(
          child: Text(
            'Home page',
            style: TextStyle(
              fontSize: 40,
            ),
          ),
        ),
      ),
    );
  }
}

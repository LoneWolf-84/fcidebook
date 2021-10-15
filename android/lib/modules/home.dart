// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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
              title: Text(
                'EBooks',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.quiz_outlined,
              ),
              title: Text(
                "Quiz's",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
              ),
              title: Text(
                "Logout",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Damanhour Ebooks'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              child: Card(
                elevation: 10,
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Image(
                        image: AssetImage('assets/images/tree.jpg'),
                      ),
                      title: Text('IT'),
                      subtitle: Text(
                          "Text.app is a simple text editor for Chrome OS and Chrome. It's fast, lets you open multiple files at once, has syntax highlighting, and saves to Google Drive on Chrome OS.",
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                      ),
                      onTap: (){},
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              child: Card(
                elevation: 10,
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Image(
                        image: AssetImage('assets/images/tree.jpg'),
                      ),
                      title: Text('IT'),
                      subtitle: Text(
                        "Text.app is a simple text editor for Chrome OS and Chrome. It's fast, lets you open multiple files at once, has syntax highlighting, and saves to Google Drive on Chrome OS.",
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                      ),
                      onTap: (){},
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              child: Card(
                elevation: 10,
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Image(
                        image: AssetImage('assets/images/tree.jpg'),
                      ),
                      title: Text('IT'),
                      subtitle: Text(
                        "Text.app is a simple text editor for Chrome OS and Chrome. It's fast, lets you open multiple files at once, has syntax highlighting, and saves to Google Drive on Chrome OS.",
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                      ),
                      onTap: (){},
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              child: Card(
                elevation: 10,
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Image(
                        image: AssetImage('assets/images/tree.jpg'),
                      ),
                      title: Text('IT'),
                      subtitle: Text(
                        "Text.app is a simple text editor for Chrome OS and Chrome. It's fast, lets you open multiple files at once, has syntax highlighting, and saves to Google Drive on Chrome OS.",
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                      ),
                      onTap: (){},
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

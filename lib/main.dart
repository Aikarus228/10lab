import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UserProfileScreen(),
    );
  }
}

class UserProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Личный кабинет'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/user_avatar.jpg'), // Замените путь на свое изображение
            ),
            SizedBox(height: 16),
            Text(
              'Иван Иванов',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'ivan@example.com',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 16),
            Card(
              elevation: 4,
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text('Личные данные'),
                onTap: () {
                  // Обработка нажатия
                },
              ),
            ),
            Card(
              elevation: 4,
              child: ListTile(
                leading: Icon(Icons.security),
                title: Text('Безопасность'),
                onTap: () {
                  // Обработка нажатия
                },
              ),
            ),
            Card(
              elevation: 4,
              child: ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Выйти'),
                onTap: () {
                  // Обработка нажатия
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
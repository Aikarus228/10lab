import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StudentListScreen(),
    );
  }
}

class StudentListScreen extends StatelessWidget {
  final List<String> students = [
    'Иван Иванов',
    'Мария Смирнова',
    'Алексей Петров',
    'Екатерина Сидорова',
    'Дмитрий Иванов',
    'Анна Кузнецова',
    'Сергей Федоров',
    'Ольга Морозова',
    'Никита Васнецов',
    'Елена Петрова',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Список студентов группы'),
      ),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(students[index]),
          );
        },
      ),
    );
  }
}
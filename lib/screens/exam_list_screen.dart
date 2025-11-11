import 'package:flutter/material.dart';
import '../models/exam.dart';
import '../widgets/exam_card.dart';
import 'exam_detail_screen.dart';

class ExamListScreen extends StatelessWidget {
  const ExamListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Exam> exams = [
      Exam(
          subjectName: 'Објектно ориентирано програмирање',
          dateTime: DateTime(2025, 9, 3, 9, 0),
          rooms: ['Лаб 138', 'Лаб 200аб']),
      Exam(
          subjectName: 'Структурно програмирање',
          dateTime: DateTime(2025, 1, 25, 12, 0),
          rooms: ['Лаб 3']),
      Exam(
          subjectName: 'Веројатност и статистика',
          dateTime: DateTime(2025, 3, 9, 8, 0),
          rooms: ['Лаб 215','Лаб 200аб','Лаб 138','117'],
          isPassed: true),
      Exam(
          subjectName: 'Вовед во инфроматика',
          dateTime: DateTime(2025, 11, 17, 8, 0),
          rooms: ['Лаб 2','Лаб 13','Лаб 215','Лаб 200аб'],
          isPassed: true),
      Exam(
          subjectName: 'Дигитализација',
          dateTime: DateTime(2025, 11, 17, 16, 0),
          rooms: ['Лаб 2','Лаб 13','Лаб 215','Лаб 200аб'],
          isPassed: true),
      Exam(
          subjectName: 'Програмирање видео игри',
          dateTime: DateTime(2025, 11, 18, 13, 0),
          rooms: ['Лаб 2','Лаб 13','Лаб 215','Лаб 200аб'],
          isPassed: true),
      Exam(
          subjectName: 'Дизајн и архитектура на софтвер',
          dateTime: DateTime(2025, 11, 18, 13, 0),
          rooms: ['Лаб 2','Лаб 13','Лаб 215','Лаб 200аб'],
          isPassed: true),
      Exam(
          subjectName: 'Бази на податоци',
          dateTime: DateTime(2025, 11, 18, 8, 0),
          rooms: ['Лаб 215','Лаб 200аб','Лаб 138','117'],
          isPassed: true),
      Exam(
          subjectName: 'Бизнис и менаџмент',
          dateTime: DateTime(2025, 11, 19, 18, 0),
          rooms: ['Лаб 215','Лаб 200аб','Лаб 138','117'],
          isPassed: true),
      Exam(
          subjectName: 'Напреден веб дизајн',
          dateTime: DateTime(2025, 11, 20, 14, 30),
          rooms: ['Лаб 2','Лаб 13','Лаб 215','Лаб 200аб'],
          isPassed: true),
    ];

    exams.sort((a, b) => a.dateTime.compareTo(b.dateTime));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Распоред за испити - 211214'),
      ),
      body: ListView.builder(
        itemCount: exams.length,
        itemBuilder: (context, index) {
          return ExamCard(
            exam: exams[index],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ExamDetailScreen(exam: exams[index]),
                ),
              );
            },
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue.shade100,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Вкупно испити: ${exams.length}',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

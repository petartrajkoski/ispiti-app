import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/exam.dart';

class ExamDetailScreen extends StatelessWidget {
  final Exam exam;

  const ExamDetailScreen({super.key, required this.exam});

  String _timeUntilExam() {
    final now = DateTime.now();
    final difference = exam.dateTime.difference(now);

    if (difference.isNegative) return 'Испитот е завршен';

    final days = difference.inDays;
    final hours = difference.inHours % 24;

    return '$days дена, $hours часа';
  }

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat('dd.MM.yyyy – HH:mm');

    return Scaffold(
      appBar: AppBar(title: Text(exam.subjectName)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Датум: ${dateFormat.format(exam.dateTime)}',
                style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            Text('Простории: ${exam.rooms.join(', ')}',
                style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 16),
            Row(
              children: [
                const Icon(Icons.timer),
                const SizedBox(width: 8),
                Text('До испитот: ${_timeUntilExam()}',
                    style: const TextStyle(fontSize: 18)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

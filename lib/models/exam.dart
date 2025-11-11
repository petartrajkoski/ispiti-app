class Exam {
  String subjectName;
  DateTime dateTime;
  List<String> rooms;
  bool isPassed;

  Exam({
    required this.subjectName,
    required this.dateTime,
    required this.rooms,
    this.isPassed = false,
  });
}

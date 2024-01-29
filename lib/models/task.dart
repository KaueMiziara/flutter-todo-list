class Task {
  final String id;
  final String title;
  final DateTime date;
  final String category; // TODO: change to enum
  final String description;
  final bool completed;

  Task(
      {required this.id,
      required this.title,
      required this.date,
      required this.category,
      required this.description,
      required this.completed});
}

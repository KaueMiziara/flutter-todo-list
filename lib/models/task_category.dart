enum TaskCategory {
  task,
  event,
  achievement;

  String get name => switch (this) {
        TaskCategory.task => "TASK",
        TaskCategory.event => "EVENT",
        TaskCategory.achievement => "ACHIEVEMENT",
      };
}

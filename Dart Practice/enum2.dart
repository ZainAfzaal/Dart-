void main() {
  Task task1 = Task('Complete Dart Project',
      'Finish the final project for the Dart course.', TaskStatus.Pending);

  Task task2 = Task(
      'Submit Report',
      'Submit the monthly performance report to the manager.',
      TaskStatus.InProgress);

  Task task3 = Task(
      'Prepare Presentation',
      'Prepare a presentation for the team meeting next week.',
      TaskStatus.Completed);

  Task task4 = Task('Cancel Meeting',
      'The weekly team meeting has been cancelled.', TaskStatus.Cancel);

  List<Task> tasks = [task1, task2, task3, task4];

  for (var task in tasks) {
    task.displaytask();
    task.taskProgress();
    print("--------------------------");

    if (task.status == TaskStatus.Pending) {
      task.updatestatus(TaskStatus.InProgress);
    }
  }

  print("After updating status");
  print("--------------------------");
  for (var task in tasks) {
    task.displaytask();
    task.taskProgress();
    print("--------------------------");
  }
}

enum TaskStatus { Pending, InProgress, Completed, Cancel }

class Task {
  String title;
  String description;
  TaskStatus status;

  Task(this.title, this.description, this.status);

  void displaytask() {
    print("Title: $title");
    print("Description: $description");
    print("Status: ${status.name}");
  }

  void updatestatus(TaskStatus newstatus) {
    status = newstatus;
  }

  void taskProgress() {
    switch (status) {
      case TaskStatus.Pending:
        print("Task is not started yet.");
      case TaskStatus.InProgress:
        print("Task is currently in progress.");
      case TaskStatus.Completed:
        print("Task is complete!");
      case TaskStatus.Cancel:
        print("Task has been cancelled.");
    }
  }
}

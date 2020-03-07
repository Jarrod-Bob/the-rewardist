abstract class ListItem {}

class RewardItem implements ListItem {
  final String reward;
  final List<TodoItem> todos;

  RewardItem(this.reward, this.todos);
}

class TodoItem implements ListItem {
  final String activity;
  final String deadline;

  TodoItem(this.activity, this.deadline);
}
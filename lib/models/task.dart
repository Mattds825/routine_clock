class Task {
  String id;
  String title;
  String description;

  Task({this.title, this.description});

  Map<String, dynamic> toJson() => {
        'title': title,
        'description': description,
        'id': id,
      };

  Task.fromJson(Map<String, dynamic> json): id = json['id'], title = json['title'], description = json['decription'];
}

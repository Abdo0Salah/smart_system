class GetAllPostsModel {
  int? id;
  String? title;
  String? content;
  int? groupId;


  GetAllPostsModel({
    this.id,
    this.title,
    this.content,
    this.groupId,

  });

  factory GetAllPostsModel.fromJson(Map<String, dynamic> json) {
    return GetAllPostsModel(
      id: json['id'],
      title: json['title'],
      content: json['content'],
      groupId: json['groupId'],

    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'startDate': content,
      'groupId': groupId,

    };
  }

  @override
  String toString() {
    return 'GetAllPostsModel(id: $id, title: $title, content: $content, groupId: $groupId,)';
  }
}

class GetAllRepliesModel {
  int? id;
  int? userId;
  int? postId;
  String? content;


  GetAllRepliesModel({
    this.id,
    this.userId,
    this.postId,
    this.content,

  });

  factory GetAllRepliesModel.fromJson(Map<String, dynamic> json) {
    return GetAllRepliesModel(
      id: json['id'],
      userId: json['userId'],
      postId: json['postId'],
      content: json['content'],

    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'postId': postId,
      'content': content,

    };
  }

  @override
  String toString() {
    return 'GetAllRepliesModel(id: $id, userId: $userId, postId: $postId, content: $content,)';
  }
}

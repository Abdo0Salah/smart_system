class GetAllMeetingsModel {
  int? id;
  String? title;
  String? startDate;
  String? url;
  int? groupId;


  GetAllMeetingsModel({
    this.id,
    this.title,
    this.startDate,
    this.url,
    this.groupId,

  });

  factory GetAllMeetingsModel.fromJson(Map<String, dynamic> json) {
    return GetAllMeetingsModel(
      id: json['id'],
      title: json['title'],
      startDate: json['startDate'],
      url: json['url'],
      groupId: json['groupId'],

    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'startDate': startDate,
      'url': url,
      'groupId': groupId,

    };
  }

  @override
  String toString() {
    return 'GetAllMeetingsModel(id: $id, title: $title, startDate: $startDate, url: $url, groupId: $groupId,)';
  }
}

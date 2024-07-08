class getAllStudentAttendanceModel {
  int? id;
  bool? status;
  String? qrCode;
  String? date;
  int? studentId;
  int? courseId;

  getAllStudentAttendanceModel({
    this.id,
    this.status,
    this.qrCode,
    this.date,
    this.studentId,
    this.courseId,

  });

  factory getAllStudentAttendanceModel.fromJson(Map<String, dynamic> json) {
    return getAllStudentAttendanceModel(
      id: json['id'],
      status: json['status'],
      qrCode: json['qrCode'],
      date: json['date'],
      studentId: json['studentId'],
      courseId: json['courseId'],

    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'status': status,
      'qrCode': qrCode,
      'date': date,
      'studentId': studentId,
      'courseId': courseId,

    };
  }

  @override
  String toString() {
    return 'getAllStudentAttendanceModel(id: $id, status: $status, qrCode: $qrCode, date: $date, studentId: $studentId, courseId: $courseId,)';
  }
}

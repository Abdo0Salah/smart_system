class EndPoint {
  static String baseUrl = "http://eirpsystem.runasp.net";
  static String signIn = "/api/Students/login";
  static String signUp = "/api/Students/register";
  static String subjectRegisteration = "/api/Courses/GetAll";
  static const String logout = "/api/Students/logout";
  static String getUserDataEndPoint(id) {
    return "user/get-user/$id";
  }
}
///
class ApiKey {
  // شكل الريسبونس في حالة الايرور
  static String status = "status";
  static String errorMessage = "message";
  static String message = "message";
  static String id = "id";
// شكل الريكويست  بتاع تسجيل الدخول
  static String userName = "userName";
  static String password = "password";

// شكل الريسبونس بتاع تسجيل الدخول
  static String token = "token";
  static String expiration = "expiration";

// شكل الريكويست  بتاع  انشاء حساب
  //static String id = "id";
  static String name = "name";
  static String email = "email";
  static String confirmPassword = "confirmPassword";
  static String role = "role";
  static String phone = "phone";
  static String level = "level";
  static String term = "term";
  static String gender = "gender";
  static String ssn = "ssn";
 // static String profilePic = "profilePic";


}



class EndPoint {
  //student
  static String baseUrl = "http://eirpsystem.runasp.net";
  static String signIn = "/api/Students/login";
  static String signUp = "/api/Students/register";
  static String subjectRegisteration = "/api/Courses/GetAll";
  static const String logout = "/api/Students/logout";
  static String getUserDataEndPoint(id) {
     return "/api/Students/$id";
  }
  static String ubdateUserDataEndPoint(id) {
    return "/api/Students/update/$id";
  }
  static String registerCourses (id) {
    return "/api/Courses/RegisterCourses?studentId=$id";
  }
  static String getCoursesbyLevelAndTerm ({required id,required level,required term}) {
    return "/api/Courses/GetByLevelAndTerm/$id/$level/$term";
  }


  static String getGroups ({required courseId}) {
    return  "/api/Groups/getGroups/$courseId";
  }





  //= "/api/Courses/RegisterCourses";


//parent
  static String signInParent = "/api/Parents/register";

}
///
class ApiKey {
  ///Student
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

// شكل الريكويست بتاع البروفايل
  static String universityEmail = "universityEmail";
  static String parentPhone = "parentPhone";
  static String parentEmail = "parentEmail";
  static String userNameSaved = "userNameSaved";
  static String userEmailSaved = "userEmailSaved";
  static String userGenderSaved ="userGenderSaved";
  static String userTermSaved ="userTermSaved";
  static String userLevelSaved ="userLevelSaved";
  static String selectedTerm ="selectedTerm";
  static String selectedLevel ="selectedLevel";
  static String courseIdSaved ="courseIdSaved";





  ///Parent

   static String userNameParent = "userName";
   static String passwordParent = "password";
}

class APIEndpoints {
  APIEndpoints._();

  ///BASE URL AND HOST URL
  static const String baseUrl = "https://student-portal-admin.vercel.app/";
  static const String hostUrl = "api/v1/";

  ///ENDPOINTS
  static const String getConfig = "config/get_configs";
  static const String getLogin = "authentications/login";
  static const String addStudent = "student/add_student";
  static const String getStudents = "student/get_students";
  static const String updateStudent = "student/edit_student/";
  static const String addEnquiry = "inquiry/add_inquiry";
  static const String updateEnquiry = "inquiry/edit_inquiry";
  static const String getInquiry = "inquiry/get_inquiries";
  static const String deleteStudent = "student/delete_student/";
}

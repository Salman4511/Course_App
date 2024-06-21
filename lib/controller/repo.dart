import 'package:course_app/model/course_model.dart';
import 'package:dio/dio.dart';

class Api {
  Future<CourseModel> singIn(String email, String password) async {
    CourseModel course = CourseModel();
    try {
      final response =
          await Dio().get("https://trogon.info/tutorpro/edspark/api/");

      if (response.statusCode == 201 || response.statusCode == 200) {
        print("the response get is oky");
        return response.data;
      } else {
        print("the response get is not oky");
        return course;
      }
    } catch (e) {
      print("the response get some error $e");
      return course;
    }
  }
}

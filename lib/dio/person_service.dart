import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:jsonserialization/model/person.dart';

class PersonService {
  var baseURl = "https://jsonplaceholder.typicode.com";
  Dio dio = Dio();

  Future<Person> getData(int postId) async {
    try {
      final response = await dio.get(baseURl + "/posts/$postId");
      debugPrint(response.toString());
      return Person.fromJson(response.data);
    } on DioError catch (e) {
      debugPrint('Status code: ${e.response?.statusCode.toString()}');
      throw Exception('Failed to load post: $postId');
    }
  }
}

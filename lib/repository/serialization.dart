import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
// import 'package:jsonserialization/model/user.dart';
import 'package:jsonserialization/model/user_auto.dart';

// Json decode merubah json string ke dart map
Future<void> decodeJson() async {
  String userString = await rootBundle.loadString('assets/json/user.json');
  Map<String, dynamic> userMap = await json.decode(userString);
  // debugPrint('hello ${userMap['name']}!');
  // debugPrint('your email is ${userMap['email']}!');

  User user = User.fromJson(userMap);
  debugPrint('hello ${user.name}!');
  debugPrint('your email is ${user.email}!');
}

// Json encode merubah map ke json string
Future<void> encodeJson() async {
  Map<String, dynamic> userMap = {
    'name': 'ez',
    'email': 'ez@mail.com',
  };
  String userString = json.encode(userMap);
  debugPrint(userString);

  User user = User("ez", "ez@mail.com");
  userMap = user.toJson();
  debugPrint(userMap.toString());
}

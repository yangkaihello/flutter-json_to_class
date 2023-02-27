// ignore_for_file: unused_import

import 'package:json_to_class/json_to_class.dart';

void main(List<String> arguments) {
  print(JsonToClass(null, BuildClass())
      .storage("aa", BuildClass(main_name: "b")));
}

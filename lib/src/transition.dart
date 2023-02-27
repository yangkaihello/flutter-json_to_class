// ignore_for_file: non_constant_identifier_names, constant_identifier_names, camel_case_types, unused_element, library_private_types_in_public_api

class JsonToClass {
  late List<_listJson> datas = [];

  JsonToClass(String? json, BuildClass? build) {
    if (json != null && build != null) {
      datas.add(_listJson(json, build));
    }
  }

  JsonToClass storage(String json, BuildClass build) {
    datas.add(_listJson(json, build));
    return this;
  }
}

class _listJson {
  late String json;
  late BuildClass buildClass;

  _listJson(this.json, this.buildClass);
}

class BuildClass {
  BuildClass({
    this.main_name = 'MainEntity',
    this.model = BuildClassModel.DEFAULT,
    this.depth = BuildClassDepth.DEFAULT,
    this.is_map = true,
    this.is_get = true,
    this.is_set = true,
  });

  String main_name = 'MainEntity';
  String model = BuildClassModel.DEFAULT;
  String depth = BuildClassDepth.DEFAULT;
  bool is_map = true;
  bool is_get = true;
  bool is_set = true;
}

class BuildClassModel {
  static const DEFAULT = 'default';
  static const CONST = 'const';
  static const PRIVATE = 'private';
}

class BuildClassDepth {
  static const DEFAULT = 'default';
  static const FILE = 'file';
}

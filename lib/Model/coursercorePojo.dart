class CourseCorePojo {

  int id;
  String name;
  int visible;
  String summary;
  int summaryformat;
  int section;
  int hiddenbynumsections;
  bool uservisible;
  List<dynamic> modules;

  CourseCorePojo({required this.id, required this.name, required this.visible, required this.summary, required this.summaryformat, required this.section, required this.hiddenbynumsections, required this.uservisible, required this.modules});

  factory CourseCorePojo.fromMap(Map<String, dynamic> json) => CourseCorePojo(
    id : json['id']??0 ,
    name : json['name']??"",
    visible : json['visible']??0,
    summary : json['summary']??"",
    summaryformat : json['summaryformat']??0,
    section : json['section']??0,
    hiddenbynumsections : json['hiddenbynumsections']??0,
    uservisible : json['uservisible']??false,
    modules : json['modules']??[],
  );


  static const String tableName = "Course_Core";

  static const String columnId = "id";
  static const String columnname = "name";
  static const String columnvisible = "visible";
  static const String columnsummary = "summary";
  static const String columnsummaryformat = "summaryformat";
  static const String columnsection = "section";
  static const String columnsequence = "sequence";
  static const String columnhiddenbynumsections = "hiddenbynumsections";
  static const String columnuservisible = "uservisible";
  static const String columntag = "modules";

  static const String createTable = "CREATE TABLE $tableName ( "
      "$columnId TEXT, "
      "$columnsection TEXT, "
      "$columnname TEXT,"
      "$columnsummary TEXT,"
      "$columnsequence TEXT,"
      "$columnsummaryformat TEXT,"
      "$columnvisible TEXT,"
      "$columnhiddenbynumsections TEXT,"
      "$columnuservisible TEXT,"
      "$columntag TEXT)";

}
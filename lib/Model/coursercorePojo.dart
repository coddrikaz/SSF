class CourseCorePojo {

  String id;
  String name;
  String visible;
  String summary;
  String summaryformat;
  String section;
  String hiddenbynumsections;
  String uservisible;
  String modules;

  CourseCorePojo({required this.id, required this.name, required this.visible, required this.summary, required this.summaryformat, required this.section, required this.hiddenbynumsections, required this.uservisible, required this.modules});

  factory CourseCorePojo.fromMap(Map<String, dynamic> json) => CourseCorePojo(
    id : json['id']??"" ,
    name : json['name']??"",
    visible : json['visible']??"",
    summary : json['summary']??"",
    summaryformat : json['summaryformat']??"",
    section : json['section']??"",
    hiddenbynumsections : json['hiddenbynumsections']??"",
    uservisible : json['uservisible']??"",
    modules : json['modules']??"",
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
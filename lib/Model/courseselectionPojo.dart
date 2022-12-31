class CourseSelectionPojo {

  String id,name;
  String section,summary,sequence,visible,availability,tag;

  CourseSelectionPojo({required this.id, required this.name, required this.section, required this.summary, required this.sequence, required this.visible, required this.availability, required this.tag});

  factory CourseSelectionPojo.fromMap(Map<String, dynamic> json) => CourseSelectionPojo(
      id : json['id']??"" ,
      name : json['name']??"All sections",
      section : json['section']??"",
      summary : json['summary']??"",
      sequence : json['sequence']??"" ,
      visible : json['visible']??"",
      availability : json['availability']??"",
      tag : json['tag']??"" ,
  );


  static const String tableName = "Course_Selection";

  static const String columnId = "id";
  static const String columnsection = "section";
  static const String columnname = "name";
  static const String columnsummary = "summary";
  static const String columnsequence = "sequence";
  static const String columnvisible = "visible";
  static const String columnavailability = "availability";
  static const String columntag = "tag";

  static const String createTable = "CREATE TABLE $tableName ( "
      "$columnId TEXT, "
      "$columnsection TEXT, "
      "$columnname TEXT,"
      "$columnsummary TEXT,"
      "$columnsequence TEXT,"
      "$columnvisible TEXT,"
      "$columnavailability TEXT,"
      "$columntag TEXT)";

}
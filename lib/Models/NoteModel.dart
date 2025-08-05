import 'package:hive/hive.dart';
part 'NoteModel.g.dart';
@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  String Title;
  @HiveField(1)
  String Descraption;
  @HiveField(2)
  String dateTime;
  @HiveField(3)
  int color;
  NoteModel({
    required this.Title,
    required this.Descraption,
    required this.dateTime,
    required this.color,
  });
}

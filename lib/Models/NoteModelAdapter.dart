import 'package:hive/hive.dart';
import 'package:noteapp/Models/NoteModel.dart';

class NotemodelAdapter extends TypeAdapter<NoteModel> {
  @override
  NoteModel read(BinaryReader reader) {
    return NoteModel(
        Title: reader.toString(),
        Descraption: reader.toString(),
        dateTime: reader.toString(),
        color: reader.readInt());
  }

  @override
  
  int get typeId =>0 ;

  @override
  void write(BinaryWriter writer, NoteModel obj) {
   
  }
}

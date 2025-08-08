import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/Models/Constants.dart';
import 'package:noteapp/Models/NoteModel.dart';
import 'package:noteapp/Simple_Bloc_observer.dart';
import 'package:noteapp/cubit/cubit/notes_cubit_cubit.dart';
import 'package:noteapp/views/NoteView.dart';
import 'package:noteapp/views/SettingView.dart';
import 'package:noteapp/views/Splash_Screen.dart';
import 'package:hive_flutter/hive_flutter.dart';
 

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(BoxNote);
  runApp(NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubitCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: "Poppins"),
        initialRoute: SplashScreen.Id,
        routes: {
          Noteview.Id: (context) => Noteview(),
          SplashScreen.Id: (context) => SplashScreen(),
          Settingview.id: (context) => Settingview()
        },
      ),
    );
  }
}

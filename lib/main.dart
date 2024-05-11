import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/constants/constant_keys.dart';
import 'package:note_app/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:note_app/cubits/notex_cubit/notes_cubit.dart';
import 'package:note_app/helper/simple_bloc_observer.dart';
import 'package:note_app/model/note_model.dart';
import 'package:note_app/views/edit_note_Screen.dart';
import 'package:note_app/views/home_screen.dart';
import 'package:bloc/bloc.dart';

void main() async {
  Hive.registerAdapter(NoteModelAdapter());
  Bloc.observer = SimpleBlocObserviser();
  await Hive.initFlutter();
  await Hive.openBox<NoteModel>(kNoteBox);

  runApp(
    const FlutterNoteApp(),
  );
}

class FlutterNoteApp extends StatelessWidget {
  const FlutterNoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        theme: ThemeData(
            brightness: Brightness.dark,
            scaffoldBackgroundColor: const Color.fromARGB(255, 38, 37, 37),
            fontFamily: 'Poppins'),
        debugShowCheckedModeBanner: false,
        routes: {
          HomeScreen.id: (context) => const HomeScreen(),
          EditNoteScreen.id: (context) => const EditNoteScreen(),
        },
        initialRoute: HomeScreen.id,
      ),
    );
  }
}

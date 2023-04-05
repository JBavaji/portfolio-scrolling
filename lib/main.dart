import 'package:app/screens/contact/bloc/send_message_bloc.dart';
import 'package:app/screens/home/bloc/page_index_bloc.dart';
import 'package:app/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageIndexBloc(),
        ),
        BlocProvider(
          create: (context) => SendMessageBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.green,
            primaryColor: Colors.green,
            fontFamily: 'Quicksand',
            textTheme: TextTheme(
                displaySmall:
                    TextStyle(fontSize: 14, color: Colors.grey.shade600),
                displayMedium:
                    TextStyle(fontSize: 18, color: Colors.grey.shade600),
                displayLarge:
                    TextStyle(fontSize: 24, color: Colors.grey.shade900))),
        home: const HomeScreen(),
      ),
    );
  }
}

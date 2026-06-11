import 'package:flutter/material.dart';
import 'DemoStatelessWidget.dart';
import 'DemoStatefulWidget.dart';
import 'Layout.dart';
import 'package:provider/provider.dart';
import 'chat_provider.dart';
import 'chat_screen.dart';


// void main() =>
//     runApp(

//         MaterialApp(debugShowCheckedModeBanner: false, home: Layout()));

void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     debugShowCheckedModeBanner: false,
  //     home: LoginScreen(),
  //   );
  // }
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ChatProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Layout(),
      ),
    );
  }
}

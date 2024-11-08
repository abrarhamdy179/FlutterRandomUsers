import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Providers/random_user_provider.dart';
import 'Screens/random_user_sceen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>RandomUserProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: RandomUserSceen(),
      ),
    );
  }
}
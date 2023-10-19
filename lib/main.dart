import 'package:flutter/material.dart';
import 'package:providers_flutter/models/soma.dart';
import 'package:providers_flutter/page/login.dart';
import 'package:providers_flutter/page/page2.dart';
import 'package:providers_flutter/page/principal.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => Soma(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/principal': (context) => Principal(),
        '/page2': (context) => Page2(),
        '/login': (context) => Login()
      },
      initialRoute: '/principal',
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers_flutter/models/soma.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Página 2'),
      ),
      body: Center(
         child: Consumer<Soma>(builder: (context, value, child) => Text(
                value.valor.toString(),
                style: TextStyle(fontSize: 40),
              ),
         ),
      ),
    );
  }
}
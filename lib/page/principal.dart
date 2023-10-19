import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers_flutter/models/soma.dart';

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Principal')),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 100,
              child: ElevatedButton(
                  onPressed: () {
                    Provider.of<Soma>(context, listen: false).contador();
                  },
                  child: Text('Somar')),
            ),
            Consumer<Soma>(
              builder: (context, value, child) => Text(
                value.valor.toString(),
                style: TextStyle(fontSize: 40),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Provider.of<Soma>(context, listen: false).reset();
                },
                child: Text('Resetar')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/page2');
                },
                child: Text('Página 2')),
                 ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: Text('Login')),
                
          ],
        ),
      ),
    );
  }
}

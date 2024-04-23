import 'package:flutter/material.dart';
import 'package:listview/components/contact_widget.dart';
import 'package:listview/model/contato.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: ListPage());
  }
}

class ListPage extends StatelessWidget {
  ListPage({super.key});

  List<Contato> contatos = Contato.contatos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contacts')),
      body: ListView.builder(
        itemCount: contatos.length,
        itemBuilder: (BuildContext context, int index) {
          return ContatoWidget(contatos: contatos, index: index,
          );
        },
      ),
    );
  }
}

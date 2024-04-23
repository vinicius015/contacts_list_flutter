import 'package:flutter/material.dart';
import 'package:listview/model/contato.dart';

class ContatoWidget extends StatelessWidget {
  List<Contato> contatos;
  int index;

  ContatoWidget({required this.contatos, required this.index});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(contatos[index].nome),
      subtitle: Text(contatos[index].email),
      leading: CircleAvatar(
        child: Text(contatos[index].nome[0]), 
      ),
    );
  }
}
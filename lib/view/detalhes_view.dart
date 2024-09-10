import 'package:flutter/material.dart';
import 'package:flutter_application_4/model/contato.dart';
import 'package:image_network/image_network.dart';

class DetalhesView extends StatefulWidget {
  const DetalhesView({super.key});

  @override
  State<DetalhesView> createState() => _DetalhesViewState();
}

class _DetalhesViewState extends State<DetalhesView> {
  @override
  Widget build(BuildContext context) {
    // receber os dados que foram enviados por argumento na PrincipalView
    final Contato dados = ModalRoute.of(context)!.settings.arguments as Contato;

    return Scaffold(
      appBar: AppBar(title: Text('ContatosApp')),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            // Como o site das imagens não permitia pegarmos a imagem diretamente, tivemos que
            // inserir no terminal 'flutter pub add image_network' e depois adicionar o
            // elemento ImageNetwork que está abaixo:

            ImageNetwork(
              image: dados.foto,
              height: 230,
              width: 230,
              curve: Curves.easeIn,
              borderRadius: BorderRadius.circular(115),
              fitWeb: BoxFitWeb.cover,
              onLoading: const CircularProgressIndicator(
                color: Colors.indigoAccent,
              ),
              onError: const Icon(
                Icons.error,
                color: Colors.red,
              ),
            ),

            // Configurando a exibição dos dados:

            ListTile(
              title: Text('Nome',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
              subtitle: Text(dados.nome, style: TextStyle(fontSize: 22)),
            ),
            ListTile(
              title: Text('Email',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
              subtitle: Text(dados.email, style: TextStyle(fontSize: 22)),
            ),
            ListTile(
              title: Text('Telefone',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
              subtitle: Text(dados.telefone, style: TextStyle(fontSize: 22)),
            ),
            ListTile(
              title: Text('Cidade',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
              subtitle: Text(dados.cidade, style: TextStyle(fontSize: 22)),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_4/model/contato.dart';
import 'package:image_network/image_network.dart';

class PrincipalView extends StatefulWidget {
  const PrincipalView({super.key});

  @override
  State<PrincipalView> createState() => _PrincipalViewState();
}

class _PrincipalViewState extends State<PrincipalView> {
  // Atributos
  var lista = [];

  @override
  void initState() {
    lista = Contato.gerarDados();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ContatosApp')),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: lista.length,
          itemBuilder: (context, index) {
            return Card(
                child: ListTile(
              title: Text(
                lista[index].nome,
                style: TextStyle(fontSize: 18),
              ),
              subtitle: Text(
                lista[index].email,
                style: TextStyle(
                  fontSize: 14,
                  fontStyle: FontStyle.italic,
                ),
              ),
              // leading: Icon(Icons.contact_page_outlined),
              // adicionando imagem do lado esquerdo de cada contato:
              leading: Container(
                height: 40,
                width: 40,
                child: ImageNetwork(
                  image: lista[index].foto,
                  height: 40,
                  width: 40,
                  curve: Curves.easeIn,
                  borderRadius: BorderRadius.circular(20),
                  fitWeb: BoxFitWeb.cover,
                  onLoading: const CircularProgressIndicator(
                    color: Colors.indigoAccent,
                  ),
                  onError: const Icon(
                    Icons.error,
                    color: Colors.red,
                  ),
                ),
              ),
              trailing: Icon(Icons.arrow_right),
              hoverColor: Colors.blue.shade100,
              onTap: () {
                // retornar o item da lista selecionado
                Contato dados = lista[index];

                // navegar para a tela de detalhes (DetalhesView)
                Navigator.pushNamed(context, 'detalhes', arguments: dados);
              },
            ));
          },
        ),
      ),
    );
  }
}

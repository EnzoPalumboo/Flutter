import 'package:flutter/material.dart';
import 'package:new_project/screens/widgets_conteudo.dart';
import 'package:new_project/widgets/titulo_secao.dart';

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
      ),
      home: ListContent(),
    ); 
  } 
} 
class ListContent extends StatelessWidget {
  const ListContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Catalogo de Widgets'),),
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () => Navigator.push(
                context, 
                MaterialPageRoute(builder: (_) => WidgetsConteudo(),),
              ),
              child: Text('Widgets de Conteudo'),
            ),
          ]
        )
        );
  }
}


import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

void main() {
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(IfoodFlutter());
}

class IfoodFlutter extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.grey),
      title: 'Ifood Flutter',
      home: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'ENTREGAR EM',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w700,
                        fontSize: 16),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        'Stn, 716',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey.shade100,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Prato ou restaurante',
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 14,
                  ),
                  Text(
                    'Filtros',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Container(
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ListView(
                  padding: EdgeInsets.only(right: 12),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    ColumnBanner(
                      imagem: 'imagens/restaurantes-0.png',
                      texto: 'Um texto qualquer',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ColumnBanner(
                      imagem: 'imagens/restaurantes-1.png',
                      texto: 'A taxa é corterisa para voce',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ColumnBanner(
                      imagem: 'imagens/restaurantes-2.png',
                      texto: 'Comida gostosa e sem taxas',
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 10,
              color: Colors.grey.shade100,
            ),
            Container(
              height: 150,
              padding: EdgeInsets.only(top: 12, left: 12),
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Categorias',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        ColumnCategoria(
                          imagem: 'imagens/pizza.png',
                          texto: 'Pizza',
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ColumnCategoria(
                          imagem: 'imagens/lanches.png',
                          texto: 'Lanches',
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ColumnCategoria(
                          imagem: 'imagens/acai.png',
                          texto: 'Açai',
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ColumnCategoria(
                          imagem: 'imagens/japonesa.png',
                          texto: 'Japonesa',
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 10,
              color: Colors.grey.shade100,
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Image.asset(
                  'imagens/gourmet.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 4,
          items: [
            buildBottomNavigationBarItem(Icons.home, 'Início'),
            buildBottomNavigationBarItem(Icons.search, 'Buscaas'),
            buildBottomNavigationBarItem(Icons.receipt, 'Pedidos'),
            buildBottomNavigationBarItem(Icons.person_outline, 'Perfil'),
          ],
        ),
      ),
    );
  }

  BottomNavigationBarItem buildBottomNavigationBarItem(icone, texto) {
    return BottomNavigationBarItem(
      icon: Icon(
        icone,
        color: Colors.black,
      ),
      title: Text(
        texto,
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}

class ColumnCategoria extends StatelessWidget {
  final String imagem;
  final String texto;

  const ColumnCategoria({Key key, this.imagem, this.texto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: Image.asset(
            imagem,
            height: 70,
          ),
        ),
        SizedBox(
          height: 7,
        ),
        Text(
          texto,
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black54),
        ),
      ],
    );
  }
}

class ColumnBanner extends StatelessWidget {
  final String imagem;
  final String texto;

  const ColumnBanner({Key key, this.imagem, this.texto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            imagem,
            // 'imagens/restaurantes-0.png',
            height: 140,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          texto,
          // 'Confira sua entrega grátis na sacola',
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black54),
        )
      ],
    );
  }
}

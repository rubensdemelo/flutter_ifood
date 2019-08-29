import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ifood_flutter/containers/home.dart';
import 'package:ifood_flutter/core/model/main.dart';

final List<CardImageItem> banners = [
  CardImageItem(image: 'assets/images/restaurantes-0.png', text: 'Confira sua entrega grátis na sacola'),
  CardImageItem(image: 'assets/images/restaurantes-1.png', text: 'A taxa é corterisa para voce'),
  CardImageItem(image: 'assets/images/restaurantes-2.png', text: 'Comida gostosa e sem taxas'),
  CardImageItem(image: 'assets/images/retirar.png', text: 'Peça e retira no restaurante'),
];

final List<CardImageItem> categories = [
  CardImageItem(image: 'assets/images/pizza.png', text: 'Pizza'),
  CardImageItem(image: 'assets/images/lanches.png', text: 'Lanches'),
  CardImageItem(image: 'assets/images/acai.png', text: 'Açai'),
  CardImageItem(image: 'assets/images/japonesa.png', text: 'Japonesa'),
  CardImageItem(image: 'assets/images/bebidas.png', text: 'Bebidas'),
];

final List<BottomNavigatorItem> menus = [
  BottomNavigatorItem(icon: Icons.home, text: 'Início'),
  BottomNavigatorItem(icon: Icons.search, text: 'Busca'),
  BottomNavigatorItem(icon: Icons.receipt, text: 'Pedidos'),
  BottomNavigatorItem(icon: Icons.person_outline, text: 'Perfil'),
];

void main() {
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(Home(menus: menus, categories: categories, banners: banners));
}

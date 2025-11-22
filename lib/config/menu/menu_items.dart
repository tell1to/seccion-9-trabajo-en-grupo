import 'package:flutter/material.dart';


class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon
  });
}


const appMenuItems = <MenuItem>[

  MenuItem(
    title: 'Botones aplicables en Flutter', 
    subTitle: 'Varios botones de Flutter', 
    link: '/buttons', 
    icon: Icons.smart_button_outlined
  ),

  MenuItem(
    title: 'Tarjetas', 
    subTitle: 'Varios contenedores estilizados para mostrar información', 
    link: '/cards', 
    icon: Icons.credit_card
  ),


];




import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:myg_app/views/screens/category_page.dart';

class NavigationScreen extends StatefulWidget {

  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return NavigationView(
      appBar: const NavigationAppBar(
        leading: Center(
          child: FlutterLogo(size: 25,)
        ),
      ),
      pane: NavigationPane( // Este es el que quiero que se ponga por encima del BODY
        toggleable: false,
        selected: _currentIndex,
        onChanged: (value) => setState(() {
          _currentIndex = value;
        }),
        displayMode: PaneDisplayMode.minimal, 
        header: Padding(
          padding: const EdgeInsets.only(left: 20,),
          child: Text("Maluc Indumentaria", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),),
        ),
        items: [
          PaneItem(
            icon: const Icon(Icons.home),
            title: const Text("Principal"),
            body: const Center(child: Text("Principal Proximamente...")),
          ),
          PaneItem(
            icon: const Icon(Icons.category_rounded),
            title: const Text("Categorias"),
            body: const CategoryPage(),
          )
        ],
      ),
    );
  }
}
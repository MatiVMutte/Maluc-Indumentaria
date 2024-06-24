import 'package:flutter/material.dart';
import 'package:myg_app/views/screens/desktop/desktop_page.dart';
import 'package:myg_app/views/screens/mobile/mobile_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        
        if(constraints.maxWidth > 600) {
          return const DesktopPage();
        } else {
          return const MobilePage();
        }

      },
    );
  }
}
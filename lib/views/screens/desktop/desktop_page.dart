import 'package:fluent_ui/fluent_ui.dart';
import 'package:myg_app/views/screens/desktop/navigation_screen.dart';

class DesktopPage extends StatelessWidget {
  const DesktopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const FluentApp(
      debugShowCheckedModeBanner: false,
      title: "Fluent UI",

      home: NavigationScreen(),
    );
  }
}
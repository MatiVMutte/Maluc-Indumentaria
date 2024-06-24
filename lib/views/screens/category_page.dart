import 'package:fluent_ui/fluent_ui.dart';
import 'package:myg_app/views/widgets/my_tarjet.dart';

class CategoryPage extends StatelessWidget {

  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      // header: const PageHeader(
      //   title: Text("Categorias"),
      // ),
      content: LayoutBuilder(
        builder: (context, constraints) {
          // double ancho = constraints.maxWidth;
          // int columnas;

          // if (ancho > 1300) {
          //   columnas = 5; // Desktop
          // } else if (ancho > 900) {
          //   columnas = 3; // Large Tablets
          // } else if (ancho > 600) {
          //   columnas = 2; // Small Tablets
          // } else if (ancho > 400) {
          //   columnas = 2; // Large Phones
          // } else {
          //   columnas = 1; // Small Phones
          // }

          return SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 500,
                      mainAxisExtent: 620,
                      childAspectRatio: 4, // Proporción estándar de tarjetas
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                    ),
                    itemCount: 6,
                    itemBuilder: (context, index) {
            
                      return MyTarjet(index: index,);
            
                    },
                  ),
                ),
              ],
            ),
          ),
        );
        },
      ),
    );
  }
}
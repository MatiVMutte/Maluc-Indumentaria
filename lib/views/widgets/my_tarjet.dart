import 'package:flutter/material.dart';
import 'package:myg_app/views/constants/colors.dart';
import 'package:myg_app/views/widgets/full_screen_image.dart';

// ignore: must_be_immutable
class MyTarjet extends StatelessWidget {
  int index;

  MyTarjet({super.key, required this.index});

  void _showFullImage(BuildContext context, String imagePath) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => FullScreenImage(imagePath: imagePath)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 10,),
            Tooltip(
              message: "Presiona aqui",
              child: GestureDetector(
                onTap: () => _showFullImage(context, "assets/imgs/buzo1.jpg"),
                child: const CircleAvatar(
                  backgroundColor: AppColors.fondoMoradoProfundo,
                  radius: 108,
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage("assets/imgs/buzo1.jpg"),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Center(
              child: Text(
                "Prenda N°$index",
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
            ),
            const SizedBox(height: 10,),
            const Center(
              child: Text(
                "Subtítulo o detalle adicional",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey),
              ),
            ),


            const SizedBox(height: 15,),
            Center(
              child: Text(
                "Esta es una breve descripción de la categoría N°$index. Puede contener más detalles o información adicional para el usuario.",
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 14),
              ),
            ),
            const SizedBox(height: 20,),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Acción del botón
                },
                child: const Text("Ir a la categoría"),
              ),
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.favorite, color: Colors.red),
                  onPressed: () {
                    // Acción de favorito
                  },
                ),
                const SizedBox(width: 10,),
                IconButton(
                  icon: Icon(Icons.share, color: Colors.blue),
                  onPressed: () {
                    // Acción de compartir
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
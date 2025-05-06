import 'package:flutter/material.dart';

class Pagina_animated_padding extends StatefulWidget {
  const Pagina_animated_padding({Key? key}) : super(key: key);

  @override
  State<Pagina_animated_padding> createState() => _MyAnimatedPaddingState();
}

class _MyAnimatedPaddingState extends State<Pagina_animated_padding> {
  double padValue = 0;
  final String imageUrl =
      'https://images.unsplash.com/photo-1500595046743-cd271d694d30?w=500&auto=format&fit=crop';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(title: const Text('Animated Padding')),
      body: Column(
        children: [
          AnimatedPadding(
            padding: EdgeInsets.all(padValue),
            duration: const Duration(seconds: 1),
            curve: Curves.bounceOut,
            child: Image.network(
              imageUrl,
              height: 200, // Altura fija para mejor visualización
              width: double.infinity, // Ancho completo
              fit: BoxFit.cover, // Ajuste de la imagen
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Center(
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded /
                            loadingProgress.expectedTotalBytes!
                        : null,
                  ),
                );
              },
              errorBuilder: (context, error, stackTrace) =>
                  const Icon(Icons.error),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment:
                MainAxisAlignment.center, // Centrado en lugar de al final
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    padValue = 50;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  foregroundColor: Colors.white,
                ),
                child: const Text('Aumentar Espacio'),
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    padValue = 0;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  foregroundColor: Colors.white,
                ),
                child: const Text('Reducir Espacio'),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              '''Cow, in common parlance, a domestic bovine, regardless of sex and age, usually of the species Bos taurus. In precise usage, the name is given to mature females of several large mammals, including cattle (bovines), moose, elephants, sea lions, and whales.
              ''',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ),
    );
  }
}

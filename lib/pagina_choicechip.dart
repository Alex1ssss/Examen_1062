import 'package:flutter/material.dart';

class Pagina_choicechip extends StatefulWidget {
  const Pagina_choicechip({Key? key}) : super(key: key);

  @override
  State<Pagina_choicechip> createState() => _PaginaChoiceChipState();
}

class _PaginaChoiceChipState extends State<Pagina_choicechip> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choice Chip Demo'),
      ),
      body: Center(
        child: ChoiceChip(
          avatar: const Icon(Icons.ac_unit),
          label: const Text('Choice Chip'),
          selected: _isSelected,
          onSelected: (bool newValue) {
            setState(() {
              _isSelected = newValue;
            });
          },
          selectedColor: Colors.blue.withOpacity(0.2),
          labelStyle: TextStyle(
            color: _isSelected ? Colors.blue : Colors.black,
          ),
          elevation: 2,
          pressElevation: 5,
        ),
      ),
    );
  }
}

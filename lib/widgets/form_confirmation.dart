import 'package:flutter/material.dart';

// Widget para crear un checkbox
Widget checkboxField(String label, bool value, ValueChanged<bool?>? onChanged) {
  return Row(
    children: [
      Checkbox(value: value, onChanged: onChanged), // Checkbox que permite cambiar el valor
      Text(label), // Texto descriptivo del checkbox
    ],
  );
}

// Widget para crear un campo de firma
Widget signatureField(TextEditingController controller, String label) {
  return TextFormField(
    controller: controller, // Controlador para el campo de firma
    decoration: InputDecoration(
      labelText: label, // Etiqueta del campo
      border: OutlineInputBorder(), // Borde del campo
    ),
    validator: (value) {
      // Valida que el campo no esté vacío
      if (value == null || value.isEmpty) {
        return 'Por favor, proporciona la firma'; // Mensaje de error si está vacío
      }
      return null; // Retorna null si la validación es correcta
    },
  );
}

// Widget para crear un campo de selección de fecha
Widget fechaField(BuildContext context, DateTime initialDate, Function(DateTime) onDateChanged) {
  return GestureDetector(
    onTap: () async {
      // Abre un selector de fecha
      final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: initialDate,
        firstDate: DateTime(2000), // Fecha mínima
        lastDate: DateTime(2101), // Fecha máxima
      );
      // Si se selecciona una nueva fecha, llama a la función proporcionada
      if (picked != null && picked != initialDate) {
        onDateChanged(picked);
      }
    },
    child: AbsorbPointer( // Evita la interacción directa con el TextFormField
      child: TextFormField(
        decoration: InputDecoration(
          labelText: 'Fecha', // Etiqueta del campo
          hintText: '${initialDate.toLocal()}'.split(' ')[0], // Muestra la fecha actual
          border: OutlineInputBorder(), // Borde del campo
        ),
      ),
    ),
  );
}

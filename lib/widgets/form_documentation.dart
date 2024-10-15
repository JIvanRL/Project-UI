import 'package:flutter/material.dart';

// Widget para subir archivos
Widget fileUploadField(TextEditingController controller, String label) {
  return TextFormField(
    controller: controller,
    readOnly: true,
    decoration: InputDecoration(
      labelText: label,
      hintText: 'Toca para seleccionar un archivo',
      border: OutlineInputBorder(),
      suffixIcon: IconButton(
        icon: Icon(Icons.upload_file),
        onPressed: () async {
          // Aquí puedes agregar la lógica para abrir el selector de archivos
          // Por ejemplo, usando el paquete file_picker
          // final result = await FilePicker.platform.pickFiles();
          // if (result != null) {
          //   controller.text = result.files.single.name; // Actualiza el campo con el nombre del archivo
          // }
        },
      ),
    ),
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Por favor selecciona un archivo';
      }
      return null;
    },
  );
}

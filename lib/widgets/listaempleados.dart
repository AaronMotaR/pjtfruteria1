import 'package:flutter/material.dart';

class Empleado extends StatelessWidget {
  final String imagen;
  final String nombre;
  final String especialista;
  const Empleado({
    Key? key,
    required this.imagen,
    required this.nombre,
    required this.especialista,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: 160,
        decoration: BoxDecoration(
            color: const Color.fromARGB(95, 179, 173, 173),
            borderRadius: BorderRadius.circular(15.0)),
        padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 14.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(imagen),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              " $nombre",
              overflow: TextOverflow.fade,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              especialista,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.black54),
            )
          ],
        ),
      ),
    );
  }
}

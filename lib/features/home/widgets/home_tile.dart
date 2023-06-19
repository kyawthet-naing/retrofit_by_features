import 'package:flutter/material.dart';

class HomeTile extends StatelessWidget {
  final VoidCallback? onTap;
  final String title;
  const HomeTile({super.key, this.onTap, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: onTap,
        trailing: const Icon(Icons.forward),
        title: Text(
          title,
          textAlign: TextAlign.start,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}

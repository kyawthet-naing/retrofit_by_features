import 'package:flutter/material.dart';

class Err extends StatelessWidget {
  final String? err;
  static const String route = "/error";
  const Err({super.key, this.err});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.error_outline,
              size: 40,
              color: Colors.red,
            ),
            const SizedBox(height: 10),
            Text(
              err ?? 'Unknown Error',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('OK'),
            )
          ],
        ),
      ),
    );
  }
}

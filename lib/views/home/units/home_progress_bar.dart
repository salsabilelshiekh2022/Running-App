import 'package:flutter/material.dart';

class HomeProgressBar extends StatelessWidget {
  const HomeProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 279,
          height: 10,
          decoration: ShapeDecoration(
            color: const Color(0xFFF4F4F4),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          ),
        ),
        Container(
          width: 204,
          height: 10,
          decoration: ShapeDecoration(
            gradient: const LinearGradient(
              begin: Alignment(1.00, -0.00),
              end: Alignment(-1, 0),
              colors: [Color(0xFF54CA73), Color(0xFFB86EFF)],
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          ),
        )
      ],
    );
  }
}

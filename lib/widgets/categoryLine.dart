
import 'package:flutter/material.dart';
import 'dart:ui';

class CategoryLine extends StatelessWidget {
  final String category;

  const CategoryLine({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 0.7, sigmaY: 0.7),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 70,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color(0xFF1d7873),
                Color(0x81012825),
              ],
            ),
          ),
          child: Center(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                category,
                style: TextStyle(
                  color: const Color(0xFFd3af37),
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: "FRSSPBL.TTF",
                  shadows: [
                    Shadow(
                      color: Colors.black.withOpacity(0.3),
                      offset: const Offset(2, 2),
                      blurRadius: 4,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

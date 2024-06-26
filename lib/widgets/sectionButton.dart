import 'package:flutter/material.dart';
import 'package:untitled7/const/colors.dart' as my_colors;

class SectionButton extends StatelessWidget {
  final String sectionName;
  final bool isSelected;
  final Function(String) onPressed;

  const SectionButton({
    Key? key,
    required this.sectionName,
    required this.isSelected,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const borderColor = true ? Color(0xFF1d7873) : Colors.transparent;

    return TextButton(
      onPressed: () {
        onPressed(sectionName);
      },
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(const Color(0xFF1d7873).withOpacity(0.1)),
        padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
        //backgroundColor: MaterialStateProperty.all(my_colors.turquoise.withOpacity(0.1)),
        /*shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.0),
          ),
        ),*/
      ),
      child: Container(
        padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
        decoration: const BoxDecoration(
          /*border: Border(
            bottom: BorderSide(
              color: borderColor,
              width: 0.0, // Border width
            ),
          ),*/
        ),
        child: Text(
          sectionName,
          style: const TextStyle(
            color: Color(0xFFd3af37),
            fontSize: 35, // Adjust the font size
            fontWeight: FontWeight.bold,
            fontFamily: "FRSSPBL.TTF",
          ),
        ),
      ),
    );
  }
}

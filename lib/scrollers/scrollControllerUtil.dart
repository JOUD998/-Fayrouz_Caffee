import 'package:flutter/material.dart';
import 'package:untitled7/data/data.dart';

class ScrollControllerUtil {
  final ScrollController _scrollController;

  final Function(String) updateSelectedButton;
  double sizedBoxes = 20;
  double categoryLine = 70;
  double paddingOfCard = 10;
  double marginOfCard = 10;
  double cardHeight = 280;
  double  totalHeightOfCategory = 0;

  ScrollControllerUtil(this._scrollController, this.updateSelectedButton){
    totalHeightOfCategory = sizedBoxes +
        categoryLine +
        paddingOfCard +
        marginOfCard +
        cardHeight

    ;
  }



  void scrollToSection(String sectionName) {
    updateSelectedButton(sectionName);
    double sectionPosition = 0.0;

    if (sectionName == Data().categories[0]) {
      sectionPosition = 0.0;
    }
    else if (sectionName == Data().categories[1]) {
      // Calculate the position based on your layout
      sectionPosition = totalHeightOfCategory + sizedBoxes;
    }
    else if (sectionName == Data().categories[2])  {
      // Calculate the position based on your layout
      sectionPosition = (totalHeightOfCategory*2 +sizedBoxes);
    }
    else if (sectionName == Data().categories[3])  {
      // Calculate the position based on your layout
      sectionPosition = (totalHeightOfCategory*3 +sizedBoxes);
    }
    else if (sectionName == Data().categories[4])  {
      // Calculate the position based on your layout
      sectionPosition = (totalHeightOfCategory*4 +sizedBoxes);
    }
    else if (sectionName == Data().categories[5])  {
      // Calculate the position based on your layout
      sectionPosition = (totalHeightOfCategory*5 +sizedBoxes);
    }
    else if (sectionName == Data().categories[6])  {
      // Calculate the position based on your layout
      sectionPosition = (totalHeightOfCategory*6 +sizedBoxes);
    }
    else if (sectionName == Data().categories[7])  {
      // Calculate the position based on your layout
      sectionPosition = (totalHeightOfCategory*7 +sizedBoxes);
    }
    else if (sectionName == Data().categories[8])  {
      // Calculate the position based on your layout
      sectionPosition = (totalHeightOfCategory*8 +sizedBoxes);
    }
    else if (sectionName == Data().categories[9])  {
      // Calculate the position based on your layout
      sectionPosition = (totalHeightOfCategory*9 +sizedBoxes);
    }
    else if (sectionName == Data().categories[10])  {
      // Calculate the position based on your layout
      sectionPosition = (totalHeightOfCategory*10 +sizedBoxes);
    }
    else if (sectionName == Data().categories[11])  {
      // Calculate the position based on your layout
      sectionPosition = (totalHeightOfCategory*11 +sizedBoxes);
    }
    else if (sectionName == Data().categories[12])  {
      // Calculate the position based on your layout
      sectionPosition = (totalHeightOfCategory*12 +sizedBoxes);
    }
    else if (sectionName == Data().categories[13])  {
      // Calculate the position based on your layout
      sectionPosition = (totalHeightOfCategory*13 +sizedBoxes);
    }
    _scrollController.animateTo(
      sectionPosition,
      duration: const Duration(seconds: 1), // You can adjust the duration
      curve: Curves.ease,
    );
  }


}

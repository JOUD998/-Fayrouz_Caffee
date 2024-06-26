
import 'dart:ui';
import 'package:untitled7/const/colors.dart' as myColors;
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:untitled7/Widgets/categoryLine.dart';
import 'package:untitled7/data/data.dart';
import 'package:untitled7/scrollers/scrollControllerUtil.dart';
import 'package:untitled7/widgets/productLine.dart';
import 'package:untitled7/widgets/sectionButton.dart';

void main() {
  runApp(MyApp());

  //ss
}

class MyApp extends StatefulWidget {
  MyApp({super.key});


  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Data myData = Data();
 late String selectedButton;

  late ScrollControllerUtil scrollControllerUtil;
  late ScrollController scrollController;
  void updateSelectedButton(String sectionName) {
    setState(() {
      selectedButton = sectionName;
    });
  }

  @override
  void initState() {
    super.initState();
     selectedButton = myData.categories.first;

    scrollController = ScrollController();
    scrollControllerUtil = ScrollControllerUtil(scrollController, updateSelectedButton);
  }

  @override
  Widget build(BuildContext context) {



    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fayrouz Caffee',
      theme: ThemeData(
       scaffoldBackgroundColor: myColors.turquoise,

        colorScheme: const ColorScheme.dark(),
      ),

      home:
          Scaffold(
            appBar: AppBar(
                toolbarHeight: 120,
                backgroundColor:  myColors.white,
                shape: const Border(

                  bottom: BorderSide(
                    color: Color(0xFFd3af37),
                    width: 8,
                  ),
                ),
                title: Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/logo1.png',
                      height: 120,
                      width: 120,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: <Widget>[
                            for (int index = 0; index < myData.categories.length; index++)
                              SectionButton(
                                sectionName: myData.categories[index],
                                isSelected: selectedButton == myData.categories[index],
                                onPressed: (sectionName) {
                                  setState(() {
                                    selectedButton = sectionName;
                                  });
                                  scrollControllerUtil.scrollToSection(sectionName);
                                },
                              ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )

            ),

            body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              controller: scrollController,
              child: Column(
                children: [
                  const SizedBox(height: 20,),
                  CategoryLine(category: myData.categories[0],),
                  ProductLine(productList:myData.sweets),
                  CategoryLine(category: myData.categories[1]),
                  ProductLine(productList:myData.milkShake),
                  CategoryLine(category: myData.categories[2]),
                  ProductLine(productList:myData.banCake),
                   CategoryLine(category: myData.categories[3]),
                  ProductLine(productList:myData.softDrinksAndMojito),
                  CategoryLine(category: myData.categories[4]),
                  ProductLine(productList:myData.crape),
                  CategoryLine(category: myData.categories[5]),
                  ProductLine(productList:myData.fruitSalad),
                  CategoryLine(category: myData.categories[6]),
                  ProductLine(productList:myData.iceCoffee),
                  CategoryLine(category: myData.categories[7]),
                  ProductLine(productList:myData.cocktail),
                  CategoryLine(category: myData.categories[8]),
                  ProductLine(productList:myData.juices),
                  CategoryLine(category: myData.categories[9]),
                  ProductLine(productList:myData.hotDrinks),

                  CategoryLine(category: myData.categories[10]),
                  ProductLine(productList:myData.bierAndEnergyDrinks),

                  CategoryLine(category: myData.categories[11]),
                  ProductLine(productList:myData.hookah),
                  CategoryLine(category: myData.categories[12]),
                  ProductLine(productList:myData.snacks),

                ],
              ),
            ),
          ),


    );
  }
}

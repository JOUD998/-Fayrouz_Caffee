import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:untitled7/const/colors.dart' as my_colors;

class DescriptionDialog extends StatelessWidget {
 
  final  String  productTitle;
  final  String  productDescription;
  
  const DescriptionDialog({required this.productTitle,required this.productDescription,  super.key});

  @override
  Widget build(BuildContext context) {
    return  Dialog(

      child: Container(
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color:  my_colors.turquoise, width: 2),
          image: DecorationImage(
              image: const AssetImage(
                  "assets/logo1.png"
              ),
              colorFilter:ColorFilter.mode(
                Colors.black.withOpacity(0.1), // Adjust the opacity here (0.5 for 50% opacity)
                BlendMode.dstIn,
              )
          ),

          color: my_colors.white,


        ),

        width: 600,
        height: 270,



        child: Column(
          children: [


            const SizedBox(height: 15,),
            ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                child: Container(
                  // height: 60,
                  height: 70,

                width: MediaQuery.sizeOf(context).width,
                  decoration: const BoxDecoration(

                    color: Color.fromRGBO(29, 120, 115, 0.8),
                  ),
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Container(
                    margin: const EdgeInsets.all(8),

                    child: Center(
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          productTitle!,
                          style: const TextStyle(
                            color: Color.fromRGBO(233, 184, 36, 1),
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Tajm3-Desgroup-Free-Font",
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 80,),
            ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                child: Container(
                  height: 100,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: const BoxDecoration(

                    color: Color.fromRGBO(29, 120, 115, 0.1),
                  ),
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Container(
                    margin: const EdgeInsets.all(8),

                    child: Center(
                      child: Text(
                        productDescription!,
                        style: const TextStyle(
                          color: Color.fromRGBO(233, 184, 36, 1),
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Tajm3-Desgroup-Free-Font",
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            //SizedBox(height: 2.5,),



            /*ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop(); // Close the dialog
                        },
                        child: Text("Close"),
                      ),*/
          ],
        ),
      ),
    );
  }
}

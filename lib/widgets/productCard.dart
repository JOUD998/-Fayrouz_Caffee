import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:untitled7/dialogs/descriptionDialog.dart';
import 'package:untitled7/dialogs/videoDialog.dart';

class ProductCard extends StatelessWidget {
  final String productImage;
  final String productTitle;
  final String? productDescription;
  final String ? productVideo;

  const ProductCard({
    Key? key,
    required this.productImage,
    required this.productTitle,
    this.productDescription,
    this.productVideo
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return GestureDetector(

      onTap: () {
        if(productVideo != null && productVideo !="")
        {
        showDialog(
          context: context,
          builder: (context)
          {
            return VideoDialog(productTitle: productTitle,productDescription: productDescription,productVideo:productVideo!);
          },
        );
          }
        else if (productDescription != null && productDescription !="" ){
          showDialog(
            context: context,
            builder: (context)
            {
              return DescriptionDialog(productTitle: productTitle, productDescription: productDescription!);

            },
          );
        }





        },

      child: Container(
        width: 240,
        height: 280,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(

              width: 2,
              color: const Color(0xFF1d7873),

          ),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(1, 40, 37, 0.8),

              spreadRadius: 2,
              blurRadius: 2,

            ),
          ],
          image: DecorationImage(
            image: AssetImage(productImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 170),
            Stack(
              children: [
                Container(
                  height: 60,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: const BoxDecoration(),
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                      child: Container(
                        decoration: const BoxDecoration(

                          color: Color.fromRGBO(29, 120, 115, 0.5),
                        ),
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Center(
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              productTitle,
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}

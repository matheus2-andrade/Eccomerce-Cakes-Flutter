import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saborosa_app/app/core/color.dart';
import 'package:saborosa_app/app/core/text_style.dart';
import 'package:saborosa_app/app/modules/home/components/circle_button.dart';
import 'package:saborosa_app/app/modules/home/components/round_button.dart';
import 'package:saborosa_app/app/modules/home/shared/models/items.dart';

class ItemCard extends StatelessWidget {
  final Cakes cake;
  const ItemCard({
    Key? key,
    required this.cake,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      width: 250,
      padding: const EdgeInsets.only(left: 10, bottom: 20),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 250,
              width: 250,
              padding: const EdgeInsets.only(
                left: 20,
                right: 10,
                bottom: 10,
              ),
              decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: blackShadow,
                      offset: Offset(0, 7),
                      blurRadius: 10,
                    )
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cake.name,
                    style: txtItemCard,
                    maxLines: 1,
                  ),
                  const SizedBox(height: 7),
                  Text(
                    "Sabor ${cake.flavourl}",
                    style: txtItemCard.copyWith(
                      fontSize: 14,
                      color: grayColor,
                      fontWeight: FontWeight.w500,
                    ),
                    maxLines: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '\$',
                              style: txtHeading.copyWith(
                                fontSize: 12,
                              ),
                            ),
                            TextSpan(
                              text: cake.price,
                              style: txtHeading.copyWith(
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const RoundButton(
                        text: "Compre Agora",
                        fontSize: 11,
                        height: 30,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              height: 200,
              width: 220,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: const BoxDecoration(
                color: pink02,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: Image.asset(
                cake.image,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Positioned(
              top: 10,
              right: 10,
              child: CircleButton(
                size: 30,
                iconColor: mainColor,
                image: "heart_full.svg",
                onTap: () {},
              ))
        ],
      ),
    );
  }
}

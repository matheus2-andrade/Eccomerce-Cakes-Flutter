import 'package:flutter/material.dart';
import 'package:saborosa_app/app/core/color.dart';
import 'package:saborosa_app/app/core/text_style.dart';
import 'package:saborosa_app/app/modules/home/components/round_button.dart';
import 'package:saborosa_app/app/modules/home/shared/models/items.dart';

class ItemCard2 extends StatelessWidget {
  final Cakes cake;
  const ItemCard2({
    Key? key,
    required this.cake,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 80,
            width: 250,
            margin: const EdgeInsets.only(right: 15, left: 10),
            padding: const EdgeInsets.only(bottom: 20, left: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: white,
              boxShadow: const [
                BoxShadow(
                  color: blackShadow,
                  offset: Offset(0, 5),
                  blurRadius: 10,
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 80,
          width: 80,
          margin: const EdgeInsets.only(right: 15, left: 10),
          padding: const EdgeInsets.all(5),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            color: pink02,
          ),
          child: Image.asset(
            cake.image,
            scale: 2,
          ),
        ),
        Positioned(
          right: 25,
          bottom: 10,
          child: SizedBox(
            width: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cake.name,
                  style: txtItemCard.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                  maxLines: 1,
                ),
                Text(
                  "Sabor ${cake.flavourl}",
                  style: txtItemCard.copyWith(
                    fontSize: 12,
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
                              fontSize: 10,
                            ),
                          ),
                          TextSpan(
                            text: cake.price,
                            style: txtHeading.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const RoundButton(
                      text: "Compre Agora",
                      fontSize: 11,
                      height: 20,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

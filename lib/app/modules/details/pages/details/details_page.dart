import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:saborosa_app/app/core/color.dart';
import 'package:saborosa_app/app/core/text_style.dart';
import 'package:saborosa_app/app/modules/details/components/custom_app_bar.dart';
import 'package:saborosa_app/app/modules/details/components/mini_button.dart';
import 'package:saborosa_app/app/modules/details/components/start_rating.dart';
import 'package:saborosa_app/app/modules/details/pages/details/details_store.dart';
import 'package:saborosa_app/app/modules/home/components/round_button.dart';
import 'package:saborosa_app/app/modules/home/shared/models/items.dart';
import 'package:saborosa_app/main.dart';

class DetailsPage extends StatefulWidget {
  final Cakes cake;

  const DetailsPage({Key? key, required this.cake}) : super(key: key);
  @override
  DetailsPageState createState() => DetailsPageState();
}

class DetailsPageState extends ModularState<DetailsPage, DetailsStore> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: height / 2,
              width: 360,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: const BoxDecoration(
                color: pink02,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                ),
              ),
              child: Image.asset(widget.cake.image),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.cake.name,
                  style: txtHeading.copyWith(color: black, fontSize: 22),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    StartRating(rating: widget.cake.rating),
                    Text('${widget.cake.rating}'),
                    const SizedBox(width: 120),
                    GestureDetector(
                      onTap: () {
                        controller.decrementQuantidade();
                      },
                      child: const MiniButton(
                        icon: Icons.minimize_outlined,
                        bgColor: pink01,
                        iconColor: mainColor,
                      ),
                    ),
                    Observer(builder: (_) {
                      return Text(
                        controller.quantidade > 9
                            ? '${controller.quantidade}'
                            : '0${controller.quantidade}',
                        style: txtItemCard.copyWith(color: mainColor),
                      );
                    }),
                    GestureDetector(
                      onTap: () {
                        controller.incrementQuantidade();
                      },
                      child: const MiniButton(
                        icon: Icons.add,
                        bgColor: mainColor,
                        iconColor: white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: 360,
                  height: 200,
                  child: ListView(
                    padding: const EdgeInsets.only(bottom: 50),
                    physics: const BouncingScrollPhysics(),
                    children: [
                      ReadMoreText(
                        widget.cake.destription,
                        trimLines: 7,
                        trimMode: TrimMode.Line,
                        colorClickableText: mainColor,
                        style: TextStyle(
                          color: black.withOpacity(0.5),
                          height: 1.5,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 60,
                  width: 360,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: const BoxDecoration(
                    color: pink01,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Adicionar ao carrinho",
                        style: txtBtnCategory.copyWith(
                          color: mainColor,
                        ),
                      ),
                      RoundButton(
                        fontSize: 14.0,
                        height: 30.0,
                        text: '\$${widget.cake.price}',
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Observer(builder: (_) {
            return CustomAppBar(controller: controller);
          })
        ],
      )),
    );
  }
}

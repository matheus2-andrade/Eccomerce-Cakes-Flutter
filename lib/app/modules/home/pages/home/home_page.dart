import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:saborosa_app/app/core/color.dart';
import 'package:saborosa_app/app/core/text_style.dart';
import 'package:saborosa_app/app/modules/home/components/category_menu.dart';
import 'package:saborosa_app/app/modules/home/components/circle_button.dart';
import 'package:saborosa_app/app/modules/home/components/item_card.dart';
import 'package:saborosa_app/app/modules/home/components/item_card_2.dart';
import 'package:saborosa_app/app/modules/home/pages/home/home_store.dart';
import 'package:saborosa_app/app/modules/home/shared/models/items.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(children: [
                      const TextSpan(
                        text: "Você gostaria",
                        style: txtHeading,
                      ),
                      TextSpan(
                        text: '\nde um pouco',
                        style: txtHeading.copyWith(
                          color: grayColor,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      TextSpan(
                          text: "\nde bolo?",
                          style: txtHeading.copyWith(
                            color: black,
                          )),
                    ]),
                  ),
                  CircleButton(
                    onTap: () {},
                    image: "search.svg",
                  ),
                ],
              ),
              CategoryMenu(
                controller: controller,
              ),
              Expanded(
                flex: 2,
                child: ListView.builder(
                  padding: const EdgeInsets.only(top: 50),
                  itemCount: cakes.length,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Modular.to.pushNamed("/details");
                      },
                      child: ItemCard(cake: cakes[index]),
                    );
                  },
                ),
              ),
              const Text(
                'Recomendações',
                style: TextStyle(
                  fontSize: 21,
                  color: black,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Expanded(
                flex: 1,
                child: ListView.builder(
                  itemCount: cakes.length,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(top: 40, bottom: 40),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {},
                      child: ItemCard2(cake: cakes[index]),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/svg.dart';
import 'package:saborosa_app/app/core/color.dart';
import 'package:saborosa_app/app/core/text_style.dart';
import 'package:saborosa_app/app/modules/home/pages/home/home_store.dart';
import 'package:saborosa_app/app/modules/home/shared/models/category.dart';

class CategoryButton extends StatelessWidget {
  final Categories category;
  final HomeStore controller;
  const CategoryButton(
      {Key? key, required this.category, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          margin: const EdgeInsets.only(top: 30, right: 20),
          padding: controller.selectedIndex == category.id
              ? const EdgeInsets.only(left: 10, right: 15)
              : const EdgeInsets.symmetric(horizontal: 10),
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: controller.selectedIndex == category.id ? mainColor : pink01,
          ),
          child: controller.selectedIndex == category.id
              ? Row(
                  children: [
                    CircleAvatar(
                      radius: 22,
                      backgroundColor: white,
                      child: SvgPicture.asset(
                        category.image,
                        height: 20,
                        width: 10,
                      ),
                    ),
                    const SizedBox(width: 15),
                    Text(
                      category.name,
                      style: txtBtnCategory,
                    )
                  ],
                )
              : SvgPicture.asset(
                  category.image,
                  height: 30,
                ));
    });
  }
}

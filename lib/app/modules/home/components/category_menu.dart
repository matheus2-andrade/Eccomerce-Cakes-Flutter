import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:saborosa_app/app/modules/home/components/category_button.dart';
import 'package:saborosa_app/app/modules/home/pages/home/home_store.dart';
import 'package:saborosa_app/app/modules/home/shared/models/category.dart';

class CategoryMenu extends StatelessWidget {
  final HomeStore controller;

  const CategoryMenu({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 80,
        child: ListView.builder(
          itemCount: categories.length,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            final category = categories[index];
            return GestureDetector(
              onTap: () {
                controller.selectedIndex = index;
              },
              child: CategoryButton(
                category: category,
                controller: controller,
              ),
            );
          },
        ));
  }
}

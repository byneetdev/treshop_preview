import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../helpers/constants.dart';
import '../models/category_model.dart';

enum CardType { grid, horizontal }

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.category,
    required this.cardType,
  }) : super(key: key);

  final CategoryModel category;
  final CardType cardType;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      margin: EdgeInsets.only(
        right: 15.0,
        bottom: 2.0,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(8.0),
        onTap: () {
          //TODO: Navigate to All Product by Category
        },
        child: SizedBox(
          width: 100.0,
          height: 100.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(category.icon!),
              SizedBox(height: 8.0),
              AutoSizeText(
                category.name!,
                style: theme.textTheme.headline4,
              )
            ],
          ),
        ),
      ),
    );
  }
}
 
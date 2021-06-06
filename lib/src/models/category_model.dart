import 'package:flutter/material.dart';

import '../helpers/constants.dart';

class CategoryModel {
  final String? name;
  final String? icon;

  CategoryModel({this.name, this.icon});
}

List<CategoryModel> categoryList(BuildContext context) => [
      CategoryModel(
        name: 'Bag',
        icon: CustomIcon.bag,
      ),
      CategoryModel(
        name: 'Blouse',
        icon: CustomIcon.blouse,
      ),
      CategoryModel(
        name: 'Flat_shoes',
        icon: CustomIcon.flat_shoes,
      ),
      CategoryModel(
        name: 'Hat',
        icon: CustomIcon.hat,
      ),
      CategoryModel(
        name: 'High_hills',
        icon: CustomIcon.high_hills,
      ),
      CategoryModel(
        name: 'Jacket',
        icon: CustomIcon.jacket,
      ),
      CategoryModel(
        name: 'Jeans',
        icon: CustomIcon.jeans,
      ),
      CategoryModel(
        name: 'Sandal',
        icon: CustomIcon.sandal,
      ),
      CategoryModel(
        name: 'Shirt',
        icon: CustomIcon.shirt,
      ),
      CategoryModel(
        name: 'Singlet',
        icon: CustomIcon.singlet,
      ),
      CategoryModel(
        name: 'Skirt',
        icon: CustomIcon.skirt,
      ),
      CategoryModel(
        name: 'Sneaker',
        icon: CustomIcon.sneaker,
      ),
      CategoryModel(
        name: 'Socks',
        icon: CustomIcon.socks,
      ),
      CategoryModel(
        name: 'Suit',
        icon: CustomIcon.suit,
      ),
      CategoryModel(
        name: 'Tshirt',
        icon: CustomIcon.tshirt,
      ),
      CategoryModel(
        name: 'Watch',
        icon: CustomIcon.watch,
      ),
    ];

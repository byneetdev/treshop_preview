import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:intl/intl.dart';

import '../models/product_model.dart';
import 'custom_network_image.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return InkWell(
      onTap: () {
        //TODO: Navigate to Detail Product
      },
      borderRadius: BorderRadius.circular(8.0),
      child: Card(
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Container(
          margin: EdgeInsets.all(12.0),
          height: 240.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  CustomNetworkImage(
                    image: product.images!.first,
                    borderRadius: BorderRadius.circular(
                      8.0,
                    ),
                    fit: BoxFit.cover,
                    width: double.infinity,
                    // height: MediaQuery.of(context).size.width / 2.0,
                  ),
                  Positioned(
                    right: 8.0,
                    bottom: 8.0,
                    child: CircleAvatar(
                      radius: 15.0,
                      backgroundColor: theme.cardColor.withOpacity(.4),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(FeatherIcons.heart),
                        color: Colors.red,
                        iconSize: 15.0,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 12),
              Spacer(),
              AutoSizeText(
                product.name!,
                style: theme.textTheme.headline4,
                maxLines: 1,
              ),
              SizedBox(height: 8.0),
              AutoSizeText(
                NumberFormat.currency(
                  symbol: '\$',
                ).format(product.price),
                style: theme.textTheme.bodyText2,
                maxLines: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

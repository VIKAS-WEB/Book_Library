import 'package:flutter/material.dart';

import 'Category.dart';
import 'Ecommerce.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: List.generate(
        demo_categories.length, (index) =>
          Padding(padding: const EdgeInsets.all(8.0),
            child: CategoryCard(
                icon: demo_categories[index].icon,
                title: demo_categories[index].title,
                press: () {}
            ),
          ),
      ),
      ),
    );
  }
}
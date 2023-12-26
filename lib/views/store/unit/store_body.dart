import 'package:flutter/material.dart';

import 'banners.dart';
import 'category_list.dart';

class StoreBody extends StatelessWidget {
  const StoreBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CategoriesList(),
            Banners(),
          ],
        ),
      ),
    );
  }
}

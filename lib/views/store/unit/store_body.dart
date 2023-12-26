import 'package:flutter/material.dart';
import 'package:running_app/views/store/unit/store_header.dart';

import 'banners.dart';
import 'brand_grid_view.dart';
import 'category_list.dart';
import 'popular_list.dart';

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
            SizedBox(
              height: 24,
            ),
            BrandsGridView(),
            SizedBox(
              height: 24,
            ),
            StoreHeader(),
            SizedBox(
              height: 24,
            ),
            PopularList()
          ],
        ),
      ),
    );
  }
}

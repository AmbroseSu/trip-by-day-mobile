// import 'package:flutter/material.dart';
//
// import '../../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
// import '../../../../../utils/constants/image_strings.dart';
//
//
// class THomeCategories extends StatelessWidget {
//   const THomeCategories({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 80,
//       child: ListView.builder(
//           shrinkWrap: true,
//           itemCount: 6,
//           scrollDirection: Axis.horizontal,
//           itemBuilder: (_, index) {
//             return TVerticalImageText(image: TImages.google, title: 'Shoes', onTap: (){});
//           }),
//     );
//   }
// }
//
//

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:onedaytrip/features/shop/screens/package_details/package_detail.dart';

import '../../../../../utils/constants/image_strings.dart';
import 'home_category_items.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetailScreen()),
      child: SizedBox(
        height: 207,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: const [
            THomeCategoryItem(
              image: TImages.semeruMountain,
              title: 'Semeru Mountain',
              location: 'East Java, Indonesia',
              rating: 4.8,
            ),
            SizedBox(width: 16), // Spacer between items
            THomeCategoryItem(
              image: TImages.rajaAmpat,
              title: 'Raja Ampat',
              location: 'West Papua, Indonesia',
              rating: 4.9,
            ),
          ],
        ),
      ),
    );
  }
}
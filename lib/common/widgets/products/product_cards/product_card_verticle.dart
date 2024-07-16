// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:iconsax/iconsax.dart';
// import 'package:onedaytrip/common/styles/shadows.dart';
// import 'package:onedaytrip/common/widgets/custom_shapes/containers/rounded_container.dart';
// import 'package:onedaytrip/common/widgets/images/t_rounded_image.dart';
// import 'package:onedaytrip/common/widgets/texts/product_price_text.dart';
// import 'package:onedaytrip/common/widgets/texts/product_title_text.dart';
// import 'package:onedaytrip/features/shop/screens/package_details/package_detail.dart';
// import 'package:onedaytrip/utils/constants/colors.dart';
// import 'package:onedaytrip/utils/constants/image_strings.dart';
// import 'package:onedaytrip/utils/constants/sizes.dart';
// import 'package:onedaytrip/utils/helpers/helper_functions.dart';
//
// import '../../icons/t_circular_icon.dart';
//
//
// class TProductCardVertical extends StatelessWidget {
//   const TProductCardVertical({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final dark = THelperFunctions.isDarkMode(context);
//
//     return GestureDetector(
//       onTap: () => Get.to(() => const ProductDetailScreen()),
//       child: Container(
//         width: 180,
//         padding: const EdgeInsets.all(1),
//         decoration: BoxDecoration(
//           boxShadow: [TShadowStyle.verticalProductShadow],
//           borderRadius: BorderRadius.circular(TSizes.productImageRadius),
//           color: dark ? TColors.darkGrey : TColors.white,
//         ),
//         child: Column(
//           children: [
//             TRoundedContainer(
//               padding: const EdgeInsets.all(TSizes.sm),
//               backgroundColor: dark ? TColors.dark : TColors.light,
//               child: Stack(
//                 children: [
//                   const AspectRatio(
//                     aspectRatio: 4 / 4,
//                     child: TRoundedImage(
//                       imageUrl: TImages.rajaAmpat,
//                       applyImageRadius: true,
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                   Positioned(
//                     top: 12,
//                     child: TRoundedContainer(
//                       radius: TSizes.sm,
//                       backgroundColor: TColors.secondary.withOpacity(0.8),
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: TSizes.sm, vertical: TSizes.xs),
//                       child: Text('25%',
//                           style: Theme.of(context)
//                               .textTheme
//                               .labelLarge!
//                               .apply(color: TColors.black)),
//                     ),
//                   ),
//                   const Positioned(
//                     top: 0,
//                     right: 0,
//                     child: TCircularIcon(icon: Iconsax.heart5, color: Colors.red),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: TSizes.spaceBtwItems / 2),
//             Padding(
//               padding: const EdgeInsets.only(left: TSizes.sm),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const TProductTitleText(title: 'Greek Island', smallSize: true),
//                   const SizedBox(height: TSizes.spaceBtwItems / 2),
//                   Row(
//                     children: [
//                       Text('Travel',
//                           overflow: TextOverflow.ellipsis,
//                           maxLines: 1,
//                           style: Theme.of(context).textTheme.labelMedium),
//                       const SizedBox(width: TSizes.xs),
//                       const Icon(Iconsax.verify5,
//                           color: TColors.primary, size: TSizes.iconXs),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             const Spacer(),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 const Padding(
//                   padding: EdgeInsets.only(left: TSizes.sm),
//                   child: TProductPriceText(price: '50'),
//                 ),
//                 Container(
//                   decoration: const BoxDecoration(
//                     color: TColors.dark,
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(TSizes.cardRadiusMd),
//                       bottomRight: Radius.circular(TSizes.productImageRadius),
//                     ),
//                   ),
//                   child: const SizedBox(
//                     width: TSizes.iconLg * 1.2,
//                     height: TSizes.iconLg * 1.2,
//                     child: Center(child: Icon(Iconsax.add, color: TColors.white)),
//                   ),
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:onedaytrip/features/shop/screens/package_details/package_detail.dart';
import 'package:onedaytrip/common/styles/shadows.dart';
import 'package:onedaytrip/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:onedaytrip/common/widgets/images/t_rounded_image.dart';
import 'package:onedaytrip/common/widgets/texts/product_price_text.dart';
import 'package:onedaytrip/common/widgets/texts/product_title_text.dart';
import 'package:onedaytrip/utils/constants/colors.dart';
import 'package:onedaytrip/utils/constants/image_strings.dart';
import 'package:onedaytrip/utils/constants/sizes.dart';
import 'package:onedaytrip/utils/helpers/helper_functions.dart';

import '../../icons/t_circular_icon.dart';

// class TProductCardVertical extends StatelessWidget {
//   final String packageName;
//   final String packageDescription;
//   final String price;
//   final List<String> galleryUrls;
//
//   const TProductCardVertical({
//     Key? key,
//     required this.packageName,
//     required this.packageDescription,
//     required this.price,
//     required this.galleryUrls,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final dark = THelperFunctions.isDarkMode(context);
//
//     return GestureDetector(
//       onTap: () => Get.to(() => const ProductDetailScreen()),
//       child: Container(
//         width: 180,
//         padding: const EdgeInsets.all(1),
//         decoration: BoxDecoration(
//           boxShadow: [TShadowStyle.verticalProductShadow],
//           borderRadius: BorderRadius.circular(TSizes.productImageRadius),
//           color: dark ? TColors.darkGrey : TColors.white,
//         ),
//         child: Column(
//           children: [
//             TRoundedContainer(
//               padding: const EdgeInsets.all(TSizes.sm),
//               backgroundColor: dark ? TColors.dark : TColors.light,
//               child: Stack(
//                 children: [
//                    AspectRatio(
//                     aspectRatio: 4 / 4,
//                      child:
//                      TRoundedImage(
//                        imageUrl: galleryUrls.isNotEmpty ? galleryUrls[0] : TImages.rajaAmpat,
//                        applyImageRadius: true,
//                        fit: BoxFit.cover,
//                        isNetworkImage: galleryUrls.isNotEmpty, // Đặt thành true nếu có URL
//                      ),
//
//
//                    ),
//                   Positioned(
//                     top: 12,
//                     child: TRoundedContainer(
//                       radius: TSizes.sm,
//                       backgroundColor: TColors.secondary.withOpacity(0.8),
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: TSizes.sm, vertical: TSizes.xs),
//                       child: Text('25%',
//                           style: Theme.of(context)
//                               .textTheme
//                               .labelLarge!
//                               .apply(color: TColors.black)),
//                     ),
//                   ),
//                   const Positioned(
//                     top: 0,
//                     right: 0,
//                     child: TCircularIcon(icon: Iconsax.heart5, color: Colors.red),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: TSizes.spaceBtwItems / 2),
//             Padding(
//               padding: const EdgeInsets.only(left: TSizes.sm),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   TProductTitleText(title: packageName, smallSize: true),
//                   const SizedBox(height: TSizes.spaceBtwItems / 2),
//                   Row(
//                     children: [
//                       Text('Travel',
//                           overflow: TextOverflow.ellipsis,
//                           maxLines: 1,
//                           style: Theme.of(context).textTheme.labelMedium),
//                       const SizedBox(width: TSizes.xs),
//                       const Icon(Iconsax.verify5,
//                           color: TColors.primary, size: TSizes.iconXs),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             const Spacer(),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: TSizes.sm),
//                   child: TProductPriceText(price: price),
//                 ),
//                 Container(
//                   decoration: const BoxDecoration(
//                     color: TColors.dark,
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(TSizes.cardRadiusMd),
//                       bottomRight: Radius.circular(TSizes.productImageRadius),
//                     ),
//                   ),
//                   child: const SizedBox(
//                     width: TSizes.iconLg * 1.2,
//                     height: TSizes.iconLg * 1.2,
//                     child: Center(child: Icon(Iconsax.add, color: TColors.white)),
//                   ),
//                 )
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


class TProductCardVertical extends StatelessWidget {
  final int packageId; // Thêm biến packageId
  final String packageName;
  final String packageDescription;
  final String price;
  final List<String> galleryUrls;

  const TProductCardVertical({
    Key? key,
    required this.packageId, // Thêm required cho packageId
    required this.packageName,
    required this.packageDescription,
    required this.price,
    required this.galleryUrls,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () => Get.to(() => ProductDetailScreen(packageId: packageId)), // Truyền packageId
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkGrey : TColors.white,
        ),
        child: Column(
          children: [
            TRoundedContainer(
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  AspectRatio(
                    aspectRatio: 4 / 4,
                    child: TRoundedImage(
                      imageUrl: galleryUrls.isNotEmpty ? galleryUrls[0] : TImages.rajaAmpat,
                      applyImageRadius: true,
                      fit: BoxFit.cover,
                      isNetworkImage: galleryUrls.isNotEmpty,
                    ),
                  ),
                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text('25%',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .apply(color: TColors.black)),
                    ),
                  ),
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: TCircularIcon(icon: Iconsax.heart5, color: Colors.red),
                  ),
                ],
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Padding(
              padding: const EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TProductTitleText(title: packageName, smallSize: true),
                  const SizedBox(height: TSizes.spaceBtwItems / 2),
                  Row(
                    children: [
                      Text('Travel',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: Theme.of(context).textTheme.labelMedium),
                      const SizedBox(width: TSizes.xs),
                      const Icon(Iconsax.verify5,
                          color: TColors.primary, size: TSizes.iconXs),
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: TSizes.sm),
                  child: TProductPriceText(price: price),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: TColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(TSizes.cardRadiusMd),
                      bottomRight: Radius.circular(TSizes.productImageRadius),
                    ),
                  ),
                  child: const SizedBox(
                    width: TSizes.iconLg * 1.2,
                    height: TSizes.iconLg * 1.2,
                    child: Center(child: Icon(Iconsax.add, color: TColors.white)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
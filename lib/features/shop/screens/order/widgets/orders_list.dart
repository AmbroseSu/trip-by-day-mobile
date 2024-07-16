import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:onedaytrip/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:onedaytrip/features/shop/screens/package_details/package_detail.dart';
import 'package:onedaytrip/utils/constants/colors.dart';
import 'package:onedaytrip/utils/constants/sizes.dart';
import 'package:onedaytrip/utils/helpers/helper_functions.dart';

// class TOrderListItems extends StatelessWidget {
//   const TOrderListItems({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final dark = THelperFunctions.isDarkMode(context);
//     return ListView.separated(
//       shrinkWrap: true,
//       itemCount: 10,
//       separatorBuilder: (_, __) => const SizedBox(height: TSizes.spaceBtwItems),
//       itemBuilder: (_, index) => TRoundedContainer(
//         showBorder: true,
//         padding: const EdgeInsets.all(TSizes.md),
//         backgroundColor: dark ? TColors.dark : TColors.light,
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             /// -- Row 1
//             Row(
//               children: [
//                 /// 1 - Icon
//                 const Icon(Iconsax.ship),
//                 const SizedBox(width: TSizes.spaceBtwItems / 2),
//
//                 /// 2 - Status & Date
//                 Expanded(
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Active',
//                         style: Theme.of(context).textTheme.bodyLarge!.apply(color: TColors.primary, fontWeightDelta: 1),
//                       ),
//                       Text('07 July 2024', style: Theme.of(context).textTheme.headlineSmall),
//                     ],
//                   ),
//                 ),
//
//                 /// 3 - Icon
//                 IconButton(onPressed: () => Get.to(() => const ProductDetailScreen()), icon: const Icon(Iconsax.arrow_right_34, size: TSizes.iconSm)),
//               ],
//             ),
//             const SizedBox(height: TSizes.spaceBtwItems),
//
//             /// -- Row 2
//             Row(
//               children: [
//                 Expanded(
//                   child: Row(
//                     children: [
//                       /// 1 - Icon
//                       const Icon(Iconsax.tag),
//                       const SizedBox(width: TSizes.spaceBtwItems / 2),
//
//                       /// 2 - Status & Date
//                       Expanded(
//                         child: Column(
//                           mainAxisSize: MainAxisSize.min,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text('Order', style: Theme.of(context).textTheme.labelMedium),
//                             Text('[#256f2]', style: Theme.of(context).textTheme.titleMedium),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//
//
//                 Expanded(
//                   child: Row(
//                     children: [
//                       /// 1 - Icon
//                       const Icon(Iconsax.calendar),
//                       const SizedBox(width: TSizes.spaceBtwItems / 2),
//
//                       /// 2 - Status & Date
//                       Expanded(
//                         child: Column(
//                           mainAxisSize: MainAxisSize.min,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text('Private Trip', style: Theme.of(context).textTheme.labelMedium),
//                             Text('25 July, 2024', style: Theme.of(context).textTheme.titleMedium),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }


class TOrderListItems extends StatelessWidget {
  const TOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 10,
      separatorBuilder: (_, __) => const SizedBox(height: TSizes.spaceBtwItems),
      itemBuilder: (_, index) => TRoundedContainer(
        showBorder: true,
        padding: const EdgeInsets.all(TSizes.md),
        backgroundColor: dark ? TColors.dark : TColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                const Icon(Iconsax.ship),
                const SizedBox(width: TSizes.spaceBtwItems / 2),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Active',
                        style: Theme.of(context).textTheme.bodyLarge!.apply(color: TColors.primary, fontWeightDelta: 1),
                      ),
                      Text('07 July 2024', style: Theme.of(context).textTheme.headlineSmall),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () => Get.to(() => ProductDetailScreen(packageId: index + 1)), // Truyền packageId tại đây
                  icon: const Icon(Iconsax.arrow_right_34, size: TSizes.iconSm),
                ),
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      const Icon(Iconsax.tag),
                      const SizedBox(width: TSizes.spaceBtwItems / 2),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Order', style: Theme.of(context).textTheme.labelMedium),
                            Text('[#256f2]', style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      const Icon(Iconsax.calendar),
                      const SizedBox(width: TSizes.spaceBtwItems / 2),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Private Trip', style: Theme.of(context).textTheme.labelMedium),
                            Text('25 July, 2024', style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
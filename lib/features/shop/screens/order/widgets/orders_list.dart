import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:onedaytrip/utils/constants/colors.dart';
import 'package:onedaytrip/utils/constants/sizes.dart';
import 'package:onedaytrip/utils/helpers/helper_functions.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import '../../../../../api/global_variables/user_manage.dart';
import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../package_details/package_detail.dart';

class TOrderListItems extends StatelessWidget {
  const TOrderListItems({super.key});

  Future<Map<String, dynamic>> fetchCartItemm() async {
    final int? userId = UserManager().id;
    final String? token = UserManager().token;

    if (userId == null || token == null) {
      throw Exception('User ID or token is missing');
    }


    final response = await http.post(
      Uri.parse("https://trip-by-day-backend.onrender.com/api/v1/order/find-all-paid-for-user/$userId?page=1&limit=10"),
      headers: {
        'Authorization': 'Bearer $token',
      },
    );

    print("0000000000000000000000000000000000000000000000000000000000000000000000000$response");
    if (response.statusCode == 200) {
      final data = json.decode(response.body) as Map<String, dynamic>;
      final items = data['content'] is List ? List<Map<String, dynamic>>.from(data['content']) : [];

      // Tính tổng giá
      final totalPrice = items.fold<double>(
        0,
            (sum, item) => sum + (item['price']?.toDouble() ?? 0),
      );

      return {
        'items': items,
        'totalPrice': totalPrice,
      };
    } else {
      throw Exception('Failed to load cart item: ${response.reasonPhrase}');
    }
  }

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return FutureBuilder<Map<String, dynamic>>(
      future: fetchCartItemm(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!['items'].isEmpty) {
          return Center(child: Text('No items in cart'));
        } else {
          final items = snapshot.data!['items'];

          return ListView.separated(
            shrinkWrap: true,
            itemCount: items.length,
            separatorBuilder: (_, __) => const SizedBox(height: TSizes.spaceBtwItems),
            itemBuilder: (_, index) {
              final item = items[index];
              return TRoundedContainer(
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
                              Text(item['date'], style: Theme.of(context).textTheme.headlineSmall),
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () => Get.to(() => ProductDetailScreen(packageId: item['packageId'])),
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
                                    Text('[#${item['code']}]', style: Theme.of(context).textTheme.titleMedium),
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
                                    Text('${item['packageStartTime']}', style: Theme.of(context).textTheme.titleMedium),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          );
        }
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:foodu/features/cart_and_orders/presentation/controllers/order_review_controller.dart';
import 'package:foodu/features/cart_and_orders/utils/emoji.dart';
import 'package:get/get.dart';

class OrderReviewPage extends StatelessWidget {
  OrderReviewPage({Key? key}) : super(key: key);

  final OrderReviewController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text(
          'Whats Your Mood!',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          'about this order? ',
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        GridView.builder(
            itemCount: _controller.emoji.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  _controller.onClickEmoji(index);
                },
                child: Obx(() => Container(
                      decoration: _controller.selectedMood.value == index
                          ? BoxDecoration(
                              borderRadius: BorderRadius.circular(32),
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 3,
                              ),
                            )
                          : null,
                      child: Center(
                        child: Image.network(_controller.emoji[index].toImage())
                            .marginAll(16),
                      ),
                    ).marginAll(8)),
              );
            },
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, childAspectRatio: 1)),
      ],
    );
  }
}

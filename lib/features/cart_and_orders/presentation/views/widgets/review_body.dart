import 'package:flutter/material.dart';
import 'package:foodu/core/widgets/app_button.dart';
import 'package:foodu/features/cart_and_orders/presentation/controllers/order_review_controller.dart';
import 'package:foodu/features/cart_and_orders/presentation/views/widgets/reviews_pages.dart';
import 'package:get/get.dart';

class ReviewBody extends StatefulWidget {
  const ReviewBody({Key? key}) : super(key: key);

  @override
  State<ReviewBody> createState() => _ReviewBodyState();
}

class _ReviewBodyState extends State<ReviewBody> {
  PageController? pageController;
  final pages = 3;

  @override
  void initState() {
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  navToNextPage() {
    num currentPage =
        pageController!.hasClients ? pageController?.page ?? 0 : 0;
    sentReview(currentPage);
    if (currentPage == pages - 1) {
      Get.back();
    } else {
      pageController?.nextPage(
          duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
    }
  }

  sentReview(num currentPage){
    if(currentPage == 0){
      Get.find<OrderReviewController>().sentOrderReview();
    }else if(currentPage == 1){
      Get.find<OrderReviewController>().sentDriverRating();
    }else{
      Get.find<OrderReviewController>().sentRestaurantRating();
    }
  }
  onClickCancel() {
    Get.back();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: Column(
          children: [
            Expanded(
              child: ReviewsPages(pageController: pageController!),
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: AppButton(
                    buttonText: 'Cancel',
                    onTap: onClickCancel,
                    isFocus: false,
                    padding: EdgeInsets.zero,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: AppButton(
                    buttonText: 'Submit',
                    onTap: navToNextPage,
                    padding: EdgeInsets.zero,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
  }
}

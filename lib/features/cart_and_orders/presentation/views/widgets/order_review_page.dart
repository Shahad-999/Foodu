import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderReviewPage extends StatefulWidget {
  const OrderReviewPage({Key? key}) : super(key: key);

  @override
  State<OrderReviewPage> createState() => _OrderReviewPageState();
}

class _OrderReviewPageState extends State<OrderReviewPage> {
  final emoji = [
    'assets/images/sad_face.png',
    'assets/images/sad_face.png',
    'assets/images/sad_face.png',
    'assets/images/sad_face.png',
    'assets/images/sad_face.png',
    'assets/images/sad_face.png',
    'assets/images/sad_face.png',
    'assets/images/sad_face.png',
    'assets/images/sad_face.png',
    'assets/images/sad_face.png',
    'assets/images/sad_face.png',
    'assets/images/sad_face.png',
    'assets/images/sad_face.png',
  ];

  int selectedMood = 0;

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
            itemCount: emoji.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedMood = index;
                  });
                },
                child: Container(
                  decoration: selectedMood == index
                      ? BoxDecoration(
                          borderRadius: BorderRadius.circular(32),
                          border: Border.all(
                            color: Theme.of(context).colorScheme.primary,
                            width: 3,
                          ),
                        )
                      : null,
                  child: Center(
                    child: Image.asset(emoji[index]).marginAll(16),
                  ),
                ).marginAll(8),
              );
            },
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, childAspectRatio: 1))
      ],
    );
  }
}

import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({Key? key, required this.headerTitle, required this.onClickSeeAll}) : super(key: key);
  final String headerTitle;
  final VoidCallback onClickSeeAll;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Expanded(
              child: Text(
                headerTitle,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              )
          ),
          TextButton(
            onPressed: onClickSeeAll,
            child: Text(
              'See All',
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
          
              ),
            ),
          )

        ],
      ),
    );
  }
}

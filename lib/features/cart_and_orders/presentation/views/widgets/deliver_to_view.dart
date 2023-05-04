import 'package:flutter/material.dart';

class DeliverToView extends StatelessWidget {
  const DeliverToView({Key? key}) : super(key: key);

  onClickDeliverAddress(){

  }
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(32),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Deliver to',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),
              ),
            ),
            const Divider(thickness: 1.5,),
            const SizedBox(height: 8),
            Row(
              children: [
                Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Theme.of(context).colorScheme.primary,
                      border: Border.all(
                          color: Theme.of(context).colorScheme.shadow,
                        width: 7.0
                      )
                    ),
                    child: const Icon(
                        Icons.location_on_rounded,
                      color: Colors.white,
                    )
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Home',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),
                      ),
                      Text(
                        'Times Square NYC , Manhattan',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 14
                        ),
                      )
                    ],
                  ),
                ),
                IconButton(
                  onPressed: onClickDeliverAddress,
                  icon: const Icon(Icons.arrow_forward_ios),
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.zero,
                )
              ],
            )
          ],
        ),
      ),
    );

  }
}

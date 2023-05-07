import 'package:flutter/material.dart';
import 'package:size_config/size_config.dart';

class OrdersAppBar extends StatelessWidget implements PreferredSizeWidget {
  const OrdersAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.only(top: 16, left: 24),
        child: SizedBox(
            width: 24,
            height: 24,
            child: Image.asset('assets/images/logo_foodu.png')),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      title: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Text(
          'Orders',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
      elevation: 0,
      leadingWidth: 56.w,
      bottom: TabBar(
        tabs: const [
          Tab(text: 'Active'),
          Tab(text: 'Completed'),
          Tab(text: 'Cancelled'),
        ],
        labelColor: Theme.of(context).colorScheme.primary,
        unselectedLabelColor: Theme.of(context).colorScheme.onSurfaceVariant,
        labelStyle: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        indicator: UnderlineTabIndicator(
          borderRadius: BorderRadius.circular(24),
          borderSide: BorderSide(
              color: Theme.of(context).colorScheme.primary, width: 2.5),
        ),
        indicatorPadding: const EdgeInsets.symmetric(horizontal: 8),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(108);
}

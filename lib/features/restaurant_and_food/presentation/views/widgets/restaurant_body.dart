import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodu/features/restaurant_and_food/presentation/manger/menus_controller.dart';
import 'package:foodu/features/restaurant_and_food/presentation/manger/restaurant_controller.dart';
import 'package:foodu/features/restaurant_and_food/presentation/states/food_state.dart';
import 'package:foodu/features/restaurant_and_food/presentation/states/menu_state.dart';
import 'package:get/get.dart';

import '../../models/restaurant_ui.dart';
import 'menu_item.dart';

class RestaurantBody extends StatelessWidget {
  RestaurantBody({Key? key}) : super(key: key);

  final RestaurantController controller = Get.find();

  Widget getWidgetState(RestaurantState state, BuildContext context) {
    switch (state.runtimeType) {
      case LoadingRestaurantState:
        {
          return const Center(child: CircularProgressIndicator());
        }
      case LoadedRestaurantState:
        {
          return onLoadedData(context, (state as LoadedRestaurantState).data);
        }
      case FailRestaurantState:
        {
          return Center(
              child: SvgPicture.asset(
            'assets/svg/fail.svg',
            semanticsLabel: '',
          ));
        }
      default:
        {
          return Container();
        }
    }
  }

  Widget onLoadedData(BuildContext context, RestaurantUi data) {
    return Stack(children: [
      Positioned(
        child: ListView(padding: const EdgeInsets.all(0), children: [
          SizedBox(
            height: 434,
            width: double.infinity,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.network(
                  data.imageUrl,
                  fit: BoxFit.fitWidth,
                ),
                Container(
                  color: Colors.black.withOpacity(0.2),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                Row(
                  children: [
                    Text(
                      data.name,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: Theme.of(context).colorScheme.onBackground,
                    )
                  ],
                ),
                const SizedBox(height: 16),
                const Divider(thickness: 1.5),
                const SizedBox(height: 16),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Color(0xFFF9A417),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      data.rating,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      data.numberOfReviews,
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge
                          ?.copyWith(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: Theme.of(context).colorScheme.onBackground,
                    )
                  ],
                ),
                const SizedBox(height: 16),
                const Divider(thickness: 1.5),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_rounded,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      data.distance,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: Theme.of(context).colorScheme.onBackground,
                    )
                  ],
                ),
                const SizedBox(height: 16),
                const Divider(thickness: 1.5),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Icon(
                      Icons.event_available,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      data.offersState,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: Theme.of(context).colorScheme.onBackground,
                    )
                  ],
                ),
                const SizedBox(height: 16),
                const Divider(thickness: 1.5),
                const SizedBox(height: 20),
                handleMenuState(context)
              ],
            ),
          ),
        ]),
      ),
      Positioned(
          right: 24,
          left: 24,
          top: 72,
          child: Row(
            children: [
              GestureDetector(
                onTap: () => {Navigator.of(context).pop()},
                child: SvgPicture.asset(
                  'assets/svg/back_arrow.svg',
                  colorFilter:
                      const ColorFilter.mode(Colors.white70, BlendMode.srcIn),
                  semanticsLabel: 'Label',
                  width: 28,
                  height: 28,
                ),
              ),
              const Spacer(),
              SvgPicture.asset(
                'assets/svg/heart.svg',
                colorFilter: ColorFilter.mode(
                    data.favoriteColor, //TODO LATER MAKE IT correct it later
                    BlendMode.srcIn),
                semanticsLabel: 'Label',
                width: 24,
                height: 24,
              ),
              const SizedBox(width: 16),
              SvgPicture.asset(
                'assets/svg/sent.svg',
                colorFilter:
                    const ColorFilter.mode(Colors.white70, BlendMode.srcIn),
                semanticsLabel: 'Label',
                width: 24,
                height: 24,
              )
            ],
          )),
    ]);
  }

  Widget handleMenuState(BuildContext context) {
    return GetX<RestaurantMenusController>(
      init: RestaurantMenusController()..getMenus(),
      builder: (controller) => menus(context, controller.state.value),
    );
  }

  Widget menus(BuildContext context, MenuState state) {
    if (state is LoadedMenuState) {
      return ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 8),
        itemCount: state.data.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  state.data[index].title,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                ListView.builder(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    itemCount: state.data[index].items.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, mealIndex) {
                      return MenuItem(meal: state.data[index].items[mealIndex]);
                    }),
                const SizedBox(height: 20),
              ]);
        },
      );
    } else {
      return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
        color: Theme.of(context).colorScheme.background,
        child: getWidgetState(controller.state.value, context)));
  }
}

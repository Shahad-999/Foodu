import 'package:foodu/features/restaurant_and_food/domain/models/restaurant.dart';

import '../../features/restaurant_and_food/domain/models/menu.dart';

const Restaurant fakeOpenRestaurant = Restaurant(
    id: '1',
    isFavorite: true,
    name: 'Big Garden Salad',
    rating: 4.8,
    numberOfReviews: 4.4,
    distance: 2.4,
    deliveryCost: 2.00,
    isOpen: true,
    imageUrl: 'https://images.unsplash.com/photo-1590846406792-0adc7f938f1d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=385&q=80'
);

const Restaurant fakeCloseRestaurant = Restaurant(
    id: '1',
    isFavorite: false,
    imageUrl: 'https://images.unsplash.com/photo-1590846406792-0adc7f938f1d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=385&q=80',
    name: 'Big Garden Salad',
    rating: 4.8,
    numberOfReviews: 4.4,
    distance: 2.4,
    deliveryCost: 2.00,
    isOpen: false,
);

const List<Menu> menus = [
    Menu(
        'Menu',
        [
            Meal('1', 'Mixed Salad Bo', 6.00, ''),
            Meal('2', 'Mixed Salad Bo', 6.00, ''),
            Meal('3', 'Mixed Salad Bo', 6.00, ''),
            Meal('4', 'Mixed Salad Bo', 6.00, ''),
        ]
    ),
    Menu(
        'Drinks',
        [
            Meal('1', 'Water', 1.00, ''),
            Meal('2', 'Juice', 3.00, ''),
        ]
    ),
];
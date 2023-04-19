import 'package:foodu/features/restaurant_and_food/domain/models/restaurant.dart';

const Restaurant fakeOpenRestaurant = Restaurant(
    id: '1',
    isFavorite: true,
    name: 'Big Garden Salad',
    rating: 4.8,
    numberOfReviews: 4.4,
    distance: 2.4,
    deliveryCost: 2.00,
    isDeliveryAvailable: true,
    isOpen: true,
    imageUrl: ''
);

const Restaurant fakeCloseRestaurant = Restaurant(
    id: '1',
    isFavorite: true,
    imageUrl: '',
    name: 'Big Garden Salad',
    rating: 4.8,
    numberOfReviews: 4.4,
    distance: 2.4,
    deliveryCost: 2.00,
    isDeliveryAvailable: false,
    isOpen: false,
);
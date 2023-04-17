import '../domain/models/category.dart';
import '../domain/models/meal.dart';
import '../domain/models/special_offer.dart';

const List<Category> foodCategories = [
  Category(
      id: "1",
      name: "Noodles",
      imageUrl:
          "https://cdn.pixabay.com/photo/2018/12/24/19/28/japanese-noodles-3893449_960_720.png"),
  Category(
      id: "2",
      name: "Snacks",
      imageUrl:
          "https://cdn.pixabay.com/photo/2014/12/21/23/39/fruit-575762_960_720.png"),
  Category(
      id: "3",
      name: "Pizza",
      imageUrl:
          "https://cdn.pixabay.com/photo/2013/07/13/09/36/pizza-155771_960_720.png"),
  Category(
      id: "4",
      name: "Desserts",
      imageUrl:
          "https://cdn.pixabay.com/photo/2016/04/01/09/41/cherry-1299509_960_720.png"),
  Category(
      id: "5",
      name: "Fruits",
      imageUrl:
          "https://cdn.pixabay.com/photo/2013/07/13/11/29/cherries-158241_960_720.png"),
  Category(
      id: "6",
      name: "Vegetables",
      imageUrl:
          "https://cdn.pixabay.com/photo/2014/12/21/23/30/broccoli-575500_960_720.png"),
  Category(
      id: "7",
      name: "Meat",
      imageUrl:
          "https://cdn.pixabay.com/photo/2013/07/12/14/47/meat-148789_960_720.png"),
  Category(
      id: "8",
      name: "Seafood",
      imageUrl:
          "https://cdn.pixabay.com/photo/2012/04/12/12/23/sushi-29791_960_720.png"),
  Category(
      id: "9",
      name: "Spices",
      imageUrl:
          "https://images.unsplash.com/photo-1579510071315-802f2733b3cc?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80"),
  Category(
      id: "10",
      name: "Bakery",
      imageUrl:
          "https://images.unsplash.com/photo-1582113542582-7d9c9a6766e1?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80"),
  Category(
      id: "11",
      name: "Breakfast",
      imageUrl:
          "https://images.unsplash.com/photo-1548543603-1a90b9d0b2c2?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80"),
  Category(
      id: "12",
      name: "Lunch",
      imageUrl:
          "https://images.unsplash.com/photo-1557954345-bb367928fcab?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80"),
  Category(
      id: "13",
      name: "Dinner",
      imageUrl:
          "https://images.unsplash.com/photo-1562604467-238959c3b3a3?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80"),
  Category(
      id: "14",
      name: "Fast Food",
      imageUrl:
          "https://images.unsplash.com/photo-1560589878-787d68b672f1?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80"),
  Category(
      id: "15",
      name: "Healthy",
      imageUrl:
          "https://images.unsplash.com/photo-1507721864687-05392a8ea0ae?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80"),
  Category(
      id: "16",
      name: "Comfort Food",
      imageUrl:
          "https://images.unsplash.com/photo-1546069907-efc191b4b05a?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80"),
  Category(
      id: "17",
      name: "International Cuisine",
      imageUrl:
          "https://images.unsplash.com/photo-1600782660732-58d0cf3f27c9?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80"),
  Category(
      id: "18",
      name: "Barbecue",
      imageUrl:
          "https://images.unsplash.com/photo-1559847844-531569b93631?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80"),
  Category(
      id: "19",
      name: "Soups",
      imageUrl:
          "https://images.unsplash.com/photo-1589984426346-a0a9a90e7529?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80"),
  Category(
      id: "20",
      name: "Sandwiches",
      imageUrl:
          "https://images.unsplash.com/photo-1603972012955-98d7118de7c9?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80"),
];

const List<SpecialOffer> fakeSpecialOffers = [
  SpecialOffer(
    id: '1',
    imageUrl:
        'https://pixabay.com/get/g8d6b3f1412a9c87a7a3fe39e6bc3c47245ed9de6bfa3f4c936c91a83f2b3e18c17bcb7d0e72e74db49dfbd7bae63c530ac285e4f4a8e9696847b3fa7342eff8f77541c8ee73e24c7dce730edddd0ec5c_1920.png',
    percentage: 10,
  ),
  SpecialOffer(
    id: '2',
    imageUrl:
        'https://freepngimg.com/thumb/salad/23962-5-salad-transparent-background.png',
    percentage: 20,
  ),
  SpecialOffer(
    id: '3',
    imageUrl:
        'https://pixabay.com/get/gcd601e7372e2489e170e21d4e1803a9b7c85eb18ccc7097b3945309d93aba717d17186ec7ac3d0f7975738eed62ca2efdb829dde695eab0ce1f0ff77eaec49f16fef8b091cede5014f3b9da05e3090bd_1920.png',
    percentage: 15,
  ),
  SpecialOffer(
    id: '4',
    imageUrl:
        'https://i.ibb.co/SwW1LZP/Daco-1156302.png',
    percentage: 5,
  ),
  SpecialOffer(
    id: '5',
    imageUrl:
        'https://images.unsplash.com/photo-1585098264685-5e5f5da38db5?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80',
    percentage: 25,
  ),
  SpecialOffer(
    id: '6',
    imageUrl:
        'https://images.unsplash.com/photo-1533651705339-8f7a8e1e1b1a?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80',
    percentage: 30,
  ),
  SpecialOffer(
    id: '7',
    imageUrl:
        'https://images.unsplash.com/photo-1584361851221-8801c49ef793?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80',
    percentage: 12,
  ),
  SpecialOffer(
    id: '8',
    imageUrl:
        'https://images.unsplash.com/photo-1568308140230-16c289a2ca97?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80',
    percentage: 8,
  ),
];

const List<Meal> fakeRecommendedMeal = [
  Meal(
    id: '1',
    name: 'Grilled Chicken',
    imageUrl: 'https://i.ibb.co/SwW1LZP/Daco-1156302.png',
    rating: 4.5,
    isFavorite: true,
    distance: '2 km',
    price: 15.99,
    deliveryCost: 2.99,
    numberOfUpvote: 50,
    categoryId: '1',
    isDiscount: false,
  ),
  Meal(
    id: '2',
    name: 'Spicy Tuna Roll',
    imageUrl: 'https://i.ibb.co/Q96g2dq/Daco-133440.png',
    rating: 4.7,
    isFavorite: false,
    distance: '3 km',
    price: 10.99,
    deliveryCost: 1.99,
    numberOfUpvote: 30,
    categoryId: '2',
    isDiscount: false,
  ),
  Meal(
    id: '3',
    name: 'Margherita Pizza',
    imageUrl: 'https://i.ibb.co/0mPTXF8/Daco-5211946.png',
    rating: 4.8,
    isFavorite: true,
    distance: '4 km',
    price: 12.99,
    deliveryCost: 2.49,
    numberOfUpvote: 40,
    categoryId: '3',
    isDiscount: false,
  ),
  Meal(
    id: '4',
    name: 'Beef Burger',
    imageUrl: 'https://i.ibb.co/5Y7QyjT/Daco-2472126.png',
    rating: 4.6,
    isFavorite: false,
    distance: '5 km',
    price: 8.99,
    deliveryCost: 1.99,
    numberOfUpvote: 25,
    categoryId: '4',
    isDiscount: false,
  ),
  Meal(
    id: '5',
    name: 'Miso Soup',
    imageUrl: 'https://img.freepik.com/premium-vector/dla-interneta_130388-3885.jpg?w=740',
    rating: 4.4,
    isFavorite: true,
    distance: '1 km',
    price: 4.99,
    deliveryCost: 0.99,
    numberOfUpvote: 20,
    categoryId: '5',
    isDiscount: false,
  ),
  Meal(
    id: '6',
    name: 'Pesto Pasta',
    imageUrl: 'https://img.freepik.com/free-vector/hand-drawn-italian-cuisine-illustration_23-2149330365.jpg?w=740&t=st=1681472682~exp=1681473282~hmac=ed38ec25788e46f79c2b35af81826ccab1df42b7657eaf257030a30f81d98ecb',
    rating: 4.9,
    isFavorite: false,
    distance: '2.5 km',
    price: 11.99,
    deliveryCost: 1.99,
    numberOfUpvote: 35,
    categoryId: '6',
    isDiscount: false,
  ),
  Meal(
    id: '7',
    name: 'Fish and Chips',
    imageUrl: 'https://cdn-icons-png.flaticon.com/512/490/490515.png?w=740&t=st=1681472758~exp=1681473358~hmac=a6dd2e33b2dd776689e2a305d5cc2f4b194a206297e82e1a0f0884c0206b0c51',
    rating: 4.3,
    isFavorite: false,
    distance: '6 km',
    price: 14.99,
    deliveryCost: 2.99,
    numberOfUpvote: 45,
    categoryId: '7',
    isDiscount: false,
  )
];

const List<Meal> fakeDiscountMeals = [
  Meal(
    id: '1',
    name: 'Grilled Chicken',
    imageUrl: 'https://images.unsplash.com/photo-1519681393784-d120267933ba',
    rating: 4.5,
    isFavorite: true,
    distance: '2 km',
    price: 15.99,
    deliveryCost: 2.99,
    numberOfUpvote: 50,
    categoryId: '1',
    isDiscount: true,
  ),
  Meal(
    id: '2',
    name: 'Spicy Tuna Roll',
    imageUrl: 'https://images.unsplash.com/photo-1540774451547-2c7076dc84a7',
    rating: 4.7,
    isFavorite: false,
    distance: '3 km',
    price: 10.99,
    deliveryCost: 1.99,
    numberOfUpvote: 30,
    categoryId: '2',
    isDiscount: true,
  ),
  Meal(
    id: '3',
    name: 'Margherita Pizza',
    imageUrl: 'https://images.unsplash.com/photo-1612711068278-9a27c5db619e',
    rating: 4.8,
    isFavorite: true,
    distance: '4 km',
    price: 12.99,
    deliveryCost: 2.49,
    numberOfUpvote: 40,
    categoryId: '3',
    isDiscount: true,
  ),
  Meal(
    id: '4',
    name: 'Beef Burger',
    imageUrl: 'https://images.unsplash.com/photo-1586871986469-15a19d65465e',
    rating: 4.6,
    isFavorite: false,
    distance: '5 km',
    price: 8.99,
    deliveryCost: 1.99,
    numberOfUpvote: 25,
    categoryId: '4',
    isDiscount: true,
  ),
  Meal(
    id: '5',
    name: 'Miso Soup',
    imageUrl: 'https://images.unsplash.com/photo-1543168123-3ce3d2fefb77',
    rating: 4.4,
    isFavorite: true,
    distance: '1 km',
    price: 4.99,
    deliveryCost: 0.99,
    numberOfUpvote: 20,
    categoryId: '5',
    isDiscount: true,
  ),
  Meal(
    id: '6',
    name: 'Pesto Pasta',
    imageUrl: 'https://images.unsplash.com/photo-1615470699787-64d717b1cc7c',
    rating: 4.9,
    isFavorite: false,
    distance: '2.5 km',
    price: 11.99,
    deliveryCost: 1.99,
    numberOfUpvote: 35,
    categoryId: '6',
    isDiscount: true,
  ),
  Meal(
    id: '7',
    name: 'Fish and Chips',
    imageUrl: 'https://images.unsplash.com/photo-1609318619077-8b41720f17c6',
    rating: 4.3,
    isFavorite: false,
    distance: '6 km',
    price: 14.99,
    deliveryCost: 2.99,
    numberOfUpvote: 45,
    categoryId: '7',
    isDiscount: true,
  )
];

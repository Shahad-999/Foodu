<h1 align="center">Foodu Application</h1>
<p align="center">  
<i>“Feast your eyes, then satisfy your cravings. Order now, indulge late” <i>

<p align="center">This is a Flutter app that transforms food delivery. Explore, order, and savor restaurant delights from your home</p>
</p>

## Dependencies/Tools :
- [get_it](https://pub.dev/packages/get_it) : Simple Service Locator for Dart and Flutter projects.
- [get](https://pub.dev/packages/get) : A package that simplifies dependency injection in Dart and Flutter.
- [dartz](https://pub.dev/packages/dartz) : Functional programming in Dart, including Option, Either, and more.
- [dio](https://pub.dev/packages/dio) : A powerful HTTP client for Dart, providing features like interceptors, FormData, and more.
- [cached_network_image](https://pub.dev/packages/cached_network_image) : A Flutter package for caching and displaying images from the network.
- [Repository Pattern](https://medium.com/@pererikbergman/repository-design-pattern-e28c0f3e4a30): Implementation of the repository pattern for managing data access and separation of concerns in Flutter applications.
- [Clean Architecture](https://medium.com/ruangguru/an-introduction-to-flutter-clean-architecture-ae00154001b0):Clean Architecture promotes modular, testable, and maintainable code through the separation of concerns and independent layers of abstraction.

  
## Features :

- Explore a wide variety of food and restaurants.
- Search for specific cuisines, dishes, or restaurants.
- View detailed information about restaurants, including menus, reviews, and ratings.
- Track the status of food orders in real-time.
- Provide feedback and ratings for restaurants and delivery services.
- Discover new restaurants and trending food options.
- Access additional features such as  discounts.
- User-friendly interface for a smooth and intuitive food ordering process.

## FoodU API

The FoodU API provides endpoints for exploring food categories, managing the cart, retrieving meal details, updating the profile, and interacting with restaurants. It allows users to browse meals, add them to the cart, place orders, and manage their profile information.

<h3 >Endpoints</h3>

### Explore

- **GET `/categories`**: Retrieves all food categories.
- **GET `/recommended`**: Retrieves a list of recommended meals.
- **GET `/discount`**: Retrieves a list of meals with discount offers.
- **GET `/category/{category_id}`**: Retrieves meals belonging to a specific category.
- **GET `/search/{keyword}`**: Searches meals by keyword.
- **GET `/specialOffer`**: Retrieves a list of meals with special offers.

### Cart

- **GET `/cart`**: Retrieves the items in the cart.
- **GET `/orderSummary/{order_id}`**: Retrieves the summary of an order.
- **GET `/orders/cancelled`**: Retrieves a list of cancelled orders.
- **GET `/orders/completed`**: Retrieves a list of completed orders.
- **GET `/orders/active`**: Retrieves a list of active orders.
- **POST `/sentOrder`**: Adds a new order to the cart.
- **POST `/cancelOrder`**: Cancels an order.
- **POST `/orderReview`**: Submits a review for an order.
- **POST `/rating/{type}`**: Submits a rating for an order.

### Meal

- **GET `/meal/{meal_id}`**: Retrieves details of a meal.
- **POST `/addToCart`**: Adds a meal to the cart.

### Profile

- **GET `/profile`**: Retrieves the profile details.
- **POST `/profile/update`**: Updates the profile details.
- **GET `/address`**: Retrieves the address details.

### Restaurant

- **GET `/restaurant/{restaurantId}`**: Retrieves details of a restaurant.
- **GET `/menus/{restaurantId}`**: Retrieves the menus of a restaurant.

  


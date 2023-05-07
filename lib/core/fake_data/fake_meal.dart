import 'package:foodu/features/cart_and_orders/domain/models/order_summary.dart';
import 'package:foodu/features/meal/domain/models/meal_details.dart';

const MealDetails fakeMealDetails = MealDetails(
    id: '1',
    name: 'Mixed vegetable salad',
    description: 'This vegetable salad is a healthy and delicious summer salad made with fresh raw veggies,avocado, nuts, seeds. herbs and feta in a light.',
    imageUrl: 'https://img.freepik.com/premium-vector/dla-interneta_130388-3885.jpg?w=740',
    price: 6.00
);

const OrderSummary fakeOrderSummary = OrderSummary(
    id: '1',
    orders: [
      mealOrder,
      mealOrder,
      mealOrder,
      mealOrder
    ],
    subtotal: 24.00,
    deliveryFee: 2.00
);
const OrderMeal mealOrder = OrderMeal(
    id: '1',
    quantity: 2,
    name: 'Mixed vegetable salad',
    imageUrl: 'https://img.freepik.com/premium-vector/dla-interneta_130388-3885.jpg?w=740',
    price: 6.00
);
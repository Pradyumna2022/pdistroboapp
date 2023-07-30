
import '../widgets/counterWidget.dart';

class WishList{
  String image;
  String name;
  double price;
  bool selectedIcon;
  CounterIncDec? counter;
  bool? rating;

  WishList({
    required this.image,
    required this.name,
    required this.price,
    required this.selectedIcon,
    required this.counter,
    this.rating
  });
}


List<WishList> candysnack = [
  WishList(
    image: 'assets/images/seedbeez.png',
    name: "David Buffalo Style RanchSunflower Seeds",
    price: 24.99,
    selectedIcon: false,
    counter: CounterIncDec(),
  ),
  WishList(
      image: 'assets/images/candyim2.png',
      name: "Trolli, Squiggles , Gummy Candy (5 Ounce, 12 Count)",
      price: 24.49,
      selectedIcon: false,
      counter: CounterIncDec()
  ),
  WishList(
      image: 'assets/images/candyim3.png',
      name: "Chex Mix Spicy Dill 4.25 Oz, 8 ct",
      price: 28.49,
      selectedIcon: false,
      counter: CounterIncDec()
  ),
  WishList(
      image: 'assets/images/candyim4.png',
      name: "Chex Mix Spicy Dill 4.25 Oz, 8 ct",
      price: 32.49,
      selectedIcon: false,
      counter: CounterIncDec()
  ),
  WishList(
      image: 'assets/images/candyim5.png',
      name: "Trident Sugar Free Gum Spearmint, 12/PK",
      price: 20.49,
      selectedIcon: false,
      counter: CounterIncDec()
  ),
];


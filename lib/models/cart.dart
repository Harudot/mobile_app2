import 'package:flutter/material.dart';
import 'package:my_app/models/shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sales
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Air Jordan 1 Low',
      price: '249',
      imagePath: 'lib/images/AIR+JORDAN+1+LOW.avif',
      description:
          'the Air Jordan 1 Low offers a clean, classic look that is  familiar yet always fresh. ',
    ),
    Shoe(
      name: 'Air Jordan 3 retro',
      price: '205',
      imagePath: 'lib/images/AIR+JORDAN+3+RETRO.avif',
      description: 'the AJ3 returns with all of its classic style and grace.',
    ),
    Shoe(
      name: 'Nike C1ty PRM',
      price: '115',
      imagePath: 'lib/images/NIKE+C1TY+PRM.avif',
      description:
          'Nike C1TY is engineered to walk .A CORDURA upper keeps the fit breathable',
    ),
    Shoe(
      name: 'NIke Dunk low Retro',
      price: '120',
      imagePath: 'lib/images/NIKE+DUNK+LOW+RETRO.avif',
      description:
          '80s b-ball icon returns with perfectly shined overlays and classic team colors',
    ),
    Shoe(
      name: 'Nike P-6000',
      price: '90',
      imagePath: 'lib/images/NIKE+P-6000.avif',
      description:
          'the Nike P-6000 features breathable mesh with horizontal and vertical overlays for a 2000s running look',
    ),
    Shoe(
      name: 'Nike Zoom VOMERO',
      price: '170',
      imagePath: 'lib/images/NIKE+ZOOM+VOMERO+5.avif',
      description:
          ' richly layered design pairs airy textiles with synthetic leather and plastic accents to create a complex upper',
    ),
  ];
  //list of items in cart
  List<Shoe> userCart = [];

  //get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items from card
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners(); // Notify listeners to update the UI
  }

  //remove items from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners(); // Notify listeners to update the UI
  }
}

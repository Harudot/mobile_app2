import 'package:flutter/material.dart';
import 'package:my_app/components/card_item.dart';
import 'package:my_app/models/cart.dart';
import 'package:my_app/models/shoe.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //heading
            const Text(
              'My Cart',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(height: 25),

            Expanded(
              child: ListView.builder(
                itemCount: value.getUserCart().length,
                itemBuilder: (context, index) {
                  //get individual shoe
                  Shoe IndividualShoe = value.getUserCart()[index];

                  //return the card item
                  return CardItem(shoe: IndividualShoe);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_app/components/shoe_tile.dart';
import 'package:my_app/models/cart.dart';
import 'package:my_app/models/shoe.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  //add shoe to cart
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

    //alert the user, shoe successfully added to cart
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Successfully Added'),
        content: Text('${shoe.name} has been added to your cart!'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          //serach bar
          Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Search', style: TextStyle(color: Colors.grey)),
                Icon(Icons.search, color: Colors.grey),
              ],
            ),
          ),
          //message
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Text(
              "everyone flies.. some fly longer that others",
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),

          //hot picks
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hot Picks 🔥',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  'See All',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),

          Expanded(
            child: ListView.builder(
              itemCount: 6,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                Shoe shoe = value.getShoeList()[index];
                //get  the shoe from shop list
                return ShoeTile(shoe: shoe, onTap: () => addShoeToCart(shoe));
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 25, left: 25, right: 25),
            child: Divider(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_app/models/cart.dart';
import 'package:my_app/models/shoe.dart';
import 'package:provider/provider.dart';

class CardItem extends StatefulWidget {
  Shoe shoe;
  CardItem({super.key, required this.shoe});

  @override
  State<CardItem> createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
  //remove item from cart
  void removeItemFromCrad() {
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagePath),
        title: Text(widget.shoe.name),
        subtitle: Text(widget.shoe.price),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          onPressed: removeItemFromCrad,
        ),
      ),
    );
  }
}

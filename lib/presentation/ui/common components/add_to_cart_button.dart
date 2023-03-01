import 'package:flutter/material.dart';

class AddToCartButton extends StatefulWidget {
  const AddToCartButton({
    Key? key,
  }) : super(key: key);

  @override
  State<AddToCartButton> createState() => _AddToCartButtonState();
}

class _AddToCartButtonState extends State<AddToCartButton> {
  bool isOnCart = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isOnCart = !isOnCart;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(2),
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                offset: Offset(0.0, 3.0),
                spreadRadius: 1.0,
                blurRadius: 6,
                color: Color.fromARGB(50, 12, 27, 13),
              )
            ],
            color:
                isOnCart ? Theme.of(context).colorScheme.primary : Colors.white,
            shape: BoxShape.circle),
        child: Icon(
          Icons.add,
          size: 20,
          color:
              isOnCart ? Colors.white : Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}

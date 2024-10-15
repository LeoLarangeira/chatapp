import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.buttonName, required this.onTap});
  final String buttonName;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ElevatedButton(
        onPressed: onTap,
        key: Key('key_$buttonName'),
        style: ElevatedButton.styleFrom(
            side: const BorderSide(color: Colors.white),
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
            backgroundColor: Theme.of(context).colorScheme.secondary),
        child: Text(
          buttonName,
          style: TextStyle(color: Theme.of(context).colorScheme.primary),
        ),
      ),
    );
  }
}


// return GestureDetector(
    //   onTap: onTap,
    //   child: Container(
    //     decoration: BoxDecoration(
    //         color: Theme.of(context).colorScheme.secondary,
    //         borderRadius: BorderRadius.circular(12)),
    //     padding: const EdgeInsets.all(25),
    //     margin: const EdgeInsets.symmetric(horizontal: 25),
    //     child: Center(
    //       child: Text(buttonName),
    //     ),
    //   ),
    // );
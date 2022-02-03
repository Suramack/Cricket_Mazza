import 'package:flutter/material.dart';

Future<dynamic> bottomSheet(BuildContext context, int index) {
  return showModalBottomSheet(
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    context: context,
    builder: (BuildContext context) => Container(
      height: 500,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),
      child: Center(
        child: index == 2
            ? const Text('Video Loading')
            : const Text('Details Loading'),
      ),
    ),
  );
}

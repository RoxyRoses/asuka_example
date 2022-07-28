import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: Colors.black,
      height: 20,
      thickness: 2,
      indent: 10,
      endIndent: 10,
    );
  }
}
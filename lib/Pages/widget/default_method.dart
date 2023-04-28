import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Default extends StatelessWidget {
  const Default({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        DefaultPaymentProfile(onTap: () {},
          text: 'kjdshsu',subText: 'gfghvh',),DefaultPaymentProfile(onTap: () {},
          text: 'kjdshsu',subText: 'gfghvh',),DefaultPaymentProfile(onTap: () {},
          text: 'kjdshsu',subText: 'gfghvh',),
      ],
    );
  }
}
//Refactored section for Default Method and Payment Profile
class DefaultPaymentProfile extends StatelessWidget {
  const DefaultPaymentProfile({
    required this.text,
    required this.onTap,
    required this.subText,
    super.key,
  });

  final String text;
  final String subText;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Text(
      text,
      style: Theme.of(context).textTheme.titleMedium,
    ),
    GestureDetector(
    onTap: onTap,
    child: Row(
    children: [
    Text(
    subText,
    style: Theme.of(context).textTheme.bodyLarge,
    ),
    const Icon(Icons.arrow_forward_ios_sharp, size: 20),
    ],
    ),
    ),
    ],
    );
    }
}
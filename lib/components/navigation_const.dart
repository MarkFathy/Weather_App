import 'package:flutter/material.dart';

void navigateTo(context,widget)=>Navigator.push(
  context,MaterialPageRoute(builder: (context)=>widget),
);
void navigateAndFinish(context,widget)=>Navigator.pushReplacement(
  context,MaterialPageRoute(builder: (context)=>widget),
);

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      child: const Card(
        // Customize the appearance of the card
        elevation: 1, // Sets the elevation (shadow) of the card
        margin: EdgeInsets.all(20), // Sets the margin around the card
        child: Column(
          children: [
          ],
        ),
      ),
    );
  }
}


class MyDivider extends StatelessWidget {
  const MyDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 20.0,
      color: Colors.grey,
      thickness: 0.3,
      indent: 25,
      endIndent: 25,
    );
  }
}

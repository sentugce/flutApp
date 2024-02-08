import 'package:flutter/material.dart';

class SlideItem extends StatelessWidget {
  final int index;
  const SlideItem(this.index, {super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Container(
              width: 500,
              height: 200,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  image: DecorationImage(
                      image: AssetImage("assets/images/maxresdefault.jpg"),
                      fit: BoxFit.cover)),
            ),
            /*   Text(
              "selam",
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 22
              ),
            ),
            Text(
              "açıklama",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 18
              ),
            ) */
          ],
       
     
    );
  }
}

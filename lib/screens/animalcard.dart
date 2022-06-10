import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sut_cepte_mobile_app/screens/counter.dart';

Widget animalCard(String img, String adi, int adet, BuildContext context) {
  Counter counter = Provider.of<Counter>(context);
  adet = counter.counter.toInt();
  return Container(
    child: Card(
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              img,
              height: 100.0,
            ),
            SizedBox(
              height: 8.0,
            ),
            Flexible(
              child: Text(
                adi,
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: Text(
                "${adet} Adet",
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: IconButton(
                    onPressed: () {
                      counter.increment();
                    },
                    icon: Icon(
                      Icons.add,
                      color: Colors.black,
                    ),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    onPressed: () {
                      if (adet > 0) {
                        counter.decrement();
                      }
                    },
                    icon: Icon(
                      Icons.remove,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ),
  );
}

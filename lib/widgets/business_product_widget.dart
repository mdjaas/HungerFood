import 'package:flutter/material.dart';

class BusinessProductWidget extends StatelessWidget {

  final String? heading;
  final String? postingDay;
  final String? desc;
  final String? price;

  const BusinessProductWidget({
    super.key,
    this.heading,
    this.postingDay,
    this.desc,
    this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width,
      height: 120,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/food.png',
            width: 120,
            height: 200,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Posted "+postingDay!,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    Text(
                    heading ?? '',
                    style: TextStyle(fontSize: 20),
                    ),
                    Text("Rs."+ price!,
                      style: TextStyle(fontSize: 20),
                    )
                  ]
                ),

                SizedBox(height: 10), // Adjust the height as needed
                Text(
                  desc?? '',
                  style: TextStyle(fontSize: 18),
                ),
                // Add more text widgets or other widgets as needed
              ],
            ),
          ),
        ],
      ),
    );
  }
}

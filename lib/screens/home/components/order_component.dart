import 'package:flutter/material.dart';

class OrderComponent extends StatefulWidget {
  Map<String,dynamic> order;
  OrderComponent({super.key, required this.order});

  @override
  State<OrderComponent> createState() => _OrderComponentState();
}

class _OrderComponentState extends State<OrderComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0,right: 10.0),
      width: 320.0,
      decoration: BoxDecoration(
        color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(width: 1.0, color: Colors.grey.shade200)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child:  Image(
              image: AssetImage(widget.order['image']),
              height: 100.0,
              width: 100.0,
              fit: BoxFit.cover,
            ),
          ),
         const SizedBox(width: 10.0,),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.order['name'],
                  style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      ),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                 Text(
                  widget.order['restaurant_name'],
                  style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                 Text(
                  widget.order['date'],
                  style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600),
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 10.0),
            decoration: BoxDecoration(
                color: Colors.deepOrangeAccent,
                borderRadius: BorderRadius.circular(30.0)),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add,
                  size: 30.0,
                  color: Colors.white,
                )),
          )
        ],
      ),
    );
  }
}

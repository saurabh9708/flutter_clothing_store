// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_string_interpolations

import 'package:drop_shadow/drop_shadow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clothing_store/models/product_model.dart';

class DetailPage extends StatefulWidget {
  final ProductModel product;
  const DetailPage({super.key, required this.product});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int selectedImage = 0;
  int? selectedColor;
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Details",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 32),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            margin: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(20),
                )),
            child: Row(
              children: [
                Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.black,
                )
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Hero(
                  tag: widget.product.name,
                  child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                          color: Colors.grey, shape: BoxShape.circle),
                      child: DropShadow(
                          blurRadius: 5,
                          offset: Offset(5, 5),
                          child: AspectRatio(
                              aspectRatio: 1,
                              child: Image.asset(
                                "${widget.product.images[selectedImage]}",
                                colorBlendMode: BlendMode.modulate,
                                // color: selectedColor != null
                                //? availableColors[selectedColor!] : Colors.transparent,
                              )))),
                ),
                Positioned(
                    right: 35,
                    bottom: 5,
                    child: Icon(Icons.favorite_border_rounded))
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                  widget.product.images.length,
                  (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedImage = index;
                          });
                        },
                        child: Container(
                          margin: index == 0
                              ? EdgeInsets.only()
                              : EdgeInsets.only(right: 10),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(10)),
                          height: 50,
                          width: 50,
                          child: Image.asset("${widget.product.images[index]}"),
                        ),
                      ))
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        widget.product.name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 26,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '\$₹{widget.product.price}',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
              // Row(
              //   children: [
              //     ...List.generate(
              //         availableColors.length,
              //         (index) => GestureDetector(
              //               onTap: () {
              //                 setState(() {
              //                   selectedColor = index;
              //                 });
              //               },
              //               child: Container(
              //                 padding: EdgeInsets.all(5),
              //                 margin: index == 0
              //                     ? EdgeInsets.only()
              //                     : EdgeInsets.only(left: 5),
              //                 decoration: BoxDecoration(
              //                   borderRadius: BorderRadius.circular(20),
              //                   border: Border.all(
              //                       color: index == selectedColor
              //                           ? availableColors[index]
              //                           : Colors.transparent),
              //                 ),
              //                 child: Container(
              //                   height: 60,
              //                   width: 30,
              //                   decoration: BoxDecoration(
              //                       color: availableColors[index],
              //                       borderRadius: BorderRadius.circular(15)),
              //                 ),
              //               ),
              //             ))
              //   ],
              // )
            ],
          ),
          SizedBox(height: 20),
          Text(
            'The Simpler you will be , The Stylist You will Be.',
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      offset: Offset.zero,
                      blurRadius: 5,
                      spreadRadius: 5)
                ]),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      GestureDetector(
                          onTap: () {
                            if (quantity > 1) {
                              setState(() {
                                quantity--;
                              });
                            }
                          },
                          child: Icon(Icons.remove)),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              quantity++;
                            });
                          },
                          child: Icon(Icons.add)),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Row(
                  children: [
                    Text(
                      'QTY',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.2),
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '$quantity',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 60,
                    vertical: 20,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: Text(
                      "Add To Bag",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

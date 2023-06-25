import 'package:flutter/material.dart';
import 'package:istad_project_ecommerce/constants.dart';

import '../../models/Product.dart';
import '../add_cart/add_cart.dart';

class SaveCartScreen extends StatefulWidget {
  const SaveCartScreen({super.key});

  @override
  State<SaveCartScreen> createState() => _SaveCartScreenState();
}

class _SaveCartScreenState extends State<SaveCartScreen> {
  @override
  void initState() {
    super.initState();

    bookmarkedItem = bookmarkedItem.toSet().toList();
  }

  late int totalAmount;

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    int? selectedItem = 1;
    totalAmount = 0;
    // for (var element in cartItem) {
    //   // totalAmount += element.price* element.selectedItem;
    //   totalAmount += element.price * 1;

    // }
    for (var element in bookmarkedItem) {
      totalAmount += element.price * element.selectedItem;
    }

    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        title: const Text(
          "Producs Save",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: cartProducts
              .map<Widget>((e) => GestureDetector(
                    // onTap: () {
                    //   Navigator.of(context).push(
                    //     MaterialPageRoute(
                    //       builder: (context) => ProductDetailsPage(
                    //         product: e,
                    //       ),
                    //     ),
                    //   );
                    // },
                    child: Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 240, 238, 238)
                              .withOpacity(0.5),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(25),
                          ),
                        ),

                        // height: 300,
                        width: double.infinity,
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 200,
                                    width: 175,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(25),
                                      ),
                                    ),
                                    // child: Image.network(
                                    //   e.productImage,
                                    //   width: 200,
                                    //   height: 200,
                                    //   fit: BoxFit.fitHeight,
                                    // ),
                                    child: Image.network(
                                      e.attributes.category.data.attributes
                                          .iconUrl,
                                      width: 200,
                                      height: 200,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "${e.attributes.price}-\$",
                                    style: const TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  // ignore: unnecessary_string_interpolations
                                  Text("${e.attributes.title}",
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                      textAlign: TextAlign.center),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (context) => Dialog(
                                                shape:
                                                    const RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    25))),
                                                clipBehavior: Clip.antiAlias,
                                                child: Container(
                                                  height: 300,
                                                  decoration:
                                                      const BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(
                                                        25,
                                                      ),
                                                    ),
                                                  ),
                                                  child: const SingleChildScrollView(
                                                      // child: Column(
                                                      //   children: e
                                                      //       .productDescription
                                                      //       .map<Widget>(
                                                      //           (e) => ListTile(
                                                      //                 title: Text(
                                                      //                     "${e[0]}"),
                                                      //                 subtitle: Text(
                                                      //                     "${e[1]}"),
                                                      //               ))
                                                      //       .toList(),
                                                      // ),
                                                      ),
                                                ),
                                              ));
                                    },
                                    child: const Text("View Description"),
                                  ),
                                  // Text(
                                  //   "${e.selectedItem * e.price}-\$",
                                  //   style: const TextStyle(
                                  //       fontSize: 25,
                                  //       fontWeight: FontWeight.w500),
                                  // ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  // Row(
                                  //   mainAxisAlignment:
                                  //       MainAxisAlignment.spaceAround,
                                  //   children: [
                                  //     IconButton(
                                  //       onPressed: () {
                                  //         setState(() {
                                  //           if (e.selectedItem > 1) {
                                  //             e.selectedItem -= 1;
                                  //           }
                                  //         });
                                  //       },
                                  //       icon: const Icon(Icons.remove,
                                  //           color: Colors.red),
                                  //     ),
                                  //     Text(
                                  //       // ignore: unnecessary_string_interpolations
                                  //       "${e.selectedItem}",
                                  //       style: const TextStyle(
                                  //           fontSize: 25,
                                  //           fontWeight: FontWeight.w500),
                                  //     ),
                                  //     IconButton(
                                  //       onPressed: () {
                                  //         setState(
                                  //           () {
                                  //             e.selectedItem += 1;
                                  //           },
                                  //         );
                                  //       },
                                  //       icon: const Icon(Icons.add,
                                  //           color: Colors.green),
                                  //     ),
                                  //   ],
                                  // ),
                                  const SizedBox(
                                    height: defaulHighSizeBox,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      // cartItem.add(e);
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const AddCartScreen()),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.green,
                                      //shape: const StadiumBorder(),
                                    ),
                                    child: const Text("Add To Cart"),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        bookmarkedItem.remove(e);
                                      });
                                    },
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.red)),
                                    child: const Text("Unsave"),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )),
                  ))
              .toList(),
          // const Divider(
          //   thickness: 2,
          // ),
          // Text(
          //   "Total Amount  :  $totalAmount -US",
          //   style: const TextStyle(
          //       fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
          // ),
          // Text(
          //   "Total Product  :     ${cartItem.length}\n",
          //   style: const TextStyle(
          //       fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
          // ),
          // ElevatedButton(
          //   onPressed: () {
          //     setState(() {
          //       //cartItem.remove(e);
          //     });
          //   },
          //   style: ButtonStyle(
          //       backgroundColor: MaterialStateProperty.all(Colors.green)),
          //   child: const Text("Order All Product"),
          // ),
          // const Divider(
          //   thickness: 2,
          // )
        ),
      ),
    );
  }
}

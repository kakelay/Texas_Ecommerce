import 'package:flutter/material.dart';
import 'package:istad_project_ecommerce/constants.dart';

import 'package:istad_project_ecommerce/views/order_product/order_product.dart';

import '../../models/Product.dart';

class AddCartScreen extends StatefulWidget {
  const AddCartScreen({super.key});

  @override
  State<AddCartScreen> createState() => _AddCartScreenState();
}

class _AddCartScreenState extends State<AddCartScreen> {
  @override
  void initState() {
    super.initState();

    cartItem = cartItem.toSet().toList();
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
    cartItem.forEach((element) {
      totalAmount += element.price * element.selectedItem;
    });

    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        title: const Text(
          "Carts",
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
        centerTitle: false,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Column(
              children: cartProducts
                  .map<Widget>((e) => GestureDetector(
                        // onTap: () {
                        //   Navigator.of(context).push(
                        //     MaterialPageRoute(
                        //       builder: (context) => DetailsScreen(
                        //       product: ,
                        //       ),
                        //     ),
                        //   );
                        // },
                        child: Container(
                            margin: const EdgeInsets.all(5),
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                              color: Colors.white10,
                              borderRadius: BorderRadius.all(
                                Radius.circular(25),
                              ),
                            ),

                            // height: 300,
                            width: double.infinity,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                          e.attributes.category.data.attributes.iconUrl,
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
                                // Expanded(
                                //   child: Column(
                                //     mainAxisAlignment:
                                //         MainAxisAlignment.spaceEvenly,
                                //     children: [
                                //       TextButton(
                                //         onPressed: () {
                                //           showDialog(
                                //             context: context,
                                //             builder: (context) => Dialog(
                                //               shape:
                                //                   const RoundedRectangleBorder(
                                //                       borderRadius:
                                //                           BorderRadius.all(
                                //                               Radius.circular(
                                //                                   25))),
                                //               clipBehavior: Clip.antiAlias,
                                //               child: Container(
                                //                 height: 300,
                                //                 decoration: const BoxDecoration(
                                //                   borderRadius:
                                //                       BorderRadius.all(
                                //                     Radius.circular(
                                //                       25,
                                //                     ),
                                //                   ),
                                //                 ),
                                //                 child: const SingleChildScrollView(
                                //                     // child: Column(
                                //                     //   children: e
                                //                     //       .productDescription
                                //                     //       .map<Widget>(
                                //                     //           (e) => ListTile(
                                //                     //                 title: Text(
                                //                     //                     "${e[0]}"),
                                //                     //                 subtitle: Text(
                                //                     //                     "${e[1]}"),
                                //                     //               ))
                                //                     //       .toList(),
                                //                     // ),
                                //                     ),
                                //               ),
                                //             ),
                                //           );
                                //         },
                                //         child: const Text("View Description"),
                                //       ),
                                //       Text(
                                //         "${e.selectedItem * e.price}-\$",
                                //         style: const TextStyle(
                                //             fontSize: 25,
                                //             fontWeight: FontWeight.w500),
                                //       ),
                                //       const SizedBox(
                                //         height: 5,
                                //       ),
                                //       Row(
                                //         mainAxisAlignment:
                                //             MainAxisAlignment.spaceAround,
                                //         children: [
                                //           IconButton(
                                //             onPressed: () {
                                //               setState(() {
                                //                 if (e.selectedItem > 1) {
                                //                   e.selectedItem -= 1;
                                //                 }
                                //               });
                                //             },
                                //             icon: const Icon(Icons.remove,
                                //                 color: Colors.red),
                                //           ),
                                //           Text(
                                //             // ignore: unnecessary_string_interpolations
                                //             "${e.selectedItem}",
                                //             style: const TextStyle(
                                //                 fontSize: 25,
                                //                 fontWeight: FontWeight.w500),
                                //           ),
                                //           IconButton(
                                //             onPressed: () {
                                //               setState(
                                //                 () {
                                //                   e.selectedItem += 1;
                                //                 },
                                //               );
                                //             },
                                //             icon: const Icon(Icons.add,
                                //                 color: Colors.green),
                                //           ),
                                //         ],
                                //       ),
                                //       const SizedBox(
                                //         height: defaulHighSizeBox,
                                //       ),
                                //       ElevatedButton(
                                //         style: ButtonStyle(
                                //             backgroundColor:
                                //                 MaterialStateProperty.all(
                                //                     Colors.amber)),
                                //         onPressed: () {},
                                //         child: const Text("Order Product"),
                                //       ),
                                //       ElevatedButton(
                                //         onPressed: () {
                                //           setState(() {
                                //             cartItem.remove(e);
                                //           });
                                //         },
                                //         style: ButtonStyle(
                                //             backgroundColor:
                                //                 MaterialStateProperty.all(
                                //                     Colors.red)),
                                //         child: const Text("Remove from cart"),
                                //       ),
                                //     ],
                                //   ),
                                // )
                              ],
                            )),
                      ))
                  .toList(),
            ),

            const Divider(
              thickness: 2,
            ),
            // ),
            const SizedBox(
              height: defaulHighSizeBox * 2,
            ),
            Text(
              "Total Amount  :  $totalAmount -\$",
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Text(
              "Total Product  :     ${cartItem.length}\n",
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),

            /// order all products
            // ElevatedButton(
            //   onPressed: () {
            //     setState(() {
            //       //cartItem.remove(e);
            //     });
            //   },
            //   style: ButtonStyle(
            //       backgroundColor: MaterialStateProperty.all(Colors.redAccent)),
            //   child: const Text(
            //     "Order All Product",
            //     style: TextStyle(
            //       fontSize: 16,
            //     ),
            //   ),
            // ),
            const SizedBox(
              height: defaulHighSizeBox * 2,
            ),
            SizedBox(
              height: 60,
              width: 250,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OrderProductPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: const StadiumBorder(),
                ),
                child: const Text(
                  "Order All Product",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            const Divider(
              thickness: 2,
            ),
            const SizedBox(
              height: defaulHighSizeBox,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tutorbin_assessment/controller/restaurant_controller.dart';
import 'package:get/get.dart';

class RestaurantView extends StatefulWidget {
  const RestaurantView({Key? key}) : super(key: key);

  @override
  _RestaurantViewState createState() => _RestaurantViewState();
}

class _RestaurantViewState extends State<RestaurantView> {
  final RestaurantController restaurantController =
      Get.put(RestaurantController());

  @override
  void initState() {
    super.initState();
    restaurantController.readJson();
  }

  @override
  void dispose() {
    super.dispose();
    restaurantController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
          'Restaurant Menu',
        )),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(25),
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView(
                  children: [
                    restaurantController.cat1.isNotEmpty
                        ? ExpansionTile(
                            title: Row(
                              children: [
                                const Text('cat1'),
                                const Spacer(),
                                Text(restaurantController.cat1.length
                                    .toString()),
                              ],
                            ),
                            children: [
                              ListView.builder(
                                  scrollDirection: Axis.vertical,
                                  shrinkWrap: true,
                                  itemCount: restaurantController.cat1.length,
                                  itemBuilder: (context, index) {
                                    return Card(
                                        margin: const EdgeInsets.all(10),
                                        child: ListTile(
                                            title: Text(restaurantController
                                                .cat1[index]["name"]),
                                            subtitle: Text(restaurantController.cat1[index]["price"].toString()),
                                            trailing: SizedBox(
                                              width: 140,
                                              child: ElevatedButton(
                                                style: ButtonStyle(
                                                  backgroundColor: MaterialStateProperty.all<Color>(Colors.amberAccent),
                                                ) ,
                                                onPressed: () {
                                                  restaurantController.cat1SubItemQty[index]++;
                                                  setState(() {});
                                                  restaurantController.total += restaurantController.cat1[index]["price"];
                                                },
                                                child: restaurantController.cat1SubItemQty[index] == 0
                                                    ? const Text('Add')
                                                    : Row(
                                                        children: [
                                                          IconButton(
                                                            icon: const Icon(Icons
                                                                .remove_circle_outline),
                                                            iconSize: 20,
                                                            onPressed: () {
                                                              restaurantController.cat1SubItemQty[index]--;
                                                              restaurantController.total -= restaurantController.cat1[index]["price"];
                                                              setState(() {});
                                                            },
                                                          ),
                                                          Text(restaurantController
                                                              .cat1SubItemQty[
                                                                  index]
                                                              .toString()),
                                                          IconButton(
                                                            icon: const Icon(Icons
                                                                .add_circle_outline),
                                                            iconSize: 20,
                                                            onPressed: () {
                                                              restaurantController.cat1SubItemQty[index]++;
                                                              restaurantController.total += restaurantController.cat1[index]["price"] ;
                                                              setState(() {});
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                              ),
                                            )));
                                  }),
                            ],
                          )
                        : Container(),
                    restaurantController.cat2.isNotEmpty
                        ? ExpansionTile(
                            title: Row(
                              children: [
                                const Text('cat2'),
                                const Spacer(),
                                Text(restaurantController.cat2.length
                                    .toString()),
                              ],
                            ),
                            children: [
                              ListView.builder(
                                  scrollDirection: Axis.vertical,
                                  shrinkWrap: true,
                                  itemCount: restaurantController.cat2.length,
                                  itemBuilder: (context, index) {
                                    return Card(
                                        margin: const EdgeInsets.all(10),
                                        child: ListTile(
                                            title: Text(restaurantController
                                                .cat2[index]["name"]),
                                            subtitle: Text(restaurantController
                                                .cat2[index]["price"]
                                                .toString()),
                                            trailing: SizedBox(
                                              width: 140,
                                              child: ElevatedButton(
                                                  style: ButtonStyle(
                                                    backgroundColor: MaterialStateProperty.all<Color>(Colors.amberAccent),
                                                  ),
                                                onPressed: () {
                                                  restaurantController.cat2SubItemQty[index]++;
                                                  setState(() {});
                                                  restaurantController.total += restaurantController.cat2[index]["price"];
                                                },
                                                child: restaurantController.cat2SubItemQty[index] == 0
                                                    ? const Text('Add ')
                                                    : Row(
                                                        children: [
                                                          IconButton(
                                                            icon: const Icon(Icons
                                                                .remove_circle_outline),
                                                            iconSize: 20,
                                                            onPressed: () {
                                                              restaurantController.cat2SubItemQty[index]--;
                                                              restaurantController.total -= restaurantController.cat2[index]["price"] ;
                                                              setState(() {});
                                                            },
                                                          ),
                                                          Text(restaurantController
                                                              .cat2SubItemQty[
                                                                  index]
                                                              .toString()),
                                                          IconButton(
                                                            icon: const Icon(Icons
                                                                .add_circle_outline),
                                                            iconSize: 20,
                                                            onPressed: () {
                                                              restaurantController.cat2SubItemQty[index]++;
                                                              restaurantController.total += restaurantController.cat2[index]["price"];
                                                              setState(() {});
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                              ),
                                            )));
                                  }),
                            ],
                          )
                        : Container(),
                    restaurantController.cat3.isNotEmpty
                        ? ExpansionTile(
                            title: Row(
                              children: [
                                const Text('cat3'),
                                const Spacer(),
                                Text(restaurantController.cat3.length
                                    .toString()),
                              ],
                            ),
                            children: [
                              ListView.builder(
                                  scrollDirection: Axis.vertical,
                                  shrinkWrap: true,
                                  itemCount: restaurantController.cat3.length,
                                  itemBuilder: (context, index) {
                                    return Card(
                                        margin: const EdgeInsets.all(10),
                                        child: ListTile(
                                            title: Text(restaurantController
                                                .cat3[index]["name"]),
                                            subtitle: Text(restaurantController
                                                .cat3[index]["price"]
                                                .toString()),
                                            trailing: SizedBox(
                                              width: 140,
                                              child: ElevatedButton(
                                                style: ButtonStyle(
                                                  backgroundColor: MaterialStateProperty.all<Color>(Colors.amberAccent),
                                                ) ,
                                                onPressed: () {
                                                  restaurantController.cat3SubItemQty[index]++;
                                                  restaurantController.total += restaurantController.cat3[index]["price"];
                                                  setState(() {});
                                                },
                                                child: restaurantController
                                                                .cat3SubItemQty[
                                                            index] ==
                                                        0
                                                    ? const Text('Add')
                                                    : Row(
                                                        children: [
                                                          IconButton(
                                                            icon: const Icon(Icons
                                                                .remove_circle_outline),
                                                            iconSize: 20,
                                                            onPressed: () {
                                                              restaurantController
                                                                      .cat3SubItemQty[
                                                                  index]--;
                                                              restaurantController.total -= restaurantController.cat3[index]["price"];
                                                              setState(() {});
                                                            },
                                                          ),
                                                          Text(restaurantController
                                                              .cat3SubItemQty[
                                                                  index]
                                                              .toString()),
                                                          IconButton(
                                                            icon: const Icon(Icons
                                                                .add_circle_outline),
                                                            iconSize: 20,
                                                            onPressed: () {
                                                              // quantity++;
                                                              restaurantController
                                                                      .cat3SubItemQty[
                                                                  index]++;
                                                              restaurantController.total += restaurantController.cat3[index]["price"];
                                                              setState(() {});
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                              ),
                                            )));
                                  }),
                            ],
                          )
                        : Container(),
                    restaurantController.cat4.isNotEmpty
                        ? ExpansionTile(
                            title: Row(
                              children: [
                                const Text('cat4'),
                                const Spacer(),
                                Text(restaurantController.cat4.length
                                    .toString()),
                              ],
                            ),
                            children: [
                              ListView.builder(
                                  scrollDirection: Axis.vertical,
                                  shrinkWrap: true,
                                  itemCount: restaurantController.cat4.length,
                                  itemBuilder: (context, index) {
                                    return Card(
                                        margin: const EdgeInsets.all(10),
                                        child: ListTile(
                                            title: Text(restaurantController
                                                .cat4[index]["name"]),
                                            subtitle: Text(restaurantController
                                                .cat4[index]["price"]
                                                .toString()),
                                            trailing: SizedBox(
                                              width: 140,
                                              child: ElevatedButton(
                                                style: ButtonStyle(
                                                  backgroundColor: MaterialStateProperty.all<Color>(Colors.amberAccent),
                                                ) ,
                                                onPressed: () {
                                                  // addToCart = true;
                                                  // quantity = 1;
                                                  restaurantController
                                                      .cat4SubItemQty[index]++;
                                                  setState(() {});
                                                  restaurantController.total += restaurantController.cat4[index]["price"];
                                                },
                                                child: restaurantController
                                                                .cat4SubItemQty[
                                                            index] ==
                                                        0
                                                    ? const Text('Add')
                                                    : Row(
                                                        children: [
                                                          IconButton(
                                                            icon: const Icon(Icons
                                                                .remove_circle_outline),
                                                            iconSize: 20,
                                                            onPressed: () {
                                                              restaurantController
                                                                      .cat4SubItemQty[
                                                                  index]--;
                                                              setState(() {});
                                                              restaurantController.total -=
                                                                  restaurantController.cat4[index]["price"];
                                                            },
                                                          ),
                                                          Text(restaurantController
                                                              .cat4SubItemQty[
                                                                  index]
                                                              .toString()),
                                                          IconButton(
                                                            icon: const Icon(Icons
                                                                .add_circle_outline),
                                                            iconSize: 20,
                                                            onPressed: () {
                                                              restaurantController
                                                                      .cat4SubItemQty[
                                                                  index]++;
                                                              restaurantController.total +=
                                                                  restaurantController.cat4[index]["price"];
                                                              setState(() {});
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                              ),
                                            )));
                                  }),
                            ],
                          )
                        : Container(),
                    restaurantController.cat5.isNotEmpty
                        ? ExpansionTile(
                            title: Row(
                              children: [
                                const Text('cat5'),
                                const Spacer(),
                                Text(restaurantController.cat5.length
                                    .toString()),
                              ],
                            ),
                            children: [
                              ListView.builder(
                                  scrollDirection: Axis.vertical,
                                  shrinkWrap: true,
                                  itemCount: restaurantController.cat5.length,
                                  itemBuilder: (context, index) {
                                    return Card(
                                        margin: const EdgeInsets.all(10),
                                        child: ListTile(
                                            title: Text(restaurantController
                                                .cat5[index]["name"]),
                                            subtitle: Text(restaurantController
                                                .cat5[index]["price"]
                                                .toString()),
                                            trailing: SizedBox(
                                              width: 140,
                                              child: ElevatedButton(
                                                  style: ButtonStyle(
                                                    backgroundColor: MaterialStateProperty.all<Color>(Colors.amberAccent),
                                                  ) ,
                                                onPressed: () {
                                                  restaurantController
                                                      .cat5SubItemQty[index]++;
                                                  restaurantController.total += restaurantController.cat5[index]["price"];
                                                  setState(() {});
                                                },
                                                child: restaurantController
                                                                .cat5SubItemQty[
                                                            index] ==
                                                        0
                                                    ? const Text('Add')
                                                    : Row(
                                                        children: [
                                                          IconButton(
                                                            icon: const Icon(Icons
                                                                .remove_circle_outline),
                                                            iconSize: 20,
                                                            onPressed: () {
                                                              restaurantController
                                                                      .cat5SubItemQty[
                                                                  index]--;
                                                              setState(() {});
                                                              restaurantController.total -=
                                                                  restaurantController.cat5[index]["price"];
                                                            },
                                                          ),
                                                          Text(restaurantController
                                                              .cat5SubItemQty[
                                                                  index]
                                                              .toString()),
                                                          IconButton(
                                                            icon: const Icon(Icons
                                                                .add_circle_outline),
                                                            iconSize: 20,
                                                            onPressed: () {
                                                              // quantity++;
                                                              restaurantController
                                                                      .cat5SubItemQty[
                                                                  index]++;
                                                              restaurantController.total +=
                                                                  restaurantController.cat5[index]["price"];
                                                              setState(() {});
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                              ),
                                            )));
                                  }),
                            ],
                          )
                        : Container(),
                    restaurantController.cat6.isNotEmpty
                        ? ExpansionTile(
                            title: Row(
                              children: [
                                const Text('cat6'),
                                const Spacer(),
                                Text(restaurantController.cat6.length
                                    .toString()),
                              ],
                            ),
                            children: [
                              ListView.builder(
                                  scrollDirection: Axis.vertical,
                                  shrinkWrap: true,
                                  itemCount: restaurantController.cat6.length,
                                  itemBuilder: (context, index) {
                                    return Card(
                                        margin: const EdgeInsets.all(10),
                                        child: ListTile(
                                            title: Text(restaurantController
                                                .cat6[index]["name"]),
                                            subtitle: Text(restaurantController
                                                .cat6[index]["price"]
                                                .toString()),
                                            trailing: SizedBox(
                                              width: 140,
                                              child: ElevatedButton(
                                                style: ButtonStyle(
                                                  backgroundColor: MaterialStateProperty.all<Color>(Colors.amberAccent),
                                                ) ,
                                                onPressed: () {
                                                  restaurantController
                                                      .cat6SubItemQty[index]++;
                                                  restaurantController.total += restaurantController.cat6[index]["price"];
                                                  setState(() {});
                                                },
                                                child: restaurantController
                                                                .cat6SubItemQty[
                                                            index] ==
                                                        0
                                                    ? const Text('Add')
                                                    : Row(
                                                        children: [
                                                          IconButton(
                                                            icon: const Icon(Icons
                                                                .remove_circle_outline),
                                                            iconSize: 20,
                                                            onPressed: () {
                                                              // quantity--;
                                                              restaurantController
                                                                      .cat6SubItemQty[
                                                                  index]--;
                                                              restaurantController.total -=
                                                                  restaurantController.cat6[index]["price"] ;
                                                              setState(() {});
                                                            },
                                                          ),
                                                          Text(restaurantController
                                                              .cat6SubItemQty[
                                                                  index]
                                                              .toString()),
                                                          IconButton(
                                                            icon: const Icon(Icons
                                                                .add_circle_outline),
                                                            iconSize: 20,
                                                            onPressed: () {
                                                              // quantity++;
                                                              restaurantController
                                                                      .cat6SubItemQty[
                                                                  index]++;
                                                              restaurantController.total +=
                                                                  restaurantController.cat6[index]["price"];
                                                              setState(() {});
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                              ),
                                            )));
                                  }),
                            ],
                          )
                        : Container(),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10, left: 10, right: 10, bottom: 10),
                      child: ElevatedButton(
                        child: Text('Place Order ' +
                            restaurantController.total.toString()),
                        onPressed: () {
                          Get.snackbar("Order Success", "Order Placed Successfully");
                          // restaurantController.total = 0;
                          setState(() {
                          });
                        },
                      ),
                    )
                  ],
                ),
              )),
        ));
  }

  // orderSuccess(BuildContext context) {
  //   Widget okButton = TextButton(
  //     child: const Text(
  //       "Okay",
  //     ),
  //     onPressed: () async {
  //       Navigator.of(context).pop();
  //     },
  //   );
  //   showDialog(
  //       context: context,
  //       builder: (BuildContext context) => CupertinoAlertDialog(
  //         title: const Text("Order Success!"),
  //         content:
  //         const Text("Order placed successfully"),
  //         actions: [okButton],
  //       ));
  // }
}

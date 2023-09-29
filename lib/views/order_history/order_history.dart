import 'package:flutter/material.dart';

class OrderHistory extends StatefulWidget {
  const OrderHistory({super.key});

  @override
  State<OrderHistory> createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  final List<int> numbers = [1, 2, 3, 5, 8, 13, 21, 34, 55];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'OrderHistory',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: ListView.builder(
        itemCount: 25,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(4),
              ),
            ),
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.history),
                  trailing: const Icon(Icons.more_vert),
                  title: Text(
                    "${index + 2}-09-2023",
                  ),
                ),
                const Divider(
                  height: 10,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

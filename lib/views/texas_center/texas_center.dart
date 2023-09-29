// import 'package:flutter/material.dart';

// class TexasCenter extends StatefulWidget {
//   const TexasCenter({super.key});

//   @override
//   State<TexasCenter> createState() => _TexasCenterState();
// }

// class _TexasCenterState extends State<TexasCenter> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'TexasCenter',
//           style: TextStyle(
//             color: Colors.black,
//           ),
//         ),
//         leading: IconButton(
//           icon: const Icon(
//             Icons.arrow_back_ios,
//             color: Colors.black,
//           ),
//           onPressed: () => Navigator.of(context).pop(),
//         ),
//       ),
//       body: const Center(
//         child: Text(
//           'TexasCenter',
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class TexasCenter extends StatefulWidget {
  const TexasCenter({super.key});

  @override
  State<TexasCenter> createState() => _TexasCenterState();
}

class _TexasCenterState extends State<TexasCenter> {
  final count = 0;
  @override
  Widget build(BuildContext context) {
    final items = List<String>.generate(20, (i) => '$i');
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Texas Location',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Colors.black,
                    width: 1,
                  ),

                ),
                hintText: 'search our location',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const Icon(
                    Icons.near_me_outlined,
                    size: 25,
                    color: Colors.black26,
                  ),
                  title: Text('Texas Center ${items[index]}'),
                  subtitle: const Row(
                    children: [
                      Text(
                        'Opening ',
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      ),
                      Text(
                        ' - km',
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                  ],
                  ),
                  trailing: const Icon(Icons.more_vert),
                );
              },
            ),
          ),
          Container(
            color: Colors.black26,
            height: 1,
            width: 380,
          ),
        ],
      ),
    );
  }
}

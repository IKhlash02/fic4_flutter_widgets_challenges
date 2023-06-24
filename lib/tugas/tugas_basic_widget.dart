import 'package:flutter/material.dart';

class TugasBasicWidget extends StatefulWidget {
  const TugasBasicWidget({super.key});

  @override
  State<TugasBasicWidget> createState() => _TugasBasicWidgetState();
}

class _TugasBasicWidgetState extends State<TugasBasicWidget> {
  final List<Color> colors = [Colors.blue, Colors.amber, Colors.cyan];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Basic Widget")),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
            child: Column(
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  shadowColor: Colors.grey[20],
                  elevation: 5.0),
              child: Text(
                "add To Cart".toUpperCase(),
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 30),
              child: Divider(
                thickness: 2,
              ),
            ),
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                "https://i.ibb.co/PGv8ZzG/me.jpg",
              ),
            ),
            Row(
              children: [
                ...List.generate(
                    colors.length,
                    (index) => CircleAvatar(
                          radius: 40,
                          backgroundColor: colors[index],
                        ))
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 30),
              child: Divider(
                thickness: 2,
              ),
            ),
            Container(
              height: 300,
              width: double.infinity,
              margin: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: Offset.zero,
                    blurRadius: 15.0,
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 30),
              child: Divider(
                thickness: 2,
              ),
            ),
            const Icon(
              Icons.share,
              size: 32.0,
            ),
            const Icon(
              Icons.favorite,
              size: 36.0,
              color: Colors.red,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 30),
              child: Divider(
                thickness: 2,
              ),
            ),
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: Image.asset('assets/images/furniture/img_product_2.png'),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 30),
              child: Divider(
                thickness: 2,
              ),
            ),
            const Text(
              'Discover the most modern furniture',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22.0,
                fontWeight: FontWeight.w500,
                letterSpacing: 1,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 30),
              child: Divider(
                thickness: 2,
              ),
            ),
          ],
        )),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class TugasDIalog extends StatefulWidget {
  const TugasDIalog({super.key});

  @override
  State<TugasDIalog> createState() => _TugasDIalogState();
}

class _TugasDIalogState extends State<TugasDIalog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tugas Dialog"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () async {
                  await showDialog(
                      context: context,
                      barrierDismissible: true,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text("Info"),
                          content: SingleChildScrollView(
                              child: ListBody(
                            children: const [
                              Text('Your order was placed!'),
                            ],
                          )),
                          actions: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue),
                              child: const Text("Ok"),
                            )
                          ],
                        );
                      });
                },
                child: const Text("Open Dialog"))
          ],
        ),
      ),
    );
  }
}

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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
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
                child: const Text("Open Dialog")),
            ElevatedButton(
                onPressed: () async {
                  await showModalBottomSheet<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return Padding(
                          padding: const EdgeInsets.all(20),
                          child: SizedBox(
                            width: double.infinity,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Text("You order was placed"),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.blue),
                                    child: const Text("Ok"),
                                  )
                                ]),
                          ),
                        );
                      });
                },
                child: const Text("Open BottomSheet"))
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:project_flutter_pertama/tugas/tugas_dialog.dart';

import '../../tugas/tugas_basic_widget.dart';

class SliverWidget extends StatefulWidget {
  const SliverWidget({Key? key}) : super(key: key);

  @override
  State<SliverWidget> createState() => _SliverWidgetState();
}

class _SliverWidgetState extends State<SliverWidget> {
  List<String> title = ["Dialog Widget", "Basic Widget"];

  List<Widget> route = [const TugasDIalog(), const TugasBasicWidget()];
  bool pinned = true;
  bool snap = false;
  bool floating = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FIC - Sliver"),
        actions: const [],
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: pinned,
            snap: snap,
            floating: floating,
            expandedHeight: 160,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text(
                'Sliver App Bar',
              ),
              background: FlutterLogo(),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                  return route[index];
                })),
                child: Container(
                  color: index.isOdd ? Colors.white : Colors.blue[200],
                  height: 100,
                  child: Center(
                    child: Text(
                      title[index],
                      textAlign: TextAlign.center,
                      textScaleFactor: 3,
                    ),
                  ),
                ),
              );
            }, childCount: title.length),
          ),
        ],
      ),
    );
  }
}

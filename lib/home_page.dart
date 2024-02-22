import 'package:flutter/material.dart';
import 'package:graphe_test/bar%20graph/bar_graph.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<double> weeklySummary = [
    46.0,
    12.1,
    78.7,
    90.02,
    64.8,
    56.1,
    08.3,
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
       child: SizedBox(
        height: 200,
        child :MyBarGraph(
          weeklySummary: weeklySummary,
        ),
    )
    )
   );
  }
}

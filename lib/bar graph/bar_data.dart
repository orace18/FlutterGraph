import 'package:graphe_test/bar%20graph/individual_bar.dart';

class BarData {
  final double lunAmount;
  final double marAmount;
  final double merAmount;
  final double jeuAmount;
  final double venAmount;
  final double samAmount;
  final double dimAmount;

  BarData(
      {required this.lunAmount,
      required this.marAmount,
      required this.merAmount,
      required this.jeuAmount,
      required this.venAmount,
      required this.samAmount,
      required this.dimAmount});

  List<IndividualBar> barData = [];

  void initializeBarData() {
    barData = [
      IndividualBar(x: 0, y: lunAmount),
      IndividualBar(x: 1, y: marAmount),
      IndividualBar(x: 2, y: merAmount),
      IndividualBar(x: 3, y: jeuAmount),
      IndividualBar(x: 4, y: venAmount),
      IndividualBar(x: 5, y: samAmount),
      IndividualBar(x: 6, y: dimAmount),

    ];
  }
}

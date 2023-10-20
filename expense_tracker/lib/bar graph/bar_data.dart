import 'package:expense_tracker/bar%20graph/individual_bar.dart';

class BarData {
  final sunAmount;
  final monAmount;
  final tueAmount;
  final wedAmount;
  final thuAmount;
  final friAmount;
  final satAmount;

  BarData({
    required this.sunAmount,
    required this.monAmount,
    required this.tueAmount,
    required this.wedAmount,
    required this.thuAmount,
    required this.friAmount,
    required this.satAmount,
  });

  List<IndividualBar> barData = [];

  // initialize bar data
  void initializeBarData() {
    barData = [
      // sun
      IndividualBar(x: 0, y: sunAmount),
      // mon
      IndividualBar(x: 0, y: monAmount),
      // tue
      IndividualBar(x: 0, y: tueAmount),
      // wed
      IndividualBar(x: 0, y: wedAmount),
      // thu
      IndividualBar(x: 0, y: thuAmount),
      // fri
      IndividualBar(x: 0, y: friAmount),
      // sat
      IndividualBar(x: 0, y: satAmount),
    ];
  }
}

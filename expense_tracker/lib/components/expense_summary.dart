import 'package:expense_tracker/bar%20graph/bar_graph.dart';
import 'package:expense_tracker/data/expense_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ExpenseSummary extends StatelessWidget {
  final DateTime startOfWeek;
  const ExpenseSummary({Key? key, required this.startOfWeek}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ExpenseData>(
      builder: (context, value, child) => SizedBox(
        height: 200,
        child: MyBarGraph(
          maxY: 100,
          sunAmount: 30,
          monAmount: 20,
          tueAmount: 50,
          wedAmount: 10,
          thuAmount: 34,
          friAmount: 80,
          satAmount: 70,
        ),
      ),
    );
  }
}

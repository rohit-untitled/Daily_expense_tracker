import 'package:expense_tracker/datetime/date_time_helper.dart';
import 'package:expense_tracker/models/expense_item.dart';
import 'package:flutter/material.dart';

class ExpenseData extends ChangeNotifier {
  // list of all expenses
  List<ExpenseItem> overallExpenseList = [];

  //get expense list
  List<ExpenseItem> getAllExpenseList() {
    return overallExpenseList;
  }

  //add new expense
  void addNewExpense(ExpenseItem NewExpense) {
    overallExpenseList.add(NewExpense);

    notifyListeners();
  }

  //delete expense
  void removeNewExpense(ExpenseItem expense) {
    overallExpenseList.remove(expense);

    notifyListeners();
  }
  //get weekday(mon, tue, wed....etc)

  String getDayName(DateTime dateTime) {
    switch (dateTime.weekday) {
      case 1:
        return 'Mon';
      case 2:
        return 'Tue';
      case 3:
        return 'Wed';
      case 4:
        return 'Thu';
      case 5:
        return 'Fri';
      case 6:
        return 'Sat';
      case 7:
        return 'Sun';
        break;
      default:
        return '';
    }
  }

  //get the date for the start of the week (sunday)
  DateTime startOfWeekDate() {
    DateTime? startOfWeek;

    // get today date
    DateTime today = DateTime.now();

    for (int i = 0; i < 7; i++) {
      if (getDayName(today.subtract(Duration(days: i))) == 'Sun') {
        startOfWeek = today.subtract(Duration(days: i));
      }
    }
    return startOfWeekDate();
  }

  Map<String, double> calculateDailyExpenseSummary() {
    Map<String, double> dailyExpenseSummary = {
      //amount total for day
    };
    for (var expense in overallExpenseList) {
      String date = convertDateTimeToString(expense.dateTime);
      double amount = double.parse(expense.amount);

      if (dailyExpenseSummary.containsKey(date)) {
        double currentAmount = dailyExpenseSummary[date]!;
        currentAmount += amount;
        dailyExpenseSummary[date] = currentAmount;
      } else {
        dailyExpenseSummary.addAll({date: amount});
      }
    }
    return dailyExpenseSummary;
  }
}

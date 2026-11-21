main() {
  Holiday independenceDay = Holiday("Independence Day", 4, "July");
  Holiday nationalDay = Holiday("National Fest", 18, "July");
  Holiday newYear = Holiday("New Year", 1, "January");
  Holiday octoberVictory = Holiday("October Victory", 6, "October");
  Holiday sinaiLiberation = Holiday("Sinai Liberation Day", 25, "April");

  print(independenceDay.inSameMonth(independenceDay, nationalDay));
  print(independenceDay.inSameMonth(independenceDay, newYear));
  print(octoberVictory.inSameMonth(octoberVictory, sinaiLiberation));
  List<Holiday> holidays = [independenceDay, nationalDay, newYear, octoberVictory, sinaiLiberation];
  print(independenceDay.avgDate(holidays));
}

class Holiday {
  String name;
  int day;
  String month;

  Holiday(this.name, this.day, this.month);

  bool inSameMonth(Holiday holiday1, Holiday holiday2) {
    return holiday1.month == holiday2.month;
  }

  double avgDate(List<Holiday> holidays) {
    if (holidays.isEmpty) {
      return 0.0;
    }
    int totalDays = 0;
    for (var i in holidays) {
      totalDays += i.day;
    }
    return totalDays / holidays.length;
  }
}
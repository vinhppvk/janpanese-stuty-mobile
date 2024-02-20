

enum BookingDate {
  weekday,
  saturday,
  sunday;

  static BookingDate fromWeekday(int? weekday) {
    if (weekday == DateTime.saturday) {
      return BookingDate.saturday;
    }
    if (weekday == DateTime.sunday) {
      return BookingDate.sunday;
    }
    return BookingDate.weekday;
  }
}
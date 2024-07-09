import 'package:intl/intl.dart';

String getFormatedDateTime(String time) {
    DateTime dateTime = DateTime.parse(time);
    String format = DateFormat('MMMM d, h:mm a').format(dateTime);

    return format;
  }
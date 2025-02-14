String formatTime(DateTime time) {
  return '${time.hour}:${time.minute.toString().padLeft(2, '0')}';
}

String formatDateTime(DateTime dateTime) {
  return '${dateTime.year}/${dateTime.month}/${dateTime.day} ${dateTime.hour}:${dateTime.minute.toString().padLeft(2, '0')}';
}

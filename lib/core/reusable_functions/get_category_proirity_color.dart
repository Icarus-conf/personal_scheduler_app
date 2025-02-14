import 'package:flutter/material.dart';

Color getCategoryColor(String category) {
  switch (category.toLowerCase()) {
    case 'health':
      return Color(0xFF9ad2cb);
    case 'personal':
      return Color(0xFF0a369d);
    case 'work':
      return Color(0xFFa53860);
    case 'study':
      return Color(0xFF623cea);
    case 'food':
      return Color(0xFFee7b30);
    case 'family':
      return Color(0xFFa79ab2);
    case 'shopping':
      return Color(0xFF124559);
    default:
      return Colors.grey;
  }
}

Color getPriorityColor(String category) {
  switch (category.toLowerCase()) {
    case 'low':
      return Colors.green;
    case 'medium':
      return Color(0xFFf9dc5c);
    case 'high':
      return Color(0xFFed254e);
    default:
      return Colors.white;
  }
}

import 'package:flutter/material.dart';

class ListCard {
  IconData icon;
  String title;

  ListCard({this.icon, this.title});

  factory ListCard.fromJson(Map<String, dynamic> json) {
    IconData stringToIcon;

    switch (json["icon"]) {
      case 'credit_card':
        stringToIcon = Icons.credit_card;
    }

    return ListCard(
        icon: stringToIcon,
        title: json["title"] == null ? null : json["title"]);
  }
}

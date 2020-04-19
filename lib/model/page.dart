class PageCard {
  int type;
  String title;
  String value;
  String description;

  PageCard({
    this.type,
    this.title,
    this.value,
    this.description,
  });

  factory PageCard.fromJson(Map<String, dynamic> json) => PageCard(
        type: json["type"] == null ? null : json["type"],
        title: json["title"] == null ? null : json["title"],
        value: json["value"] == null ? null : json["value"],
        description: json["description"] == null ? null : json["description"],
      );

  Map<String, dynamic> toJson() => {
        "type": type == null ? null : type,
        "title": title == null ? null : title,
        "value": value == null ? null : value,
        "description": description == null ? null : description,
      };
}

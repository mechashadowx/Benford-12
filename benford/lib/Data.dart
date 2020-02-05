import 'Details.dart';

class Data {
  final String cardTitle;
  final List<String> content;
  final Map<String, Details> details;
  bool open;
  Data({
    this.cardTitle,
    this.content,
    this.details,
    this.open,
  });
}

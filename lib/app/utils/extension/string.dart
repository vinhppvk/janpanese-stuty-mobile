extension OptionalStringX on String? {
  bool get isNullOrEmpty => this == null || this!.isEmpty;
}

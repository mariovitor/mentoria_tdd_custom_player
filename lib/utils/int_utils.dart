class IntUtil {
  static int? parseInt(dynamic value) {
    if (value == null) return null;
    if (value is int) return value;
    double? doubleValue = double.tryParse(value.toString());
    if (doubleValue == null) return null;
    if (doubleValue.truncateToDouble() == doubleValue) {
      return doubleValue.truncate();
    }
    return null;
  }
}

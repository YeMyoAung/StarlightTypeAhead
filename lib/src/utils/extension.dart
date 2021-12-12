part of starlight_type_ahead;

extension _StarlightTypeAhead on String {
  bool validate(String other) => toLowerCase()
      .replaceAll(' ', '')
      .contains(other.toLowerCase().replaceAll(' ', ''));
}

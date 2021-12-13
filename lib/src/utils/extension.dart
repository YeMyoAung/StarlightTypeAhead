part of starlight_type_ahead;

extension _StarlightTypeAheadString on String {
  bool validate(String other) => toLowerCase()
      .replaceAll(' ', '')
      .contains(other.toLowerCase().replaceAll(' ', ''));
}

extension _StarlightTypeAheadBuildContext on BuildContext {
  bool overScroll(OverscrollIndicatorNotification e) {
    e.disallowIndicator();
    return false;
  }
}

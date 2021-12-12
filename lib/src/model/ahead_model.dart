part of starlight_type_ahead;

class _StarlightAheadModel<T> {
  final bool _isSearch;
  final T _data;

  const _StarlightAheadModel({
    required bool isSearch,
    required T data,
  })  : _isSearch = isSearch,
        _data = data;
}

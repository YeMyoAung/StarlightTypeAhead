part of starlight_type_ahead;

class _StarlightAheadService<T, R> {
  ///Store User Data
  final T _data;

  ///Target for User Search
  final List<String> _targets;

  ///Store User Parsed Data
  // final List<Map> _parsedData = [];

  ///private constructor
  _StarlightAheadService._({
    required T data,
    required List<String> targets,
  })  : _data = data,
        _targets = targets {
    _init();
  }

  void _init() {
    if (_data is List != true) {
      throw const _StarlightTypeAheadException(
        error: "Unable to create searchable data.",
        message: 'List is required.',
      );
    }
    if ((_data as List).isEmpty) return;
    if (_data is List<String>) return;
    if (_data is List<int>) return;
    if (_data is List<double>) return;
    if (_data is List<bool>) return;
    if (_data is List && (_data as List)[0] is Map && _targets.isNotEmpty) {
      try {
        (_data as List).map((e) => e as Map).toList();

        return;
      } catch (e) {
        throw const _StarlightTypeAheadException(
          error: "All data must be Map",
          message:
              '''We only accept List<Map>,List<Object>,List<String>,List<int>,List<double> and List<bool>''',
        );
      }
    }

    if (_data is List && (_data as List)[0] is Map && _targets.isEmpty) {
      throw const _StarlightTypeAheadException(
        error: "Targets is empty",
        message: '''Please add one or more data in targets.''',
      );
    }
    if (_data is List<R>) {
      try {
        (_data as List).map((e) => e.toJson()).toList();
      } catch (_) {
        throw const _StarlightTypeAheadException(
          error: "Unable to parse json.",
          message: '''Please create a Method so called toJson.
    Return data type must be Map.''',
        );
      }
      if (_targets.isEmpty) {
        throw const _StarlightTypeAheadException(
          error: "Targets is empty",
          message: '''Please add one or more data in targets.''',
        );
      }
    }
  }

  final StreamController<_StarlightAheadModel> _aheadController =
      StreamController<_StarlightAheadModel>.broadcast();

  late final Stream<_StarlightAheadModel> aheadStream = _aheadController.stream;

  late final Sink<_StarlightAheadModel> _aheadSink = _aheadController.sink;

  void closeSuggestion() => _aheadSink.add(
        const _StarlightAheadModel(
          isSearch: false,
          data: [],
        ),
      );

  void _onSearch(String searchData) {
    if (searchData.isEmpty) {
      _aheadSink.add(
        const _StarlightAheadModel(
          isSearch: false,
          data: [],
        ),
      );
      return;
    }
    if ((_data as List).isEmpty) return;

    final T _result = (_data as List).where((parse) {
      List<bool> _isMatch = [];
      if (_targets.isEmpty) {
        _isMatch.add(
          parse.toString().validate(searchData),
        );
        return _isMatch.contains(true);
      }
      for (var target in _targets) {
        try {
          _isMatch.add(
            parse.toJson()[target].toString().validate(searchData),
          );
        } catch (e) {
          _isMatch.add(
            parse[target].toString().validate(searchData),
          );
        }
      }
      return _isMatch.contains(true);
    }).toList() as T;

    _aheadSink.add(
      _StarlightAheadModel(
        isSearch: true,
        data: _result,
      ),
    );
  }

  void _dispose() {
    _aheadController.close();
    _aheadSink.close();
  }

  factory _StarlightAheadService.instance({
    required T data,
    required List<String> targets,
  }) =>
      _StarlightAheadService<T, R>._(
        data: data,
        targets: targets,
      );
}

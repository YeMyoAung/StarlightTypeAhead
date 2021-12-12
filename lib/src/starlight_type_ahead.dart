part of starlight_type_ahead;

class StarlightTypeAhead<T, R> extends StatefulWidget {
  final double _itemWidth;
  final double _itemHeight;
  final ScrollPhysics? _itemScrollPhysics;
  final ScrollController? _itemScrollController;
  final T _data;
  final List<String>? _targets;
  final Widget Function(R) _itemBuilder;
  final void Function(R, _StarlightAheadService)? _onSelect;
  final BoxDecoration? _decoration;
  final EdgeInsets? _padding;
  final TextEditingController _controller;
  final FocusNode? _focusNode;
  final InputDecoration? _inputDecoration;
  final TextInputType? _keyboardType;
  final TextCapitalization _textCapitalization;
  final TextInputAction? _textInputAction;
  final TextStyle? _style;
  final StrutStyle? _strutStyle;
  final TextDirection? _textDirection;
  final TextAlign _textAlign;
  final TextAlignVertical? _textAlignVertical;
  final bool _autofocus;
  final bool _readOnly;
  final ToolbarOptions? _toolbarOptions;
  final bool? _showCursor;
  final String _obscuringCharacter;
  final bool _obscureText;
  final bool _autocorrect;
  final SmartDashesType? _smartDashesType;
  final SmartQuotesType? _smartQuotesType;
  final bool _enableSuggestions;
  final MaxLengthEnforcement? _maxLengthEnforcement;
  final int? _maxLines;
  final int? _minLines;
  final bool _expands;
  final int? _maxLength;
  final void Function()? _onTap;
  final void Function()? _onEditingComplete;
  final void Function(String)? _onFieldSubmitted;
  final void Function(String?)? _onSaved;
  final String? Function(String?)? _validator;
  final List<TextInputFormatter>? _inputFormatters;
  final bool? _enabled;
  final double _cursorWidth;
  final double? _cursorHeight;
  final Radius? _cursorRadius;
  final Color? _cursorColor;
  final Brightness? _keyboardAppearance;
  final EdgeInsets _inputScrollPadding;
  final bool _enableInteractiveSelection;
  final TextSelectionControls? _selectionControls;
  final Widget? Function(
    BuildContext, {
    required int currentLength,
    required bool isFocused,
    required int? maxLength,
  })? _buildCounter;
  final ScrollPhysics? _inputScrollPhysics;
  final Iterable<String>? _autofillHints;
  final AutovalidateMode? _autovalidateMode;
  final ScrollController? _inputScrollController;
  final String? _restorationId;
  final bool _enableIMEPersonalizedLearning;

  const StarlightTypeAhead({
    Key? key,
    required TextEditingController controller,
    required T data,
    List<String>? targets,
    required double itemWidth,
    required double itemHeight,
    required Widget Function(R) itemBuilder,
    void Function(R, _StarlightAheadService)? onSelect,
    ScrollPhysics? itemScrollPhysics,
    ScrollController? itemScrollController,
    BoxDecoration? decoration,
    EdgeInsets? padding,
    FocusNode? focusNode,
    InputDecoration? inputDecoration,
    TextInputType? keyboardType,
    TextCapitalization textCapitalization = TextCapitalization.none,
    TextInputAction? textInputAction,
    TextStyle? style,
    StrutStyle? strutStyle,
    TextDirection? textDirection,
    TextAlign textAlign = TextAlign.start,
    TextAlignVertical? textAlignVertical,
    bool autofocus = false,
    bool readOnly = false,
    ToolbarOptions? toolbarOptions,
    bool? showCursor,
    String obscuringCharacter = '•',
    bool obscureText = false,
    bool autocorrect = true,
    SmartDashesType? smartDashesType,
    SmartQuotesType? smartQuotesType,
    bool enableSuggestions = true,
    MaxLengthEnforcement? maxLengthEnforcement,
    int? maxLines = 1,
    int? minLines,
    bool expands = false,
    int? maxLength,
    void Function()? onTap,
    void Function()? onEditingComplete,
    void Function(String)? onFieldSubmitted,
    void Function(String?)? onSaved,
    String? Function(String?)? validator,
    List<TextInputFormatter>? inputFormatters,
    bool? enabled,
    double cursorWidth = 2.0,
    double? cursorHeight,
    Radius? cursorRadius,
    Color? cursorColor,
    Brightness? keyboardAppearance,
    EdgeInsets scrollPadding = const EdgeInsets.all(20.0),
    bool enableInteractiveSelection = true,
    TextSelectionControls? selectionControls,
    Widget? Function(
      BuildContext, {
      required int currentLength,
      required bool isFocused,
      required int? maxLength,
    })?
        buildCounter,
    ScrollPhysics? scrollPhysics,
    Iterable<String>? autofillHints,
    AutovalidateMode? autovalidateMode,
    ScrollController? scrollController,
    String? restorationId,
    bool enableIMEPersonalizedLearning = true,
  })  : _itemWidth = itemWidth,
        _itemHeight = itemHeight,
        _data = data,
        _targets = targets,
        _itemBuilder = itemBuilder,
        _itemScrollPhysics = itemScrollPhysics,
        _itemScrollController = itemScrollController,
        _onSelect = onSelect,
        _decoration = decoration,
        _padding = padding,
        _controller = controller,
        _focusNode = focusNode,
        _inputDecoration = inputDecoration,
        _keyboardType = keyboardType,
        _textCapitalization = textCapitalization,
        _textInputAction = textInputAction,
        _style = style,
        _strutStyle = strutStyle,
        _textDirection = textDirection,
        _textAlign = textAlign,
        _textAlignVertical = textAlignVertical,
        _autofocus = autofocus,
        _readOnly = readOnly,
        _toolbarOptions = toolbarOptions,
        _showCursor = showCursor,
        _obscuringCharacter = obscuringCharacter,
        _obscureText = obscureText,
        _autocorrect = autocorrect,
        _smartDashesType = smartDashesType,
        _smartQuotesType = smartQuotesType,
        _enableSuggestions = enableSuggestions,
        _maxLengthEnforcement = maxLengthEnforcement,
        _maxLines = maxLines,
        _minLines = minLines,
        _expands = expands,
        _maxLength = maxLength,
        _onTap = onTap,
        _onEditingComplete = onEditingComplete,
        _onFieldSubmitted = onFieldSubmitted,
        _onSaved = onSaved,
        _validator = validator,
        _inputFormatters = inputFormatters,
        _enabled = enabled,
        _cursorWidth = cursorWidth,
        _cursorHeight = cursorHeight,
        _cursorRadius = cursorRadius,
        _cursorColor = cursorColor,
        _keyboardAppearance = keyboardAppearance,
        _inputScrollPadding = scrollPadding,
        _enableInteractiveSelection = enableInteractiveSelection,
        _selectionControls = selectionControls,
        _buildCounter = buildCounter,
        _inputScrollPhysics = scrollPhysics,
        _autofillHints = autofillHints,
        _autovalidateMode = autovalidateMode,
        _inputScrollController = scrollController,
        _restorationId = restorationId,
        _enableIMEPersonalizedLearning = enableIMEPersonalizedLearning,
        super(key: key);

  @override
  State<StarlightTypeAhead> createState() => _StarlightTypeAheadState();
}

class _StarlightTypeAheadState extends State<StarlightTypeAhead>
    with AutomaticKeepAliveClientMixin {
  late _StarlightAheadService _aheadService;

  @override
  void initState() {
    super.initState();
    _aheadService = _StarlightAheadService.instance(
      data: widget._data,
      targets: widget._targets ?? [],
    );
  }

  @override
  void dispose() {
    _aheadService._dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Column(
      children: [
        _StarlightTextField(
          readOnly: widget._readOnly,
          restorationId: widget._restorationId,
          autocorrect: widget._autocorrect,
          autofillHints: widget._autofillHints,
          autofocus: widget._autofocus,
          autovalidateMode: widget._autovalidateMode,
          textAlign: widget._textAlign,
          textAlignVertical: widget._textAlignVertical,
          textCapitalization: widget._textCapitalization,
          textDirection: widget._textDirection,
          textInputAction: widget._textInputAction,
          obscureText: widget._obscureText,
          obscuringCharacter: widget._obscuringCharacter,
          cursorWidth: widget._cursorWidth,
          cursorHeight: widget._cursorHeight,
          cursorRadius: widget._cursorRadius,
          cursorColor: widget._cursorColor,
          showCursor: widget._showCursor,
          buildCounter: widget._buildCounter,
          controller: widget._controller,
          focusNode: widget._focusNode,
          onEditingComplete: widget._onEditingComplete,
          keyboardType: widget._keyboardType,
          style: widget._style,
          strutStyle: widget._strutStyle,
          toolbarOptions: widget._toolbarOptions,
          smartDashesType: widget._smartDashesType,
          smartQuotesType: widget._smartQuotesType,
          enableSuggestions: widget._enableSuggestions,
          maxLengthEnforcement: widget._maxLengthEnforcement,
          maxLines: widget._maxLines,
          maxLength: widget._maxLength,
          minLines: widget._minLines,
          expands: widget._expands,
          onTap: widget._onTap,
          onFieldSubmitted: widget._onFieldSubmitted,
          onSaved: widget._onSaved,
          validator: widget._validator,
          inputFormatters: widget._inputFormatters,
          enabled: widget._enabled,
          keyboardAppearance: widget._keyboardAppearance,
          scrollPadding: widget._inputScrollPadding,
          enableInteractiveSelection: widget._enableInteractiveSelection,
          selectionControls: widget._selectionControls,
          scrollPhysics: widget._inputScrollPhysics,
          scrollController: widget._inputScrollController,
          enableIMEPersonalizedLearning: widget._enableIMEPersonalizedLearning,
          onChanged: _aheadService._onSearch,
          decoration: widget._inputDecoration,
        ),
        StreamBuilder<_StarlightAheadModel>(
          initialData: const _StarlightAheadModel(
            isSearch: false,
            data: [],
          ),
          stream: _aheadService.aheadStream,
          builder: (_, data) => AnimatedCrossFade(
            firstChild: const SizedBox(),
            secondChild: Container(
              width: widget._itemWidth,
              height: widget._itemHeight * (data.data?._data as List).length,
              margin: const EdgeInsets.only(top: 5),
              padding: widget._padding,
              decoration: widget._decoration,
              child: ListView.builder(
                physics: widget._itemScrollPhysics,
                controller: widget._itemScrollController,
                itemExtent: widget._itemHeight,
                itemCount: (data.data!._data as List).length,
                itemBuilder: (_, i) => InkWell(
                  onTap: () {
                    if (widget._onSelect == null) {
                      try {
                        widget._controller.text =
                            data.data!._data[i].toJson()[widget._targets?[0]];
                      } catch (_) {
                        if (data.data!._data[i] is Map) {
                          widget._controller.text = data
                              .data!._data[i][widget._targets?[0]]
                              .toString();
                        } else {
                          widget._controller.text =
                              data.data!._data[i].toString();
                        }
                      }
                      _aheadService._onSearch('');
                      return;
                    }
                    widget._onSelect!(data.data!._data[i], _aheadService);
                  },
                  child: widget._itemBuilder(data.data!._data[i]),
                ),
              ),
            ),
            crossFadeState: data.data?._isSearch == false
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            duration: const Duration(milliseconds: 200),
          ),
        )
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}

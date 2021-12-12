part of starlight_type_ahead;

class _StarlightTextField extends StatelessWidget {
  final String? _initialValue;
  final TextEditingController? _controller;
  final FocusNode? _focusNode;
  final InputDecoration? _decoration;
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
  final void Function(String)? _onChanged;
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
  final EdgeInsets _scrollPadding;
  final bool _enableInteractiveSelection;
  final TextSelectionControls? _selectionControls;
  final Widget? Function(BuildContext,
      {required int currentLength,
      required bool isFocused,
      required int? maxLength})? _buildCounter;
  final ScrollPhysics? _scrollPhysics;
  final Iterable<String>? _autofillHints;
  final AutovalidateMode? _autovalidateMode;
  final ScrollController? _scrollController;
  final String? _restorationId;
  final bool _enableIMEPersonalizedLearning;

  const _StarlightTextField({
    Key? key,
    String? initialValue,
    TextEditingController? controller,
    FocusNode? focusNode,
    InputDecoration? decoration,
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
    void Function(String)? onChanged,
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
    Widget? Function(BuildContext,
            {required int currentLength,
            required bool isFocused,
            required int? maxLength})?
        buildCounter,
    ScrollPhysics? scrollPhysics,
    Iterable<String>? autofillHints,
    AutovalidateMode? autovalidateMode,
    ScrollController? scrollController,
    String? restorationId,
    bool enableIMEPersonalizedLearning = true,
  })  : _initialValue = initialValue,
        _controller = controller,
        _focusNode = focusNode,
        _decoration = decoration,
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
        _onChanged = onChanged,
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
        _scrollPadding = scrollPadding,
        _enableInteractiveSelection = enableInteractiveSelection,
        _selectionControls = selectionControls,
        _buildCounter = buildCounter,
        _scrollPhysics = scrollPhysics,
        _autofillHints = autofillHints,
        _autovalidateMode = autovalidateMode,
        _scrollController = scrollController,
        _restorationId = restorationId,
        _enableIMEPersonalizedLearning = enableIMEPersonalizedLearning,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: _initialValue,
      controller: _controller,
      focusNode: _focusNode,
      decoration: _decoration,
      keyboardType: _keyboardType,
      textCapitalization: _textCapitalization,
      textInputAction: _textInputAction,
      style: _style,
      strutStyle: _strutStyle,
      textDirection: _textDirection,
      textAlign: _textAlign,
      textAlignVertical: _textAlignVertical,
      autofocus: _autofocus,
      readOnly: _readOnly,
      toolbarOptions: _toolbarOptions,
      showCursor: _showCursor,
      obscuringCharacter: _obscuringCharacter,
      obscureText: _obscureText,
      autocorrect: _autocorrect,
      smartDashesType: _smartDashesType,
      smartQuotesType: _smartQuotesType,
      enableSuggestions: _enableSuggestions,
      maxLengthEnforcement: _maxLengthEnforcement,
      maxLines: _maxLines,
      minLines: _minLines,
      expands: _expands,
      maxLength: _maxLength,
      onChanged: _onChanged,
      onTap: _onTap,
      onEditingComplete: _onEditingComplete,
      onFieldSubmitted: _onFieldSubmitted,
      onSaved: _onSaved,
      validator: _validator,
      inputFormatters: _inputFormatters,
      enabled: _enabled,
      cursorWidth: _cursorWidth,
      cursorHeight: _cursorHeight,
      cursorRadius: _cursorRadius,
      cursorColor: _cursorColor,
      keyboardAppearance: _keyboardAppearance,
      scrollPadding: _scrollPadding,
      enableInteractiveSelection: _enableInteractiveSelection,
      selectionControls: _selectionControls,
      buildCounter: _buildCounter,
      scrollPhysics: _scrollPhysics,
      autofillHints: _autofillHints,
      autovalidateMode: _autovalidateMode,
      scrollController: _scrollController,
      restorationId: _restorationId,
      enableIMEPersonalizedLearning: _enableIMEPersonalizedLearning,
    );
  }
}

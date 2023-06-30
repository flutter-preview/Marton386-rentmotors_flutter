import '../../res/global.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:rentmotors/res/generated/locale_keys.g.dart';

class SearchTextField extends StatefulWidget {
  const SearchTextField({
    super.key,
    this.type,
    this.enabled,
    this.hintText,
    this.firstCaps,
    this.searchSmg,
    this.showClear,
    this.focusNode,
    this.necessarily,
    required this.showIcon,
    required this.controller,
  });
  final bool? enabled;
  final bool showIcon;
  final bool? firstCaps;
  final bool? showClear;
  final String? hintText;
  final bool? necessarily;
  final TextInputType? type;
  final FocusNode? focusNode;
  final VoidCallback? searchSmg;
  final TextEditingController controller;

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  bool _isTextFieldEmpty = true;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_onTextChanged);
  }

  void _onTextChanged() {
    setState(() {
      _isTextFieldEmpty = widget.controller.text.isEmpty;
      (widget.searchSmg != null) ? widget.searchSmg!() : () {};
    });
  }

  @override
  Widget build(BuildContext context) {
    bool firstCaps = false;
    if (widget.firstCaps != null) {
      firstCaps = widget.firstCaps!;
    }
    bool necessarily = false;
    if (widget.necessarily != null) {
      necessarily = widget.necessarily!;
    }
    bool showClear = false;
    if (widget.showClear != null) {
      showClear = widget.showClear!;
    }
    return TextField(
      textCapitalization: firstCaps ?
      TextCapitalization.sentences : TextCapitalization.none,
      enabled: widget.enabled ?? true,
      keyboardType: widget.type ?? TextInputType.text,
      focusNode: widget.focusNode,
      controller: widget.controller,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(left: 10.0),
        prefixIcon: widget.showIcon ? Icon(
          Icons.search,
          color: Global.getIconColor(context),
        ) : null,
        suffixIcon: _isTextFieldEmpty ?
        necessarily ? IconButton(
          icon: const Icon(Icons.error_outline),
          color: Global.red,
          onPressed: () {
            final snackBar = SnackBar(content: Text(LocaleKeys.required_field
                .tr()));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
        ): null :
        showClear ? IconButton(
          icon: const Icon(Icons.cancel),
          color: Global.getIconColor(context),
          onPressed: () {
            widget.controller.clear();
            setState(() {
              _isTextFieldEmpty = true;
            });
          },
        ) : null,
        hintText: widget.hintText ?? "",
        hintStyle: Global.getHintStyle(context),
        border: const OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 2.0,
            color: Global.getBorderColor(context),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 2.0,
            color: Global.getBorderColor(context),
          ),
        ),
      ),
      cursorColor: Global.green,
    );
  }
}
import '../../res/global.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:rentmotors/res/generated/locale_keys.g.dart';

class SearchTextField extends StatefulWidget {
  const SearchTextField({
    super.key,
    required this.showIcon,
    this.hintText,
    this.searchSmg,
    required this.controller,
    this.type,
    this.enabled,
    this.showClear,
    this.focusNode,
    this.necessarily,
  });
  final bool? enabled;
  final bool showIcon;
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
    return TextField(
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
        (widget.necessarily != null) ? IconButton(
          icon: const Icon(Icons.error_outline),
          color: Global.red,
          onPressed: () {
            final snackBar = SnackBar(content: Text(LocaleKeys.required_field
                .tr()));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
        ): null :
        (widget.showClear == null) ? IconButton(
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
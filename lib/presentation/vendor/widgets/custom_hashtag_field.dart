import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/presentation/theme.dart';

class CustomHashtagField extends StatefulWidget {
  final String hint;
  final String label;
  final TextEditingController? controller;
  final TextInputType textInputType;
  final int maxLines;
  final bool enabled;
  final int? maxLength;
  final Function(String)? onChanged;
  final List<TextInputFormatter>? inputFormatters;

  const CustomHashtagField({
    super.key,
    required this.hint,
    required this.label,
    this.controller,
    this.textInputType = TextInputType.text,
    this.maxLines = 1,
    this.enabled = true,
    this.maxLength,
    this.onChanged,
    this.inputFormatters,
  });

  @override
  State<CustomHashtagField> createState() => _CustomHashtagFieldState();
}

class _CustomHashtagFieldState extends State<CustomHashtagField> {
  late TextEditingController _controller;
  List<TextSpan> _textSpans = [];

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
    _controller.addListener(_updateTextSpans);
  }

  void _updateTextSpans() {
    final String text = _controller.text;
    final List<TextSpan> spans = [];
    final RegExp hashtagRegExp = RegExp(r'\B#\w+');
    int lastIndex = 0;

    for (Match match in hashtagRegExp.allMatches(text)) {
      if (match.start > lastIndex) {
        spans.add(TextSpan(
          text: text.substring(lastIndex, match.start),
        ));
      }
      spans.add(TextSpan(
        text: text.substring(match.start, match.end),
        style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontWeight: FontWeight.bold,
        ),
      ));
      lastIndex = match.end;
    }

    if (lastIndex < text.length) {
      spans.add(TextSpan(
        text: text.substring(lastIndex),
      ));
    }

    setState(() {
      _textSpans = spans;
    });
  }

  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        TextField(
          controller: _controller,
          maxLength: widget.maxLength,
          onChanged: widget.onChanged,
          enabled: widget.enabled,
          maxLines: widget.maxLines,
          keyboardType: widget.maxLines > 1
              ? TextInputType.multiline
              : widget.textInputType,
          textInputAction: widget.maxLines > 1
              ? TextInputAction.newline
              : TextInputAction.done,
          onEditingComplete: () => node.nextFocus(),
          inputFormatters: widget.inputFormatters,
          decoration: InputDecoration(
            hintText: widget.hint,
            labelText: widget.label,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Theme.of(context).dividerColor,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Theme.of(context).dividerColor,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Theme.of(context).primaryColor,
                width: 2,
              ),
            ),
            filled: true,
            fillColor: widget.enabled
                ? Colors.transparent
                : Theme.of(context).disabledColor.withOpacity(0.1),
          ),
        ),
        if (_textSpans.isNotEmpty) ...[
          const SizedBox(height: 8),
          RichText(
            text: TextSpan(
              style: Theme.of(context).textTheme.bodyMedium,
              children: _textSpans,
            ),
          ),
        ],
      ],
    );
  }

  @override
  void dispose() {
    if (widget.controller == null) {
      _controller.dispose();
    }
    super.dispose();
  }
}

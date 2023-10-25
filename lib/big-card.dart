import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class BigCard extends StatefulWidget {
  const BigCard({
    super.key,
    required this.pair
  });
  final WordPair pair;

  @override
  State<BigCard> createState() => _BigCardState();
}

class _BigCardState extends State<BigCard> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme.displayMedium!.copyWith(
        color: theme.colorScheme.onPrimary
    );

    return Card(
      color: theme.colorScheme.primary,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                  text: widget.pair.first,
                  style: TextStyle(fontWeight: FontWeight.w200, fontSize: style.fontSize)
              ),
              TextSpan(
                  text: widget.pair.second,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: style.fontSize)
              ),
            ],
          ),
        ),
      ),
    );
  }
}
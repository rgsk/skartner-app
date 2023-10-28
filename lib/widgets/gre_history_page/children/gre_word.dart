import 'package:flutter/material.dart';
import 'package:skartner_app/widgets/gre_history_page/__generated/gre_history_page.graphql.dart';

class GreWord extends StatelessWidget {
  Fragment$GreWordFields greWord;
  GreWord({
    super.key,
    required this.greWord,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(greWord.spelling),
    );
  }
}

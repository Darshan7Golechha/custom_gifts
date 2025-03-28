import 'package:flutter/material.dart';

class NoRecordFound extends StatelessWidget {
  const NoRecordFound({
    super.key,
    this.title = '',
    this.subTitle = 'Oops! Nothing here',
    this.actionButton = const SizedBox.shrink(),
  });
  final String title;
  final String subTitle;
  final Widget actionButton;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: Image.asset(
              'assets/images/empty.png',
              height: 150,
            ),
          ),
          if (title.isNotEmpty)
            Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.labelLarge,
            ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 30),
            child: Text(
              subTitle,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          actionButton,
        ],
      ),
    );
  }
}

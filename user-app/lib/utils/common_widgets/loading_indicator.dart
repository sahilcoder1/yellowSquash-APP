import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({required this.show, super.key});
  final bool show;
  @override
  Widget build(BuildContext context) {
    return show
        ? Center(
            child: Container(
              child: const SpinKitCircle(
                size: 65,
                color: Color.fromRGBO(249, 209, 33, 1),
              ),
            ),
          )
        : SizedBox.fromSize();
  }
}

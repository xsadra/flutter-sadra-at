import 'package:flutter/material.dart';

import '../../layout/layout.dart';
import '../../theme/theme.dart';

class AppLogo extends StatelessWidget {
  /// {@macro app_flutter_logo}
  const AppLogo({
    Key? key,
    this.isColored = true,
    this.height,
  }) : super(key: key);

  /// Whether this logo is colored.
  final bool isColored;

  /// The optional height of this logo.
  final double? height;

  @override
  Widget build(BuildContext context) {
    final assetName =
        isColored ? 'assets/images/logo.png' : 'assets/images/logo.png';

    return AnimatedSwitcher(
      duration: MainThemeAnimationDuration.logoChange,
      child: height != null
          ? Image.asset(
              assetName,
              height: height,
            )
          : ResponsiveLayoutBuilder(
              key: Key(assetName),
              small: (_, __) => Image.asset(
                assetName,
                height: 64,
              ),
              medium: (_, __) => Image.asset(
                assetName,
                height: 48,
              ),
              large: (_, __) => Image.asset(
                assetName,
                height: 56,
              ),
            ),
    );
  }
}

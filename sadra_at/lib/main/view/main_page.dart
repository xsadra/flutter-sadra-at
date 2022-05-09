import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sadra_at/layout/layout.dart';

import '../../l10n/l10n.dart';
import '../main.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainView();
  }
}

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _Main(),
    );
  }
}

class _Main extends StatelessWidget {
  const _Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          children: [
            SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset('assets/images/bg.jpg', fit: BoxFit.cover),
            ),
            SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: Column(
                  children: const [
                    MainHeader(),
                    MainSections(),
                  ],
                ),
              ),
            )
          ],
        );
      },
    );
  }
}

class MainHeader extends StatelessWidget {
  const MainHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 96,
      child: ResponsiveLayoutBuilder(
        small: (context, child) => Stack(
          children: const [
            Align(
              child: MainLogo(),
            ),
          ],
        ),
        medium: (context, child) => Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 50,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              MainLogo(),
            ],
          ),
        ),
        large: (context, child) => Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 50,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              MainLogo(),
            ],
          ),
        ),
      ),
    );
  }
}

class MainSections extends StatelessWidget {
  const MainSections({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayoutBuilder(
      small: (context, child) => Column(
        children: const [
          MainBoard(),
        ],
      ),
      medium: (context, child) => Column(
        children: const [
          MainBoard(),
        ],
      ),
      large: (context, child) => Column(
        children: const [
          MainBoard(),
        ],
      ),
    );
  }
}

class MainLogo extends StatelessWidget {
  const MainLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppLogo(
      key: mainLogoKey,
    );
  }
}

class MainBoard extends StatelessWidget {
  const MainBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ResponsiveLayoutBuilder(
        small: (_, __) => const MainBoardContent(
          mainTitleFontSize: 40,
          mainMessageHorizontalDividerSize: 300,
          mainMessageHorizontalPadding: 48,
          mainMessageFontSize: 26,
          mainMessageMaxLines: 6,
          mainSubTitleFontSize: 18,
        ),
        medium: (_, __) => const MainBoardContent(
          mainMessageHorizontalDividerSize: 350,
          mainMessageMaxLines: 4,
          mainMessageHorizontalPadding: 100,
        ),
        large: (_, __) => const MainBoardContent(),
      ),
    );
  }
}

class MainBoardContent extends StatelessWidget {
  const MainBoardContent({
    Key? key,
    this.mainTitleFontSize = 50,
    this.mainSubTitleFontSize = 22,
    this.mainMessageFontSize = 42,
    this.mainMessageMaxLines = 3,
    this.mainMessageHorizontalPadding = 250,
    this.mainMessageHorizontalDividerSize = 400,
  }) : super(key: key);

  final double mainTitleFontSize;
  final double mainSubTitleFontSize;
  final double mainMessageFontSize;
  final int mainMessageMaxLines;
  final double mainMessageHorizontalPadding;
  final double mainMessageHorizontalDividerSize;

  @override
  Widget build(BuildContext context) {
    var l10n = context.l10n;
    var _gap = const ResponsiveHGap(
      small: 80,
      medium: 120,
      large: 150,
    );

    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _gap,
        Text(
          l10n.mainTitle,
          style: GoogleFonts.courierPrime(
            fontSize: mainTitleFontSize,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 40),
        Text(
          l10n.mainSubTitle,
          style: GoogleFonts.courierPrime(
              fontSize: mainSubTitleFontSize, color: Colors.white),
        ),
        const SizedBox(height: 10),
        Container(
            color: Colors.grey,
            height: 2,
            width: mainMessageHorizontalDividerSize),
        const SizedBox(height: 40),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: mainMessageHorizontalPadding),
          child: Text(
            l10n.mainMessage,
            textAlign: TextAlign.center,
            softWrap: true,
            maxLines: mainMessageMaxLines,
            style: GoogleFonts.courierPrime(
              fontSize: mainMessageFontSize,
              color: Colors.white,
              fontWeight: FontWeight.w100,
            ),
          ),
        ),
        const SizedBox(height: 50),
        ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(primary: const Color(0x8866BB6A)),
            child: Text(
              l10n.mainMessageButton,
              style:
                  GoogleFonts.courierPrime(fontSize: 16, color: Colors.white),
            ))
      ],
    );
  }
}

final mainLogoKey = GlobalKey(debugLabel: 'main_logo');

final mainNameKey = GlobalKey(debugLabel: 'main_name');

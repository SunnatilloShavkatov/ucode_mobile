import 'package:ucode_mobile/core/app_bloc/app_bloc.dart';
import 'package:ucode_mobile/core/theme/theme_data.dart';
import 'package:ucode_mobile/router/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

import 'generated/l10n.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        return KeyboardDismisser(
          gestures: const [GestureType.onTap],
          child: MaterialApp.router(
            title: 'Ucode',
            debugShowCheckedModeBanner: false,
            themeMode: ThemeMode.light,
            theme: lightTheme,
            darkTheme: darkTheme,
            routerConfig: router,
            locale: state.appLocale == null
                ? null
                : Locale.fromSubtags(
                    languageCode: state.appLocale!,
                  ),
            supportedLocales: AppLocalization.delegate.supportedLocales,
            localizationsDelegates: const [
              AppLocalization.delegate,
              GlobalCupertinoLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';

class AppTheme {
  static const _regular = FontWeight.w400;
  static const _medium = FontWeight.w500;
  static const _semiBold = FontWeight.w600;
  TextTheme get _textTheme => TextTheme(
    headlineMedium: const TextStyle(fontWeight: _medium, fontSize: 25),
    bodySmall: TextStyle(
      fontWeight: _regular,
      // color: _defaultColorScheme.onSurfaceVariant,
    ),
    headlineSmall: const TextStyle(fontWeight: _medium),
    titleMedium: const TextStyle(fontWeight: _medium),
    bodyLarge: const TextStyle(fontWeight: _regular),
    titleSmall: const TextStyle(fontWeight: _medium),
    bodyMedium: const TextStyle(fontWeight: _regular),
    titleLarge: const TextStyle(fontWeight: _semiBold),
    labelLarge: const TextStyle(fontWeight: _semiBold),
  );

  /// Light [ColorScheme] made with FlexColorScheme v8.1.0.
  /// Requires Flutter 3.22.0 or later.
  ColorScheme get _colorScheme => ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF1A2C42),
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFFB1C0DD),
    onPrimaryContainer: Color(0xFF000000),
    primaryFixed: Color(0xFFCAD2DB),
    primaryFixedDim: Color(0xFF9FACBC),
    onPrimaryFixed: Color(0xFF000000),
    onPrimaryFixedVariant: Color(0xFF04070B),
    secondary: Color(0xFFE59A18),
    onSecondary: Color(0xFF000000),
    secondaryContainer: Color(0xFFE0BD80),
    onSecondaryContainer: Color(0xFF000000),
    secondaryFixed: Color(0xFFF3CF8E),
    secondaryFixedDim: Color(0xFFEEB758),
    onSecondaryFixed: Color(0xFF000000),
    onSecondaryFixedVariant: Color(0xFF000000),
    tertiary: Color(0xFFF0B03F),
    onTertiary: Color(0xFF000000),
    tertiaryContainer: Color(0xFFE9CFA1),
    onTertiaryContainer: Color(0xFF000000),
    tertiaryFixed: Color(0xFFEDD6AD),
    tertiaryFixedDim: Color(0xFFE3C182),
    onTertiaryFixed: Color(0xFF000000),
    onTertiaryFixedVariant: Color(0xFF291B03),
    error: Color(0xFFB00020),
    onError: Color(0xFFFFFFFF),
    errorContainer: Color(0xFFFCD9DF),
    onErrorContainer: Color(0xFF000000),
    surface: Color(0xFFFCFCFC),
    onSurface: Color(0xFF111111),
    surfaceDim: Color(0xFFE0E0E0),
    surfaceBright: Color(0xFFFDFDFD),
    surfaceContainerLowest: Color(0xFFFFFFFF),
    surfaceContainerLow: Color(0xFFF8F8F8),
    surfaceContainer: Color(0xFFF3F3F3),
    surfaceContainerHigh: Color(0xFFEDEDED),
    surfaceContainerHighest: Color(0xFFE7E7E7),
    onSurfaceVariant: Color(0xFF393939),
    outline: Color(0xFF919191),
    outlineVariant: Color(0xFFD1D1D1),
    shadow: Color(0xFF000000),
    scrim: Color(0xFF000000),
    inverseSurface: Color(0xFF2A2A2A),
    onInverseSurface: Color(0xFFF1F1F1),
    inversePrimary: Color(0xFF9EACBD),
    surfaceTint: Color(0xFF1A2C42),
  );

  ThemeData get theme => ThemeData.from(
    colorScheme: _colorScheme,
    //textTheme: GoogleFonts.robotoTextTheme(_textTheme),
  ).copyWith(
    appBarTheme: AppBarTheme(
      backgroundColor: _colorScheme.primary,
      foregroundColor: _colorScheme.onPrimary,
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),
  );
}

class DarkAppTheme extends AppTheme {
  @override
  ColorScheme get _colorScheme => ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFF60748A),
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFF1A2C42),
    onPrimaryContainer: Color(0xFFFFFFFF),
    primaryFixed: Color(0xFFCAD2DB),
    primaryFixedDim: Color(0xFF9FACBC),
    onPrimaryFixed: Color(0xFF000000),
    onPrimaryFixedVariant: Color(0xFF04070B),
    secondary: Color(0xFFEBB251),
    onSecondary: Color(0xFF000000),
    secondaryContainer: Color(0xFFD48608),
    onSecondaryContainer: Color(0xFFFFFFFF),
    secondaryFixed: Color(0xFFF3CF8E),
    secondaryFixedDim: Color(0xFFEEB758),
    onSecondaryFixed: Color(0xFF000000),
    onSecondaryFixedVariant: Color(0xFF000000),
    tertiary: Color(0xFFF4CA7E),
    onTertiary: Color(0xFF000000),
    tertiaryContainer: Color(0xFFC68E2D),
    onTertiaryContainer: Color(0xFFFFFFFF),
    tertiaryFixed: Color(0xFFEDD6AD),
    tertiaryFixedDim: Color(0xFFE3C182),
    onTertiaryFixed: Color(0xFF000000),
    onTertiaryFixedVariant: Color(0xFF291B03),
    error: Color(0xFFCF6679),
    onError: Color(0xFF000000),
    errorContainer: Color(0xFFB1384E),
    onErrorContainer: Color(0xFFFFFFFF),
    surface: Color(0xFF080808),
    onSurface: Color(0xFFF1F1F1),
    surfaceDim: Color(0xFF060606),
    surfaceBright: Color(0xFF2C2C2C),
    surfaceContainerLowest: Color(0xFF010101),
    surfaceContainerLow: Color(0xFF0E0E0E),
    surfaceContainer: Color(0xFF151515),
    surfaceContainerHigh: Color(0xFF1D1D1D),
    surfaceContainerHighest: Color(0xFF282828),
    onSurfaceVariant: Color(0xFFCACACA),
    outline: Color(0xFF777777),
    outlineVariant: Color(0xFF414141),
    shadow: Color(0xFF000000),
    scrim: Color(0xFF000000),
    inverseSurface: Color(0xFFE8E8E8),
    onInverseSurface: Color(0xFF2A2A2A),
    inversePrimary: Color(0xFF303841),
    surfaceTint: Color(0xFF60748A),
  );
}

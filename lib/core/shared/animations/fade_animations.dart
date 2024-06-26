import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_store_app/core/languages/languages_keys.dart';
import 'package:flutter_store_app/core/services/shared_preference/shared_preferences.dart';

final String? _currentAppLanguage = AppSharedPreferences.instance.getString(LanguagesKeys.language);

class FadeInUpAnimation extends StatelessWidget {
  const FadeInUpAnimation(
      {super.key,
      required this.child,
      this.duration = const Duration(milliseconds: 500),
      this.delay = const Duration(microseconds: 300)});

  final Widget child;
  final Duration duration;
  final Duration delay;

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      duration: duration,
      delay: delay,
      child: child,
    );
  }
}

class FadeInDownAnimation extends StatelessWidget {
  const FadeInDownAnimation(
      {super.key,
      required this.child,
      this.duration = const Duration(milliseconds: 500),
      this.delay = const Duration(microseconds: 300)});

  final Widget child;
  final Duration duration;
  final Duration delay;

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      duration: duration,
      delay: delay,
      child: child,
    );
  }
}

class FadeInLeftAnimation extends StatelessWidget {
  const FadeInLeftAnimation(
      {super.key,
      required this.child,
      this.duration = const Duration(milliseconds: 500),
      this.delay = const Duration(microseconds: 300)});

  final Widget child;
  final Duration duration;
  final Duration delay;

  @override
  Widget build(BuildContext context) {
    return _currentAppLanguage == "en"
        ? FadeInLeft(
            duration: duration,
            delay: delay,
            child: child,
          )
        : FadeInRight(
            duration: duration,
            delay: delay,
            child: child,
          );
  }
}

class FadeInRightAnimation extends StatelessWidget {
  const FadeInRightAnimation(
      {super.key,
      required this.child,
      this.duration = const Duration(milliseconds: 300),
      this.delay = const Duration(microseconds: 300)});

  final Widget child;
  final Duration duration;
  final Duration delay;

  @override
  Widget build(BuildContext context) {
    return _currentAppLanguage == "en"
        ? FadeInRight(
            duration: duration,
            delay: delay,
            child: child,
          )
        : FadeInLeft(
            duration: duration,
            delay: delay,
            child: child,
          );
  }
}

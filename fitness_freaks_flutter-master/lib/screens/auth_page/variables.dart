import 'package:flutter/material.dart';

enum Segment {
  login,
  signup,
}

extension SegmentsExtension on Segment {
  String get label {
    switch (this) {
      case Segment.login:
        return 'Login';
      case Segment.signup:
        return 'Sign up';
      default:
        return 'Unrecognized';
    }
  }

  bool get isLogin => this == Segment.login;

  bool get isSignup => this == Segment.signup;
}

final selectedSegment = ValueNotifier(Segment.login);
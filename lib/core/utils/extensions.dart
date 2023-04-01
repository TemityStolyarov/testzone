import 'package:flutter/material.dart';
import 'package:testzone/generated/l10n.dart';

extension LocaleContext on BuildContext {
  S get s => S.of(this);
}

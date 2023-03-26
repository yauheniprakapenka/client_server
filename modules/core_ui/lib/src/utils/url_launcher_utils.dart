import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';

LaunchMode get defaultLaunchMode {
  if (kIsWeb) {
    return LaunchMode.platformDefault;
  }
  if (Platform.isAndroid) {
    return LaunchMode.externalApplication;
  }
  return LaunchMode.platformDefault;
}

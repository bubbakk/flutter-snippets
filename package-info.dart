// remember to add device_info: ^0.4.2+2 into dependancies pubspec.yaml file

import 'package:package_info/package_info.dart';

Future<List<String>> getAppInfo() async {

  PackageInfo packageInfo = await PackageInfo.fromPlatform();

  String appName = packageInfo.appName;
  String packageName = packageInfo.packageName;
  String version = packageInfo.version;
  String buildNumber = packageInfo.buildNumber;

  print("App info");
  print("----------------------------------");
  print("App name:     $appName");
  print("Package name: $packageName");
  print("version:      $version");
  print("Build number: $buildNumber");
  print("");

  return [appName, packageName, version, buildNumber];
}
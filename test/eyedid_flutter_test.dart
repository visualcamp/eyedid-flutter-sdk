import 'package:flutter_test/flutter_test.dart';
import 'package:eyedid_flutter/eyedid_flutter.dart';
import 'package:eyedid_flutter/eyedid_flutter_platform_interface.dart';
import 'package:eyedid_flutter/eyedid_flutter_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockEyedidFlutterPlatform
    with MockPlatformInterfaceMixin
    implements EyedidFlutterPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final EyedidFlutterPlatform initialPlatform = EyedidFlutterPlatform.instance;

  test('$MethodChannelEyedidFlutter is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelEyedidFlutter>());
  });

  test('getPlatformVersion', () async {
    EyedidFlutter eyedidFlutterPlugin = EyedidFlutter();
    MockEyedidFlutterPlatform fakePlatform = MockEyedidFlutterPlatform();
    EyedidFlutterPlatform.instance = fakePlatform;

    expect(await eyedidFlutterPlugin.getPlatformVersion(), '42');
  });
}

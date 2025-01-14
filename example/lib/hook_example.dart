import 'package:beike_aspectd/aspectd.dart';
@Aspect()
@pragma("vm:entry-point")
class CallDemo {
  @pragma("vm:entry-point")
  CallDemo();

//实例方法
// @Execute("package:.*\.dart", ".*", ".*", isRegex: true)
  @Execute("package:.*.dart", ".*", ".*", isRegex: true)
  @pragma("vm:entry-point")
  dynamic _incrementCounter4(PointCut pointcut) {
    print('[beike_aspectd]: call instance method2!!!!!!!!!! normal:${pointcut.function} , ${pointcut.sourceInfos}');
    return pointcut.proceed();
  }

  @Execute("package:.*.dart", ".*", "+.*", isRegex: true)
  @pragma("vm:entry-point")
  dynamic _incrementCounter5(PointCut pointcut) {
    print('[beike_aspectd]: call instance method3!!!!!!!!!! static:${pointcut.function}');
    return pointcut.proceed();
  }
}


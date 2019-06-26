import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_demo1/demo2/widget/architecture_page.dart';
import 'package:flutter_demo1/demo2//widget/advanced_page.dart';
import 'package:flutter_demo1/demo2/widget/animation/animation_page.dart';
import 'package:flutter_demo1/demo2/widget/gesture/drag_page.dart';
import 'package:flutter_demo1/demo2/widget/key/globalkey_form_page.dart';
import 'package:flutter_demo1/demo2/widget/common/hide_and_show_page.dart';
import 'package:flutter_demo1/demo2/widget/inherited/inherited_w_page.dart';
import 'package:flutter_demo1/demo2/widget/local_native/channel_page.dart';
import 'package:flutter_demo1/demo2/widget/notification/notification_page.dart';
import 'package:flutter_demo1/demo2/widget/simple_redux/count_redux_page.dart';
import 'package:flutter_demo1/demo2/widget/stream/streams_page.dart';
import 'package:flutter_demo1/demo2/widget/base_widget/base_widget_page.dart';
import 'package:flutter_demo1/demo2/widget/base_widget/container_page.dart';
import 'package:flutter_demo1/demo2/widget/simple_bloc/search_page.dart';
import 'package:flutter_demo1/demo2/widget/database/data_page.dart';
import 'package:flutter_demo1/demo2/widget/gesture/dismissed_page.dart';
import 'package:flutter_demo1/demo2/widget/gesture/gesture_page.dart';
import 'package:flutter_demo1/demo2/widget/lifecycle/lifecycle_page.dart';
import 'package:flutter_demo1/demo2/widget/loadimg/loadImg_page.dart';
import 'package:flutter_demo1/demo2/widget/localizations/localizations_study.dart';
import 'package:flutter_demo1/demo2/widget/network/network_page.dart';
import 'package:flutter_demo1/demo2/widget/route/route_page.dart';
import 'package:flutter_demo1/demo2/widget/route/route_page_with_value_one.dart';
import 'package:flutter_demo1/demo2/widget/home_page.dart';
//import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
//  debugPaintSizeEnabled = true;      //打开视觉调试开关

  runApp(new MaterialApp(
//    theme: defaultTargetPlatform == TargetPlatform.iOS
//        ? kiOSTheme
//        : kAndroidTheme,
//    theme: kAndroidTheme,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        StudyLocalizationsDelegate.delegate,
      ], supportedLocales: [
    const Locale('zh', 'CH'),
    const Locale('en', 'US'),
  ], routes: <String, WidgetBuilder>{
    '/RoutePage': (BuildContext context) => new RoutePage(),
    '/RoutePageWithValue1': (BuildContext context) => new RoutePageWithValue1(),
    '/DataPage': (BuildContext context) => new DataAppPage(),
    '/GesturePage': (BuildContext context) => new GesturePage(),
    '/DismissedPage': (BuildContext context) => new DismissedPage(),
    '/LoadImgPage': (BuildContext context) => new LoadImgPage(),
    '/LifecyclePage': (BuildContext context) => new LifecyclePage(),
    '/NetworkPage': (BuildContext context) => new NetworkPage(),
    '/AdvancedPage': (BuildContext context) => new AdvancedPage(),
    '/InheritedWidgetTestPage': (BuildContext context) => new InheritedWidgetTestContainer(),
    '/GlobalKeyFromPage': (BuildContext context) => new GlobalKeyFromPage(),
    '/NotificationPage': (BuildContext context) => new NotificationPage(),
    '/HideAndShowPage': (BuildContext context) => new HideAndShowPage(),
    '/StreamPage': (BuildContext context) => new StreamPage(),
    '/DragPage': (BuildContext context) => new DragPage(),
    '/ContainerPage': (BuildContext context) => new ContainerPage(),
    '/BaseWidgetPage': (BuildContext context) => new BaseWidgetPage(),
    '/AnimationPage': (BuildContext context) => new AnimationPage(),
    '/SearchPage': (BuildContext context) => new SearchPage(),
    '/HomePage': (BuildContext context) => new HomePage(),
    '/CountReduxPage': (BuildContext context) => new CountReduxPage(),
    '/ArchitecturePage': (BuildContext context) => new ArchitecturePage(),
    '/ChannelPage': (BuildContext context) => new ChannelPage(),
  }, home: new HomePage()));
}

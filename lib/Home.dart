import 'package:flutter/material.dart';
import 'demo/alert_dialog_demo.dart';
import 'demo/animation/animatin_demo.dart';
import 'demo/basic_demo.dart';
import 'demo/bloc/bloc_demo.dart';
import 'demo/bottom_navigation_bar_demo.dart';
import 'demo/BottomSheetDemo.dart';
import 'demo/ButtonDemo.dart';
import 'demo/card_demo.dart';
import 'demo/checkbox_demo.dart';
import 'demo/chip_demo.dart';
import 'demo/data_table_demo.dart';
import 'demo/date_time_demo.dart';
import 'demo/drawer_demo.dart';
import 'demo/expansion_panel_demo.dart';
import 'demo/floating_action_button_demo.dart';
import 'demo/form_demo.dart';
import 'demo/http_demo.dart';
import 'demo/i18n/i18n_demo.dart';
import 'demo/layout_demo.dart';
import 'demo/listview_demo.dart';
import 'demo/material_components.dart';
import 'demo/navigator_demo.dart';
import 'demo/paginated_data_table_demo.dart';
import 'demo/popup_menu_button_demo.dart';
import 'demo/radio_demo.dart';
import 'demo/rxdart_demo.dart';
import 'demo/simple_dialog_demo.dart';
import 'demo/slider_demo.dart';
import 'demo/sliver_demo.dart';
import 'demo/snack_bar_demo.dart';
import 'demo/state_management_demo.dart';
import 'demo/stepper_demo.dart';
import 'demo/stream_demo.dart';
import 'demo/switch_demo.dart';
import 'demo/view_demo.dart';
import 'demo1/pavlova_demo.dart';
import 'demo1/packed_demo.dart';
import 'demo1/row_expanded_visual.dart';
import 'demo1/lake_demo.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text('Flutter'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () => debugPrint('search icon'),
            )
          ],
          elevation: 0,
          bottom: TabBar(
              unselectedLabelColor: Colors.black38,
              indicatorColor: Colors.black54,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 1.0,
              tabs: <Widget>[
                Tab(icon: Icon(Icons.local_florist)),
                Tab(icon: Icon(Icons.change_history)),
                Tab(icon: Icon(Icons.directions_bike)),
                Tab(icon: Icon(Icons.view_quilt)),
                Tab(icon: Icon(Icons.view_agenda)),
                Tab(icon: Icon(Icons.view_array)),
                Tab(icon: Icon(Icons.view_carousel)),
                Tab(icon: Icon(Icons.view_column)),
                Tab(icon: Icon(Icons.view_column)),
                Tab(icon: Icon(Icons.view_column)),
              ]),
        ),
        body: TabBarView(children: <Widget>[
          StateManagementDemo(),
          StepperDemo(),
          StreamDemo(),
          PavlovaDemo(title: 'PavlovaDemo',),
          RowExpandedVisualDemo(title: 'RowExpandedVisualDemo',),
          LakeViewDemo(),
          SimpleDialogDemo(),
          SliderDemo(),
          SliverDemo(),
          SnackBarDemo(),
        ]),
//         drawer: ,
//       bottomNavigationBar: ,
      ),
    );
  }
}

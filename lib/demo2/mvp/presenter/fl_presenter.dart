import 'package:flutter_demo1/demo2/model/fl_model.dart';
import 'package:flutter_demo1/demo2/mvp/mvp.dart';


abstract class FLPresenter implements IPresenter{
  loadFLData(int pageNum,int pageSize);
}


abstract class FLView implements IView<FLPresenter>{
  void onloadFLSuc(List<FLModel> list);
  void onloadFLFail();
}

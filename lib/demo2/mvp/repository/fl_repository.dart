

import 'dart:async';
import 'package:flutter_demo1/demo2/model/fl_model.dart';


abstract class FLRepository{
  Future<List<FLModel>> fetch(int pageNum,int pageSize);
}

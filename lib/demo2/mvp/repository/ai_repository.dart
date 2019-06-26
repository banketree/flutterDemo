

import 'dart:async';
import 'package:flutter_demo1/demo2/model/ai_model.dart';


abstract class AIRepository{
  Future<List<AIModel>> fetch(String type,int pageNum,int pageSize);
}

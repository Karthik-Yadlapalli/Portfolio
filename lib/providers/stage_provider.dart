import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/controllers/stage_controll.dart';

final stageProvider = ChangeNotifierProvider<StageCtrl>((ref) => StageCtrl());
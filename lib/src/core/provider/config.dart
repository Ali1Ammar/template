import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starter/env/env.dart';

final configProvider = Provider((ref) => Env());

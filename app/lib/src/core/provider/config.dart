import 'package:app/env/env.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final configProvider = Provider((ref) => Env());

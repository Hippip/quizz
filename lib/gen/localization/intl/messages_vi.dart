// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a vi locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'vi';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "comment": MessageLookupByLibrary.simpleMessage(
            "Kiểm dịch là thời gian hoàn hảo để dành cả ngày để học điều gì đó mới, từ bất cứ đâu!"),
        "goodbye": MessageLookupByLibrary.simpleMessage("Tạm biệt"),
        "hello": MessageLookupByLibrary.simpleMessage("Xin chào"),
        "language": MessageLookupByLibrary.simpleMessage("Language"),
        "learn": MessageLookupByLibrary.simpleMessage("Học mọi lúc mọi nơi"),
        "uiTesting": MessageLookupByLibrary.simpleMessage("UI TESTING")
      };
}

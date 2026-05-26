//import 'package:characters/src/extensions.dart';
import 'package:localized_rich_text/localized_rich_text.dart';

extension CustomListLocalizedRichTextKey on List<LocalizedRichTextKey> {
  ///This function return the [List<LocalizedRichTextKey>] ordered by the [text] to localize.
  ///
  ///The `keys` have to be translated in the same order like they are declared in the [text] to localize
  List<LocalizedRichTextKey> orderedByText(List<String> textSplitted) {
    try {
      final keys = map((i) => i.key).toList();

      final List<LocalizedRichTextKey> listToReturn = [];

      if (textSplitted.isNotEmpty) {
        for (final key in keys) {
          String keyFounded = '';

          for (final __ in textSplitted) {
            keyFounded += __;

            if (keyFounded.contains(key)) {
              final keyToAdd = firstWhere((element) => element.key == key);

              if (!listToReturn.contains(keyToAdd)) {
                listToReturn.add(keyToAdd);
              }
              break;
            }
          }
        }
        return listToReturn;
      }
      return this;
    } catch (e) {
      return this;
    }
  }
}

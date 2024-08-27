import 'package:get/get.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => <String, Map<String, String>>{
        'en_US': <String, String>{
          'search_for_anything': 'Search for anything',
          'product': 'Product',
          'add_image': 'Image',
          'add_text': 'Text',
        },
        'he_IL': <String, String>{
          'baller_academy': 'Baller Academy',
        },
      };
}

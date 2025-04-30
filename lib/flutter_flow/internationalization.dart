import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'de', 'nl'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? deText = '',
    String? nlText = '',
  }) =>
      [enText, deText, nlText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    '6qy2yxp8': {
      'en': 'Airscent',
      'de': '',
      'nl': '',
    },
    'o6v2crnj': {
      'en': 'Device Read out',
      'de': '',
      'nl': '',
    },
    'z4xsj9r6': {
      'en': '-----',
      'de': '',
      'nl': '',
    },
    'sy2b145b': {
      'en': 'Hello World',
      'de': '',
      'nl': '',
    },
    '7b6nibxg': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
  },
  // DeviceInfoPage
  {
    'yjn1zdkl': {
      'en': 'Airscent',
      'de': '',
      'nl': '',
    },
    'p8j23lac': {
      'en': 'Device Info',
      'de': '',
      'nl': '',
    },
    't8ecxc0c': {
      'en': 'Button',
      'de': '',
      'nl': '',
    },
    '41ukqtvn': {
      'en': 'Button',
      'de': '',
      'nl': '',
    },
    'xoga70hj': {
      'en': 'Button',
      'de': '',
      'nl': '',
    },
    'vq7gtufv': {
      'en': 'Button',
      'de': '',
      'nl': '',
    },
    '1kt47jk7': {
      'en': 'Home',
      'de': '',
      'nl': '',
    },
  },
  // Miscellaneous
  {
    'a0lcloyx': {
      'en': '',
      'de': '',
      'nl': '',
    },
    'envdp6sn': {
      'en': '',
      'de': '',
      'nl': '',
    },
    'aqxw4pae': {
      'en': '',
      'de': '',
      'nl': '',
    },
    'adnpkn51': {
      'en': '',
      'de': '',
      'nl': '',
    },
    '9orz00wc': {
      'en': '',
      'de': '',
      'nl': '',
    },
    'qt0jssqi': {
      'en': '',
      'de': '',
      'nl': '',
    },
    'l9wrookh': {
      'en': '',
      'de': '',
      'nl': '',
    },
    'w8ejs18n': {
      'en': '',
      'de': '',
      'nl': '',
    },
    'mqdhjvow': {
      'en': '',
      'de': '',
      'nl': '',
    },
    'azruf3gr': {
      'en': '',
      'de': '',
      'nl': '',
    },
    'fq0zgbmc': {
      'en': '',
      'de': '',
      'nl': '',
    },
    '8160fl51': {
      'en': '',
      'de': '',
      'nl': '',
    },
    'czwfc0es': {
      'en': '',
      'de': '',
      'nl': '',
    },
    '1ilh6img': {
      'en': '',
      'de': '',
      'nl': '',
    },
    'fq6jf94w': {
      'en': '',
      'de': '',
      'nl': '',
    },
    '2etwd6y8': {
      'en': '',
      'de': '',
      'nl': '',
    },
    'd110ftwf': {
      'en': '',
      'de': '',
      'nl': '',
    },
    '1mx6k3uw': {
      'en': '',
      'de': '',
      'nl': '',
    },
    'thin10n9': {
      'en': '',
      'de': '',
      'nl': '',
    },
    'zc94tpov': {
      'en': '',
      'de': '',
      'nl': '',
    },
    'gjptlgr0': {
      'en': '',
      'de': '',
      'nl': '',
    },
    'u9iwmbaf': {
      'en': '',
      'de': '',
      'nl': '',
    },
    'zb21qbld': {
      'en': '',
      'de': '',
      'nl': '',
    },
    'b7gsa3b3': {
      'en': '',
      'de': '',
      'nl': '',
    },
    '5guisi48': {
      'en': '',
      'de': '',
      'nl': '',
    },
  },
].reduce((a, b) => a..addAll(b));

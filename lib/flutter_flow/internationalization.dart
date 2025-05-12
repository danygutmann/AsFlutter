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
    'lh0kljs4': {
      'en': 'Button',
      'de': 'Taste',
      'nl': 'Knop',
    },
    'np31qlp2': {
      'en': 'Search again for Devices',
      'de': 'Erneut nach Geräten suchen',
      'nl': 'Zoek opnieuw naar apparaten',
    },
    'd6l4o38b': {
      'en': 'WiFi Settings',
      'de': 'Erneut nach Geräten suchen',
      'nl': 'Zoek opnieuw naar apparaten',
    },
    'wfbz81sc': {
      'en': 'Search again for Devices',
      'de': 'Erneut nach Geräten suchen',
      'nl': 'Zoek opnieuw naar apparaten',
    },
    'fez4o11h': {
      'en': 'Development',
      'de': 'Entwicklung',
      'nl': 'Ontwikkeling',
    },
    '7b6nibxg': {
      'en': 'Home',
      'de': 'Heim',
      'nl': 'Thuis',
    },
  },
  // DeviceInfoPage
  {
    'yjn1zdkl': {
      'en': 'Airscent',
      'de': 'Luftduft',
      'nl': 'Luchtgeur',
    },
    'p8j23lac': {
      'en': 'Device Info',
      'de': 'Geräteinformationen',
      'nl': 'Apparaatinfo',
    },
    't8ecxc0c': {
      'en': 'Button',
      'de': 'Taste',
      'nl': 'Knop',
    },
    '41ukqtvn': {
      'en': 'Button',
      'de': 'Taste',
      'nl': 'Knop',
    },
    'xoga70hj': {
      'en': 'Button',
      'de': 'Taste',
      'nl': 'Knop',
    },
    'vq7gtufv': {
      'en': 'Button',
      'de': 'Taste',
      'nl': 'Knop',
    },
    '1kt47jk7': {
      'en': 'Home',
      'de': 'Heim',
      'nl': 'Thuis',
    },
  },
  // DataViewPage
  {
    'xa0x8nza': {
      'en': 'Button',
      'de': 'Taste',
      'nl': 'Knop',
    },
    'or7e6748': {
      'en': 'Refresh',
      'de': 'Erneut nach Geräten suchen',
      'nl': 'Zoek opnieuw naar apparaten',
    },
    'xc0a0cgz': {
      'en': 'Device Read out',
      'de': 'Gerät auslesen',
      'nl': 'Apparaat uitlezen',
    },
    '2evech9l': {
      'en': '-----',
      'de': '-----',
      'nl': '-----',
    },
    'uhod56og': {
      'en': 'Home',
      'de': 'Heim',
      'nl': 'Thuis',
    },
  },
  // DeviceMain
  {
    '28kgxv65': {
      'en': 'Button',
      'de': 'Taste',
      'nl': 'Knop',
    },
    '6fkawboc': {
      'en': 'Add new Line',
      'de': 'Erneut nach Geräten suchen',
      'nl': 'Zoek opnieuw naar apparaten',
    },
    'blb0tbn9': {
      'en': 'Read all Lines',
      'de': 'Erneut nach Geräten suchen',
      'nl': 'Zoek opnieuw naar apparaten',
    },
    '75u35y99': {
      'en': 'Device Options',
      'de': 'Erneut nach Geräten suchen',
      'nl': 'Zoek opnieuw naar apparaten',
    },
    '7hfwmk0f': {
      'en': 'Home',
      'de': 'Heim',
      'nl': 'Thuis',
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

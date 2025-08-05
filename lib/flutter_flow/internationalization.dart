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
      'de': 'WLAN-Einstellungen',
      'nl': 'WiFi-instellingen',
    },
    'wlnkb0eb': {
      'en': 'App Settings',
      'de': 'App-Einstellungen',
      'nl': 'App-instellingen',
    },
    '7b6nibxg': {
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
    'udo2uk8w': {
      'en': 'Add new Line',
      'de': 'Neue Zeile hinzufügen',
      'nl': 'Nieuwe regel toevoegen',
    },
    'blb0tbn9': {
      'en': 'Read all Lines',
      'de': 'Alle Zeilen lesen',
      'nl': 'Lees alle regels',
    },
    '75u35y99': {
      'en': 'Device Options',
      'de': 'Geräteoptionen',
      'nl': 'Apparaatopties',
    },
    '7hfwmk0f': {
      'en': 'Home',
      'de': 'Heim',
      'nl': 'Thuis',
    },
  },
  // AppSettings
  {
    '81znzqrm': {
      'en': 'Button',
      'de': 'Taste',
      'nl': 'Knop',
    },
    'w1cvfass': {
      'en': 'German  Language',
      'de': 'Deutsche Sprache',
      'nl': 'Duitse taal',
    },
    'ib9jf9ut': {
      'en': 'English Language',
      'de': 'Englische Sprache',
      'nl': 'Engelse taal',
    },
    '2ax3wv3r': {
      'en': 'Flaams Language',
      'de': 'Flaams Sprache',
      'nl': 'Flaams Taal',
    },
    'syq1nb55': {
      'en': 'App Information',
      'de': 'App-Informationen',
      'nl': 'App-info',
    },
    'vrnjifmc': {
      'en': 'Home',
      'de': 'Heim',
      'nl': 'Thuis',
    },
  },
  // DeviceOptions
  {
    'r54raurg': {
      'en': 'Button',
      'de': 'Taste',
      'nl': 'Knop',
    },
    '8pcomz06': {
      'en': 'Set Date and Time',
      'de': 'Datum und Uhrzeit einstellen',
      'nl': 'Datum en tijd instellen',
    },
    '8l3e8em3': {
      'en': 'Set Fan Frequency',
      'de': 'Lüfterfrequenz einstellen',
      'nl': 'Ventilatorfrequentie instellen',
    },
    'ijcfpvq8': {
      'en': 'enter an Alias',
      'de': 'Geben Sie einen Alias ein',
      'nl': 'voer een alias in',
    },
    '76u9mrxl': {
      'en': 'Set Alias',
      'de': 'Alias festlegen',
      'nl': 'Alias instellen',
    },
    '8s2k2s2g': {
      'en': 'Restart Device',
      'de': 'Gerät neu starten',
      'nl': 'Apparaat opnieuw opstarten',
    },
    '98h53gd7': {
      'en': 'Delete all Lines',
      'de': 'Alle Zeilen löschen',
      'nl': 'Verwijder alle regels',
    },
    '00glkjp7': {
      'en': 'Default Program',
      'de': 'Standardprogramm',
      'nl': 'Standaardprogramma',
    },
    'm1e42b2p': {
      'en': 'WiFi off',
      'de': 'WLAN aus',
      'nl': 'WiFi uit',
    },
    '1z8zwu64': {
      'en': 'Home',
      'de': 'Heim',
      'nl': 'Thuis',
    },
  },
  // DeviceLine
  {
    '7sn4fw5z': {
      'en': 'Button',
      'de': 'Taste',
      'nl': 'Knop',
    },
    'ulk8gu0f': {
      'en': 'Weekdays',
      'de': 'Wochentage',
      'nl': 'Weekdagen',
    },
    '8o7o9fx7': {
      'en': 'Mon',
      'de': 'Mo',
      'nl': 'Ma',
    },
    'b9ddx8ue': {
      'en': 'Tue',
      'de': 'Di',
      'nl': 'Di',
    },
    '1iva8cn1': {
      'en': 'Wed',
      'de': 'Mi',
      'nl': 'Wo',
    },
    'ylpfmh4a': {
      'en': 'Thu',
      'de': 'Do',
      'nl': 'Do',
    },
    'hspqjsna': {
      'en': 'Fri',
      'de': 'Fr',
      'nl': 'Vr',
    },
    'nj857cko': {
      'en': 'Sat',
      'de': 'Sa',
      'nl': 'Zat',
    },
    'y7rwlswz': {
      'en': 'Sun',
      'de': 'So',
      'nl': 'Zon',
    },
    'cxc0tt92': {
      'en': 'Times',
      'de': 'Mal',
      'nl': 'Tijden',
    },
    '3agoxb1s': {
      'en': 'Begin',
      'de': 'Beginnen',
      'nl': 'Beginnen',
    },
    'pkap45c0': {
      'en': 'Hour',
      'de': 'Stunde',
      'nl': 'Uur',
    },
    '615ux8yf': {
      'en': 'Search...',
      'de': 'Suchen...',
      'nl': 'Zoekopdracht...',
    },
    'ub2miwra': {
      'en': '0',
      'de': '0',
      'nl': '0',
    },
    'wx560b5l': {
      'en': '1',
      'de': '1',
      'nl': '1',
    },
    'uzbzios4': {
      'en': '2',
      'de': '2',
      'nl': '2',
    },
    '5sw926zs': {
      'en': '3',
      'de': '3',
      'nl': '3',
    },
    'hzejpysw': {
      'en': '4',
      'de': '4',
      'nl': '4',
    },
    'z21qxidy': {
      'en': '5',
      'de': '5',
      'nl': '5',
    },
    'fz83jnkk': {
      'en': '6',
      'de': '6',
      'nl': '6',
    },
    'ajnac6ce': {
      'en': '7',
      'de': '7',
      'nl': '7',
    },
    'pkb292y8': {
      'en': '8',
      'de': '8',
      'nl': '8',
    },
    'mkazk7r3': {
      'en': '9',
      'de': '9',
      'nl': '9',
    },
    'gjk5txrd': {
      'en': '10',
      'de': '10',
      'nl': '10',
    },
    'v1agejfs': {
      'en': '11',
      'de': '11',
      'nl': '11',
    },
    '5qzorg5t': {
      'en': '12',
      'de': '12',
      'nl': '12',
    },
    '2wwevl8y': {
      'en': '13',
      'de': '13',
      'nl': '13',
    },
    'jdvsebbi': {
      'en': '14',
      'de': '14',
      'nl': '14',
    },
    'g3vsq10l': {
      'en': '15',
      'de': '15',
      'nl': '15',
    },
    '9lorkx1e': {
      'en': '16',
      'de': '16',
      'nl': '16',
    },
    'xol5agex': {
      'en': '17',
      'de': '17',
      'nl': '17',
    },
    'q0u7zuky': {
      'en': '18',
      'de': '18',
      'nl': '18',
    },
    '7dgtvy5e': {
      'en': '19',
      'de': '19',
      'nl': '19',
    },
    '2qfmh802': {
      'en': '20',
      'de': '20',
      'nl': '20',
    },
    'zae25k8b': {
      'en': '21',
      'de': '21',
      'nl': '21',
    },
    '3c7nzg8r': {
      'en': '22',
      'de': '22',
      'nl': '22',
    },
    'uzwl2xce': {
      'en': '23',
      'de': '23',
      'nl': '23',
    },
    'gbo7hmvo': {
      'en': '24',
      'de': 'für 24 Sekunden',
      'nl': 'gedurende 24 seconden',
    },
    'w7xsubme': {
      'en': ' : ',
      'de': ':',
      'nl': ':',
    },
    '4kjfu4mo': {
      'en': 'Minute',
      'de': 'Minute',
      'nl': 'Minuut',
    },
    'hoh2uqbr': {
      'en': 'Search...',
      'de': 'Suchen...',
      'nl': 'Zoekopdracht...',
    },
    '1ilhx4i5': {
      'en': '0',
      'de': '0',
      'nl': '0',
    },
    'z0lqqzs2': {
      'en': '15',
      'de': '15',
      'nl': '15',
    },
    'smv9knaf': {
      'en': '30',
      'de': '30',
      'nl': '30',
    },
    'zadlg96e': {
      'en': '45',
      'de': '45',
      'nl': '45',
    },
    'khcmz8om': {
      'en': 'Ending: ',
      'de': 'Ende:',
      'nl': 'Einde:',
    },
    'qvxlv4tz': {
      'en': 'Hour',
      'de': 'Stunde',
      'nl': 'Uur',
    },
    'oe8sngeu': {
      'en': 'Search...',
      'de': 'Suchen...',
      'nl': 'Zoekopdracht...',
    },
    'smz2ono9': {
      'en': '0',
      'de': '0',
      'nl': '0',
    },
    'yjrj5hc1': {
      'en': '1',
      'de': '1',
      'nl': '1',
    },
    '4j97yb8t': {
      'en': '2',
      'de': '2',
      'nl': '2',
    },
    'l89jkeia': {
      'en': '3',
      'de': '3',
      'nl': '3',
    },
    'r61a480f': {
      'en': '4',
      'de': '4',
      'nl': '4',
    },
    '3vgiikzq': {
      'en': '5',
      'de': '5',
      'nl': '5',
    },
    '5u73d9as': {
      'en': '6',
      'de': '6',
      'nl': '6',
    },
    'bbdtv44r': {
      'en': '7',
      'de': '7',
      'nl': '7',
    },
    'angn08bt': {
      'en': '8',
      'de': '8',
      'nl': '8',
    },
    'lt8hbx66': {
      'en': '9',
      'de': '9',
      'nl': '9',
    },
    'wmp3xa0s': {
      'en': '10',
      'de': '10',
      'nl': '10',
    },
    '4vk98j02': {
      'en': '11',
      'de': '11',
      'nl': '11',
    },
    'k79z2mut': {
      'en': '12',
      'de': '12',
      'nl': '12',
    },
    'vy8ppb5k': {
      'en': '13',
      'de': '13',
      'nl': '13',
    },
    '45hf25sm': {
      'en': '14',
      'de': '14',
      'nl': '14',
    },
    'yzx67fzj': {
      'en': '15',
      'de': '15',
      'nl': '15',
    },
    'bpn67fvl': {
      'en': '16',
      'de': '16',
      'nl': '16',
    },
    '6hntvfo6': {
      'en': '17',
      'de': '17',
      'nl': '17',
    },
    'o95o9ywi': {
      'en': '18',
      'de': '18',
      'nl': '18',
    },
    'iqjhax51': {
      'en': '19',
      'de': '19',
      'nl': '19',
    },
    '0nwgqk0l': {
      'en': '20',
      'de': '20',
      'nl': '20',
    },
    'z655yek2': {
      'en': '21',
      'de': '21',
      'nl': '21',
    },
    'onf2mh8l': {
      'en': '22',
      'de': '22',
      'nl': '22',
    },
    'efrhh6mt': {
      'en': '23',
      'de': '23',
      'nl': '23',
    },
    'i1nbvnab': {
      'en': '24',
      'de': '24',
      'nl': '24',
    },
    'mzs4rfsd': {
      'en': ' : ',
      'de': ':',
      'nl': ':',
    },
    'q4rfz000': {
      'en': 'Minute',
      'de': 'Minute',
      'nl': 'Minuut',
    },
    'wzegynkz': {
      'en': 'Search...',
      'de': 'Suchen...',
      'nl': 'Zoekopdracht...',
    },
    'a9b0vt9f': {
      'en': '0',
      'de': '0',
      'nl': '0',
    },
    'ridiq6tb': {
      'en': '15',
      'de': '15',
      'nl': '15',
    },
    '9dr4qaal': {
      'en': '30',
      'de': '30',
      'nl': '30',
    },
    '51niiv0l': {
      'en': '45',
      'de': '45',
      'nl': '45',
    },
    'w1vwjgiz': {
      'en': 'Channel',
      'de': 'Kanal',
      'nl': 'Kanaal',
    },
    'rwf3m2d9': {
      'en': 'Intervall',
      'de': 'Intervall',
      'nl': 'Interval',
    },
    'w8bd6ygj': {
      'en': 'Search...',
      'de': 'Suchen...',
      'nl': 'Zoekopdracht...',
    },
    'owxko5is': {
      'en': 'Fan 1',
      'de': 'Lüfter 1',
      'nl': 'Ventilator 1',
    },
    'mescond8': {
      'en': 'Fan 2',
      'de': 'Lüfter 2',
      'nl': 'Ventilator 2',
    },
    'evy8vf46': {
      'en': 'Fan 3',
      'de': 'Lüfter 3',
      'nl': 'Ventilator 3',
    },
    'cvizc3n9': {
      'en': 'Fan 4',
      'de': 'Lüfter 4',
      'nl': 'Ventilator 4',
    },
    'mh3sa88i': {
      'en': 'Venturi',
      'de': 'Venturi',
      'nl': 'Venturi',
    },
    'o4ljwpzr': {
      'en': 'Intervall',
      'de': 'Intervall',
      'nl': 'Interval',
    },
    'fgo4wa5c': {
      'en': 'Search...',
      'de': 'Suchen...',
      'nl': 'Zoekopdracht...',
    },
    '1z4686ha': {
      'en': 'Never',
      'de': 'Niemals',
      'nl': 'Nooit',
    },
    '31ahxrdi': {
      'en': 'Every Minute',
      'de': 'Jede Minute',
      'nl': 'Elke minuut',
    },
    '72z26jb0': {
      'en': 'all 2 Minutes',
      'de': 'alle 2 Minuten',
      'nl': 'alle 2 minuten',
    },
    'v0hx1m22': {
      'en': 'all 3 Minutes',
      'de': 'für 3 Sekunden',
      'nl': 'gedurende 3 seconden',
    },
    'o6uzr4sz': {
      'en': 'all 4 Minutes',
      'de': 'für 4 Sekunden',
      'nl': 'gedurende 4 seconden',
    },
    '8pk20lj3': {
      'en': 'all 5 Minutes',
      'de': 'für 5 Sekunden',
      'nl': 'gedurende 5 seconden',
    },
    '4eisa2wo': {
      'en': 'all 6 Minutes',
      'de': 'für 6 Sekunden',
      'nl': 'gedurende 6 seconden',
    },
    'ezelaz7r': {
      'en': 'all 7 Minutes',
      'de': 'für 7 Sekunden',
      'nl': 'gedurende 7 seconden',
    },
    'zb94z5fr': {
      'en': 'all 8 Minutes',
      'de': 'für 8 Sekunden',
      'nl': 'gedurende 8 seconden',
    },
    'a6plkxy2': {
      'en': 'for 9 Minutes',
      'de': 'für 9 Sekunden',
      'nl': 'gedurende 9 seconden',
    },
    'd5bjuznh': {
      'en': 'all 10 Minutes',
      'de': 'für 10 Sekunden',
      'nl': 'gedurende 10 seconden',
    },
    '2iu1hfyp': {
      'en': 'all 11 Minutes',
      'de': 'für 11 Sekunden',
      'nl': 'gedurende 11 seconden',
    },
    '3g8ms350': {
      'en': 'all 12 Minutes',
      'de': 'für 12 Sekunden',
      'nl': 'gedurende 12 seconden',
    },
    '8zs1w1fr': {
      'en': 'all 13 Minutes',
      'de': 'für 13 Sekunden',
      'nl': 'gedurende 13 seconden',
    },
    '4rrk7ouw': {
      'en': 'all 14 Minutes',
      'de': 'für 14 Sekunden',
      'nl': 'gedurende 14 seconden',
    },
    'r6e3py8b': {
      'en': 'all 15 Minutes',
      'de': 'für 15 Sekunden',
      'nl': 'gedurende 15 seconden',
    },
    'orgz9lw9': {
      'en': 'all 16 Minutes',
      'de': 'für 16 Sekunden',
      'nl': 'gedurende 16 seconden',
    },
    'tbalnxyu': {
      'en': 'all 17 Minutes',
      'de': 'für 17 Sekunden',
      'nl': 'gedurende 17 seconden',
    },
    'lvhlcnyk': {
      'en': 'all 18 Minutes',
      'de': 'für 18 Sekunden',
      'nl': 'gedurende 18 seconden',
    },
    '9geu1tah': {
      'en': 'all 19 Minutes',
      'de': 'für 19 Sekunden',
      'nl': 'gedurende 19 seconden',
    },
    '8lj91m3r': {
      'en': 'all 20 Minutes',
      'de': 'für 20 Sekunden',
      'nl': 'gedurende 20 seconden',
    },
    'rdj8hjur': {
      'en': 'all 21 Minutes',
      'de': 'für 21 Sekunden',
      'nl': 'gedurende 21 seconden',
    },
    'vzubyus1': {
      'en': 'all 22 Minutes',
      'de': 'für 22 Sekunden',
      'nl': 'gedurende 22 seconden',
    },
    '5blaumsg': {
      'en': 'all 23 Minutes',
      'de': 'für 23 Sekunden',
      'nl': 'gedurende 23 seconden',
    },
    'xkm4xf2v': {
      'en': 'all 24 Minutes',
      'de': 'für 24 Sekunden',
      'nl': 'gedurende 24 seconden',
    },
    'con2upfs': {
      'en': 'all 25 Minutes',
      'de': 'alle 25 Minuten',
      'nl': 'alle 25 minuten',
    },
    'qr94aaxp': {
      'en': 'all 26 Minutes',
      'de': 'alle 26 Minuten',
      'nl': 'alle 26 minuten',
    },
    'wen0cser': {
      'en': 'all 27 Minutes',
      'de': 'alle 27 Minuten',
      'nl': 'alle 27 minuten',
    },
    'skf2lsew': {
      'en': 'all 28 Minutes',
      'de': 'alle 28 Minuten',
      'nl': 'alle 28 minuten',
    },
    'd9vu6zfy': {
      'en': 'all 29 Minutes',
      'de': 'alle 29 Minuten',
      'nl': 'alle 29 minuten',
    },
    'x8dm052k': {
      'en': 'all 30 Minutes',
      'de': 'alle 30 Minuten',
      'nl': 'alle 30 minuten',
    },
    'qcsqsdla': {
      'en': 'all 31 Minutes',
      'de': 'alle 31 Minuten',
      'nl': 'alle 31 minuten',
    },
    '4fn6sqi4': {
      'en': 'all 32 Minutes',
      'de': 'alle 32 Minuten',
      'nl': 'alle 32 minuten',
    },
    '2mlhf8to': {
      'en': 'all 33 Minutes',
      'de': 'alle 33 Minuten',
      'nl': 'alle 33 minuten',
    },
    'r9qziyef': {
      'en': 'all 34 Minutes',
      'de': 'alle 34 Minuten',
      'nl': 'alle 34 minuten',
    },
    'ktwfvzbi': {
      'en': 'all 35 Minutes',
      'de': 'alle 35 Minuten',
      'nl': 'alle 35 minuten',
    },
    '1ubtlyy8': {
      'en': 'all 36 Minutes',
      'de': 'alle 36 Minuten',
      'nl': 'alle 36 minuten',
    },
    'wn4zehpl': {
      'en': 'all 37 Minutes',
      'de': 'alle 37 Minuten',
      'nl': 'alle 37 minuten',
    },
    'kqrn87fh': {
      'en': 'all 38 Minutes',
      'de': 'alle 38 Minuten',
      'nl': 'alle 38 minuten',
    },
    '8g8uwt75': {
      'en': 'all 39 Minutes',
      'de': 'alle 39 Minuten',
      'nl': 'alle 39 minuten',
    },
    '2eyvkyd9': {
      'en': 'all 40 Minutes',
      'de': 'alle 40 Minuten',
      'nl': 'alle 40 minuten',
    },
    'i7ukzjwd': {
      'en': 'all 41 Minutes',
      'de': 'alle 41 Minuten',
      'nl': 'alle 41 minuten',
    },
    '7yieaamw': {
      'en': 'all 42 Minutes',
      'de': 'alle 42 Minuten',
      'nl': 'alle 42 minuten',
    },
    'eihr49ch': {
      'en': 'all 43 Minutes',
      'de': 'alle 43 Minuten',
      'nl': 'alle 43 minuten',
    },
    'jy8vnn7g': {
      'en': 'all 44 Minutes',
      'de': 'alle 44 Minuten',
      'nl': 'alle 44 minuten',
    },
    'ijc9xrqw': {
      'en': 'all 45 Minutes',
      'de': 'alle 45 Minuten',
      'nl': 'alle 45 minuten',
    },
    'pwvre5yd': {
      'en': 'all 46 Minutes',
      'de': 'alle 46 Minuten',
      'nl': 'alle 46 minuten',
    },
    '1wkixvod': {
      'en': 'all 47 Minutes',
      'de': 'alle 47 Minuten',
      'nl': 'alle 47 minuten',
    },
    '9dux6vvy': {
      'en': 'all 48 Minutes',
      'de': 'alle 48 Minuten',
      'nl': 'alle 48 minuten',
    },
    'bab5nkiq': {
      'en': 'all 49 Minutes',
      'de': 'alle 49 Minuten',
      'nl': 'alle 49 minuten',
    },
    'hskxfak6': {
      'en': 'all 50 Minutes',
      'de': 'alle 50 Minuten',
      'nl': 'alle 50 minuten',
    },
    'w9arwhkn': {
      'en': 'all 51 Minutes',
      'de': 'alle 51 Minuten',
      'nl': 'alle 51 minuten',
    },
    '8pb8ea8f': {
      'en': 'all 52 Minutes',
      'de': 'alle 52 Minuten',
      'nl': 'alle 52 minuten',
    },
    'e3q910ll': {
      'en': 'all 53 Minutes',
      'de': 'alle 53 Minuten',
      'nl': 'alle 53 minuten',
    },
    'toh24fra': {
      'en': 'all 54 Minutes',
      'de': 'alle 54 Minuten',
      'nl': 'alle 54 minuten',
    },
    'vxri8jac': {
      'en': 'all 55 Minutes',
      'de': 'alle 55 Minuten',
      'nl': 'alle 55 minuten',
    },
    'xqobopuj': {
      'en': 'all 56 Minutes',
      'de': 'alle 56 Minuten',
      'nl': 'alle 56 minuten',
    },
    '7rz4xxmb': {
      'en': 'all 57 Minutes',
      'de': 'alle 57 Minuten',
      'nl': 'alle 57 minuten',
    },
    '4o2svq0p': {
      'en': 'all 58 Minutes',
      'de': 'alle 58 Minuten',
      'nl': 'alle 58 minuten',
    },
    '08fnxjm0': {
      'en': 'all 59 Minutes',
      'de': 'alle 59 Minuten',
      'nl': 'alle 59 minuten',
    },
    'byaq347i': {
      'en': 'all 60 Minutes',
      'de': 'alle 60 Minuten',
      'nl': 'alle 60 minuten',
    },
    'askyfqvi': {
      'en': 'Duration',
      'de': 'Dauer',
      'nl': 'Duur',
    },
    'a6u4u85p': {
      'en': 'Search...',
      'de': 'Suchen...',
      'nl': 'Zoekopdracht...',
    },
    'jt8ie7hd': {
      'en': 'for 1 Second',
      'de': 'für 1 Sekunde',
      'nl': 'gedurende 1 seconde',
    },
    '6eot3ixl': {
      'en': 'for 2 Seconds',
      'de': 'für 2 Sekunden',
      'nl': 'gedurende 2 seconden',
    },
    'rzrfw2d3': {
      'en': 'for 3 Seconds',
      'de': 'für 3 Sekunden',
      'nl': 'gedurende 3 seconden',
    },
    'kr24olnw': {
      'en': 'for 4 Seconds',
      'de': 'für 4 Sekunden',
      'nl': 'gedurende 4 seconden',
    },
    'zskkxs0t': {
      'en': 'for 5 Seconds',
      'de': 'für 5 Sekunden',
      'nl': 'gedurende 5 seconden',
    },
    'kjbww7cr': {
      'en': 'for 6 Seconds',
      'de': 'für 6 Sekunden',
      'nl': 'gedurende 6 seconden',
    },
    'niesp2eq': {
      'en': 'for 7 Seconds',
      'de': 'für 7 Sekunden',
      'nl': 'gedurende 7 seconden',
    },
    '3qe8twpf': {
      'en': 'for 8 Seconds',
      'de': 'für 8 Sekunden',
      'nl': 'gedurende 8 seconden',
    },
    '492llnoe': {
      'en': 'for 9 Seconds',
      'de': 'für 9 Sekunden',
      'nl': 'gedurende 9 seconden',
    },
    'fd0r9pt6': {
      'en': 'for 10 Seconds',
      'de': 'für 10 Sekunden',
      'nl': 'gedurende 10 seconden',
    },
    'uldllc7l': {
      'en': 'for 11 Seconds',
      'de': 'für 11 Sekunden',
      'nl': 'gedurende 11 seconden',
    },
    'exw3aw8h': {
      'en': 'for 12 Seconds',
      'de': 'für 12 Sekunden',
      'nl': 'gedurende 12 seconden',
    },
    'pd5teuof': {
      'en': 'for 13 Seconds',
      'de': 'für 13 Sekunden',
      'nl': 'gedurende 13 seconden',
    },
    'ydp0fstw': {
      'en': 'for 14 Seconds',
      'de': 'für 14 Sekunden',
      'nl': 'gedurende 14 seconden',
    },
    '78mkyhdg': {
      'en': 'for 15 Seconds',
      'de': 'für 15 Sekunden',
      'nl': 'gedurende 15 seconden',
    },
    '0n3wfz3u': {
      'en': 'for 16 Seconds',
      'de': 'für 16 Sekunden',
      'nl': 'gedurende 16 seconden',
    },
    'za60zx89': {
      'en': 'for 17 Seconds',
      'de': 'für 17 Sekunden',
      'nl': 'gedurende 17 seconden',
    },
    'xxqmc3lv': {
      'en': 'for 18 Seconds',
      'de': 'für 18 Sekunden',
      'nl': 'gedurende 18 seconden',
    },
    'cmiten9a': {
      'en': 'for 19 Seconds',
      'de': 'für 19 Sekunden',
      'nl': 'gedurende 19 seconden',
    },
    'rd9sy3sf': {
      'en': 'for 20 Seconds',
      'de': 'für 20 Sekunden',
      'nl': 'gedurende 20 seconden',
    },
    's93n61kk': {
      'en': 'for 21 Seconds',
      'de': 'für 21 Sekunden',
      'nl': 'gedurende 21 seconden',
    },
    'gdxcsm9v': {
      'en': 'for 22 Seconds',
      'de': 'für 22 Sekunden',
      'nl': 'gedurende 22 seconden',
    },
    '60rn8uct': {
      'en': 'for 23 Seconds',
      'de': 'für 23 Sekunden',
      'nl': 'gedurende 23 seconden',
    },
    '9hl1vfri': {
      'en': 'for 24 Seconds',
      'de': 'für 24 Sekunden',
      'nl': 'gedurende 24 seconden',
    },
    'qett1tjt': {
      'en': 'for 25 Seconds',
      'de': 'für 25 Sekunden',
      'nl': 'gedurende 25 seconden',
    },
    'sjj02o4n': {
      'en': 'for 26 Seconds',
      'de': 'für 26 Sekunden',
      'nl': 'gedurende 26 seconden',
    },
    'rosq5kzm': {
      'en': 'for 27 Seconds',
      'de': 'für 27 Sekunden',
      'nl': 'gedurende 27 seconden',
    },
    'mmw4621y': {
      'en': 'for 28 Seconds',
      'de': 'für 28 Sekunden',
      'nl': 'gedurende 28 seconden',
    },
    'ydjawdxq': {
      'en': 'for 29 Seconds',
      'de': 'für 29 Sekunden',
      'nl': 'gedurende 29 seconden',
    },
    'rbfvzchp': {
      'en': 'for 30 Seconds',
      'de': 'für 30 Sekunden',
      'nl': 'gedurende 30 seconden',
    },
    '0umn1hl3': {
      'en': 'for 31 Seconds',
      'de': 'für 31 Sekunden',
      'nl': 'gedurende 31 seconden',
    },
    'pv9qupit': {
      'en': 'for 32 Seconds',
      'de': 'für 32 Sekunden',
      'nl': 'gedurende 32 seconden',
    },
    '7pmdkh9a': {
      'en': 'for 33 Seconds',
      'de': 'für 33 Sekunden',
      'nl': 'gedurende 33 seconden',
    },
    'w4pxuuo6': {
      'en': 'for 34 Seconds',
      'de': 'für 34 Sekunden',
      'nl': 'gedurende 34 seconden',
    },
    'o4cvkfyu': {
      'en': 'for 35 Seconds',
      'de': 'für 35 Sekunden',
      'nl': 'gedurende 35 seconden',
    },
    'iz5gg4mv': {
      'en': 'for 36 Seconds',
      'de': 'für 36 Sekunden',
      'nl': 'gedurende 36 seconden',
    },
    'xvytsdj3': {
      'en': 'for 37 Seconds',
      'de': 'für 37 Sekunden',
      'nl': 'gedurende 37 seconden',
    },
    'ya2rnf6p': {
      'en': 'for 38 Seconds',
      'de': 'für 38 Sekunden',
      'nl': 'gedurende 38 seconden',
    },
    'x2cbac99': {
      'en': 'for 39 Seconds',
      'de': 'für 39 Sekunden',
      'nl': 'gedurende 39 seconden',
    },
    '7hx60c4k': {
      'en': 'for 40 Seconds',
      'de': 'für 40 Sekunden',
      'nl': 'gedurende 40 seconden',
    },
    'lrsjxvwt': {
      'en': 'for 41 Seconds',
      'de': 'für 41 Sekunden',
      'nl': 'gedurende 41 seconden',
    },
    'z9e4ws8e': {
      'en': 'for 42 Seconds',
      'de': 'für 42 Sekunden',
      'nl': 'gedurende 42 seconden',
    },
    'uwa3mo2l': {
      'en': 'for 43 Seconds',
      'de': 'für 43 Sekunden',
      'nl': 'gedurende 43 seconden',
    },
    'dngjfdj4': {
      'en': 'for 44 Seconds',
      'de': 'für 44 Sekunden',
      'nl': 'gedurende 44 seconden',
    },
    'w6wumvrh': {
      'en': 'for 45 Seconds',
      'de': 'für 45 Sekunden',
      'nl': 'gedurende 45 seconden',
    },
    'fejseood': {
      'en': 'for 46 Seconds',
      'de': 'für 46 Sekunden',
      'nl': 'gedurende 46 seconden',
    },
    'bboh73n4': {
      'en': 'for 47 Seconds',
      'de': 'für 47 Sekunden',
      'nl': 'gedurende 47 seconden',
    },
    '1fjeq8ba': {
      'en': 'for 48 Seconds',
      'de': 'für 48 Sekunden',
      'nl': 'gedurende 48 seconden',
    },
    'ax9ddsv9': {
      'en': 'for 49 Seconds',
      'de': 'für 49 Sekunden',
      'nl': 'gedurende 49 seconden',
    },
    '3kyl0poo': {
      'en': 'for 50 Seconds',
      'de': 'für 50 Sekunden',
      'nl': 'gedurende 50 seconden',
    },
    'qrp2n4sg': {
      'en': 'for 51 Seconds',
      'de': 'für 51 Sekunden',
      'nl': 'gedurende 51 seconden',
    },
    'en1aw3ca': {
      'en': 'for 52 Seconds',
      'de': 'für 52 Sekunden',
      'nl': 'gedurende 52 seconden',
    },
    'h5f32rzz': {
      'en': 'for 53 Seconds',
      'de': 'für 53 Sekunden',
      'nl': 'gedurende 53 seconden',
    },
    'm1gsjnqp': {
      'en': 'for 54 Seconds',
      'de': 'für 54 Sekunden',
      'nl': 'gedurende 54 seconden',
    },
    'x4r83air': {
      'en': 'for 55 Seconds',
      'de': 'für 55 Sekunden',
      'nl': 'gedurende 55 seconden',
    },
    '4xu48occ': {
      'en': 'for 56 Seconds',
      'de': 'für 56 Sekunden',
      'nl': 'gedurende 56 seconden',
    },
    '3xbe54ij': {
      'en': 'for 57 Seconds',
      'de': 'für 57 Sekunden',
      'nl': 'gedurende 57 seconden',
    },
    'pnkj8iop': {
      'en': 'for 58 Seconds',
      'de': 'für 58 Sekunden',
      'nl': 'gedurende 58 seconden',
    },
    'm8id9uw8': {
      'en': 'for 59 Seconds',
      'de': 'für 59 Sekunden',
      'nl': 'gedurende 59 seconden',
    },
    'yloj7cqa': {
      'en': 'for 60 Seconds',
      'de': 'für 60 Sekunden',
      'nl': 'gedurende 60 seconden',
    },
    '89dexeru': {
      'en': 'for 61 Seconds',
      'de': 'für 61 Sekunden',
      'nl': 'gedurende 61 seconden',
    },
    'pekij5xj': {
      'en': 'for 62 Seconds',
      'de': 'für 62 Sekunden',
      'nl': 'gedurende 62 seconden',
    },
    '5rk8p7ie': {
      'en': 'for 63 Seconds',
      'de': 'für 63 Sekunden',
      'nl': 'gedurende 63 seconden',
    },
    '4g6zm2k6': {
      'en': 'for 64 Seconds',
      'de': 'für 64 Sekunden',
      'nl': 'gedurende 64 seconden',
    },
    'sqjquue4': {
      'en': 'for 65 Seconds',
      'de': 'für 65 Sekunden',
      'nl': 'gedurende 65 seconden',
    },
    'azvwr2h4': {
      'en': 'for 66 Seconds',
      'de': 'für 66 Sekunden',
      'nl': 'gedurende 66 seconden',
    },
    'cfm4kelp': {
      'en': 'for 67 Seconds',
      'de': 'für 67 Sekunden',
      'nl': 'gedurende 67 seconden',
    },
    'modgu0yh': {
      'en': 'for 68 Seconds',
      'de': 'für 68 Sekunden',
      'nl': 'gedurende 68 seconden',
    },
    'pncmm1e6': {
      'en': 'for 69 Seconds',
      'de': 'für 69 Sekunden',
      'nl': 'gedurende 69 seconden',
    },
    'g7anfkrd': {
      'en': 'for 70 Seconds',
      'de': 'für 70 Sekunden',
      'nl': 'gedurende 70 seconden',
    },
    'm83uwy37': {
      'en': 'for 71 Seconds',
      'de': 'für 71 Sekunden',
      'nl': 'gedurende 71 seconden',
    },
    'lsrpvfyk': {
      'en': 'for 72 Seconds',
      'de': 'für 72 Sekunden',
      'nl': 'gedurende 72 seconden',
    },
    'f2z8rotl': {
      'en': 'for 73 Seconds',
      'de': 'für 73 Sekunden',
      'nl': 'gedurende 73 seconden',
    },
    'sw7596r5': {
      'en': 'for 74 Seconds',
      'de': 'für 74 Sekunden',
      'nl': 'gedurende 74 seconden',
    },
    'azomof8e': {
      'en': 'for 75 Seconds',
      'de': 'für 75 Sekunden',
      'nl': 'gedurende 75 seconden',
    },
    '3vugmoku': {
      'en': 'for 76 Seconds',
      'de': 'für 76 Sekunden',
      'nl': 'gedurende 76 seconden',
    },
    'e8gsow2j': {
      'en': 'for 77 Seconds',
      'de': 'für 77 Sekunden',
      'nl': 'gedurende 77 seconden',
    },
    'oenfcrwp': {
      'en': 'for 78 Seconds',
      'de': 'für 78 Sekunden',
      'nl': 'gedurende 78 seconden',
    },
    'qtapak1k': {
      'en': 'for 79 Seconds',
      'de': 'für 79 Sekunden',
      'nl': 'gedurende 79 seconden',
    },
    'dgefq3rx': {
      'en': 'for 80 Seconds',
      'de': 'für 80 Sekunden',
      'nl': 'gedurende 80 seconden',
    },
    'f51gga5q': {
      'en': 'for 81 Seconds',
      'de': 'für 81 Sekunden',
      'nl': 'gedurende 81 seconden',
    },
    'szd473pj': {
      'en': 'for 82 Seconds',
      'de': 'für 82 Sekunden',
      'nl': 'gedurende 82 seconden',
    },
    'kmjbs1d2': {
      'en': 'for 83 Seconds',
      'de': 'für 83 Sekunden',
      'nl': 'gedurende 83 seconden',
    },
    'ok8pb6ve': {
      'en': 'for 84 Seconds',
      'de': 'für 84 Sekunden',
      'nl': 'gedurende 84 seconden',
    },
    '7enadcyi': {
      'en': 'for 85 Seconds',
      'de': 'für 85 Sekunden',
      'nl': 'gedurende 85 seconden',
    },
    'qqa3xlvt': {
      'en': 'for 86 Seconds',
      'de': 'für 86 Sekunden',
      'nl': 'gedurende 86 seconden',
    },
    'kbk1f9az': {
      'en': 'for 87 Seconds',
      'de': 'für 87 Sekunden',
      'nl': 'gedurende 87 seconden',
    },
    'u42ulzsy': {
      'en': 'for 88 Seconds',
      'de': 'für 88 Sekunden',
      'nl': 'gedurende 88 seconden',
    },
    '5ey127gw': {
      'en': 'for 89 Seconds',
      'de': 'für 89 Sekunden',
      'nl': 'gedurende 89 seconden',
    },
    'looirga5': {
      'en': 'for 90 Seconds',
      'de': 'für 90 Sekunden',
      'nl': 'gedurende 90 seconden',
    },
    'fxjn8r7c': {
      'en': 'for 91 Seconds',
      'de': 'für 91 Sekunden',
      'nl': 'gedurende 91 seconden',
    },
    '0go66g9c': {
      'en': 'for 92 Seconds',
      'de': 'für 92 Sekunden',
      'nl': 'gedurende 92 seconden',
    },
    'prg887sp': {
      'en': 'for 93 Seconds',
      'de': 'für 93 Sekunden',
      'nl': 'gedurende 93 seconden',
    },
    '3axus8hq': {
      'en': 'for 94 Seconds',
      'de': 'für 94 Sekunden',
      'nl': 'gedurende 94 seconden',
    },
    'n9k41awo': {
      'en': 'for 95 Seconds',
      'de': 'für 95 Sekunden',
      'nl': 'gedurende 95 seconden',
    },
    'i9vpogfd': {
      'en': 'for 96 Seconds',
      'de': 'für 96 Sekunden',
      'nl': 'gedurende 96 seconden',
    },
    'cxwbqspi': {
      'en': 'for 97 Seconds',
      'de': 'für 97 Sekunden',
      'nl': 'gedurende 97 seconden',
    },
    'n6o8yxwo': {
      'en': 'for 98 Seconds',
      'de': 'für 98 Sekunden',
      'nl': 'gedurende 98 seconden',
    },
    '0cxndbw9': {
      'en': 'for 99 Seconds',
      'de': 'für 99 Sekunden',
      'nl': 'gedurende 99 seconden',
    },
    '3v7v2s4n': {
      'en': 'for 100 Seconds',
      'de': 'für 100 Sekunden',
      'nl': 'gedurende 100 seconden',
    },
    'tvphmtge': {
      'en': 'for 101 Seconds',
      'de': 'für 101 Sekunden',
      'nl': 'gedurende 101 seconden',
    },
    'weyn1k4f': {
      'en': 'for 102 Seconds',
      'de': 'für 102 Sekunden',
      'nl': 'gedurende 102 seconden',
    },
    'fie5u1wc': {
      'en': 'for 103 Seconds',
      'de': 'für 103 Sekunden',
      'nl': 'gedurende 103 seconden',
    },
    'c2ans06w': {
      'en': 'for 104 Seconds',
      'de': 'für 104 Sekunden',
      'nl': 'gedurende 104 seconden',
    },
    'jrbaajxt': {
      'en': 'for 105 Seconds',
      'de': 'für 105 Sekunden',
      'nl': 'gedurende 105 seconden',
    },
    'emhbs2xl': {
      'en': 'for 106 Seconds',
      'de': 'für 106 Sekunden',
      'nl': 'gedurende 106 seconden',
    },
    'qibfs7ep': {
      'en': 'for 107 Seconds',
      'de': 'für 107 Sekunden',
      'nl': 'gedurende 107 seconden',
    },
    'prol5odt': {
      'en': 'for 108 Seconds',
      'de': 'für 108 Sekunden',
      'nl': 'gedurende 108 seconden',
    },
    'oj97u11c': {
      'en': 'for 109 Seconds',
      'de': 'für 109 Sekunden',
      'nl': 'gedurende 109 seconden',
    },
    'ykss4h59': {
      'en': 'for 110 Seconds',
      'de': 'für 110 Sekunden',
      'nl': 'gedurende 110 seconden',
    },
    'tymhdyv2': {
      'en': 'for 111 Seconds',
      'de': 'für 111 Sekunden',
      'nl': 'gedurende 111 seconden',
    },
    'tcp5iu3c': {
      'en': 'for 112 Seconds',
      'de': 'für 112 Sekunden',
      'nl': 'gedurende 112 seconden',
    },
    '8rshpezf': {
      'en': 'for 113 Seconds',
      'de': 'für 113 Sekunden',
      'nl': 'gedurende 113 seconden',
    },
    'god1qwgm': {
      'en': 'for 114 Seconds',
      'de': 'für 114 Sekunden',
      'nl': 'gedurende 114 seconden',
    },
    'g709zw1l': {
      'en': 'for 115 Seconds',
      'de': 'für 115 Sekunden',
      'nl': 'gedurende 115 seconden',
    },
    'pc3i9wzg': {
      'en': 'for 116 Seconds',
      'de': 'für 116 Sekunden',
      'nl': 'gedurende 116 seconden',
    },
    'yxd0zr8l': {
      'en': 'for 117 Seconds',
      'de': 'für 117 Sekunden',
      'nl': 'gedurende 117 seconden',
    },
    'izf1mvoq': {
      'en': 'for 118 Seconds',
      'de': 'für 118 Sekunden',
      'nl': 'gedurende 118 seconden',
    },
    'xm1tnjb7': {
      'en': 'for 119 Seconds',
      'de': 'für 119 Sekunden',
      'nl': 'gedurende 119 seconden',
    },
    'xlmnr5zw': {
      'en': 'for 120 Seconds',
      'de': 'für 120 Sekunden',
      'nl': 'gedurende 120 seconden',
    },
    'ds7g18bc': {
      'en': 'for 121 Seconds',
      'de': 'für 121 Sekunden',
      'nl': 'gedurende 121 seconden',
    },
    'v4grgcso': {
      'en': 'for 122 Seconds',
      'de': 'für 122 Sekunden',
      'nl': 'gedurende 122 seconden',
    },
    'kbv1rxix': {
      'en': 'for 123 Seconds',
      'de': 'für 123 Sekunden',
      'nl': 'gedurende 123 seconden',
    },
    'zhdmu2z6': {
      'en': 'for 124 Seconds',
      'de': 'für 124 Sekunden',
      'nl': 'gedurende 124 seconden',
    },
    '0kuakqk7': {
      'en': 'for 125 Seconds',
      'de': 'für 125 Sekunden',
      'nl': 'gedurende 125 seconden',
    },
    'spx6brzc': {
      'en': 'for 126 Seconds',
      'de': 'für 126 Sekunden',
      'nl': 'gedurende 126 seconden',
    },
    'xnw76c5z': {
      'en': 'for 127 Seconds',
      'de': 'für 127 Sekunden',
      'nl': 'gedurende 127 seconden',
    },
    'clto7o6v': {
      'en': 'for 128 Seconds',
      'de': 'für 128 Sekunden',
      'nl': 'gedurende 128 seconden',
    },
    'zz25d23a': {
      'en': 'for 129 Seconds',
      'de': 'für 129 Sekunden',
      'nl': 'gedurende 129 seconden',
    },
    '9nl2ulhh': {
      'en': 'for 130 Seconds',
      'de': 'für 130 Sekunden',
      'nl': 'gedurende 130 seconden',
    },
    '8jho2g87': {
      'en': 'for 131 Seconds',
      'de': 'für 131 Sekunden',
      'nl': 'gedurende 131 seconden',
    },
    'uycb2p73': {
      'en': 'for 132 Seconds',
      'de': 'für 132 Sekunden',
      'nl': 'gedurende 132 seconden',
    },
    'o8ml953d': {
      'en': 'for 133 Seconds',
      'de': 'für 133 Sekunden',
      'nl': 'gedurende 133 seconden',
    },
    'syyes2qy': {
      'en': 'for 134 Seconds',
      'de': 'für 134 Sekunden',
      'nl': 'gedurende 134 seconden',
    },
    '6539nfw9': {
      'en': 'for 135 Seconds',
      'de': 'für 135 Sekunden',
      'nl': 'gedurende 135 seconden',
    },
    '5gf8xown': {
      'en': 'for 136 Seconds',
      'de': 'für 136 Sekunden',
      'nl': 'gedurende 136 seconden',
    },
    'rzm7wnl2': {
      'en': 'for 137 Seconds',
      'de': 'für 137 Sekunden',
      'nl': 'gedurende 137 seconden',
    },
    '5wew9v1z': {
      'en': 'for 138 Seconds',
      'de': 'für 138 Sekunden',
      'nl': 'gedurende 138 seconden',
    },
    'nr0r5i78': {
      'en': 'for 139 Seconds',
      'de': 'für 139 Sekunden',
      'nl': 'gedurende 139 seconden',
    },
    'zs1stanh': {
      'en': 'for 140 Seconds',
      'de': 'für 140 Sekunden',
      'nl': 'gedurende 140 seconden',
    },
    '0t7hn92b': {
      'en': 'for 141 Seconds',
      'de': 'für 141 Sekunden',
      'nl': 'gedurende 141 seconden',
    },
    '2ep8qhu9': {
      'en': 'for 142 Seconds',
      'de': 'für 142 Sekunden',
      'nl': 'gedurende 142 seconden',
    },
    '8qr3udq8': {
      'en': 'for 143 Seconds',
      'de': 'für 143 Sekunden',
      'nl': 'gedurende 143 seconden',
    },
    'y5i3b6gr': {
      'en': 'for 144 Seconds',
      'de': 'für 144 Sekunden',
      'nl': 'gedurende 144 seconden',
    },
    'axyfwuld': {
      'en': 'for 145 Seconds',
      'de': 'für 145 Sekunden',
      'nl': 'gedurende 145 seconden',
    },
    'am50ta4f': {
      'en': 'for 146 Seconds',
      'de': 'für 146 Sekunden',
      'nl': 'gedurende 146 seconden',
    },
    'sigbuyaa': {
      'en': 'for 147 Seconds',
      'de': 'für 147 Sekunden',
      'nl': 'gedurende 147 seconden',
    },
    'y5cq72az': {
      'en': 'for 148 Seconds',
      'de': 'für 148 Sekunden',
      'nl': 'gedurende 148 seconden',
    },
    'lurk5ipj': {
      'en': 'for 149 Seconds',
      'de': 'für 149 Sekunden',
      'nl': 'gedurende 149 seconden',
    },
    'uhphcn7y': {
      'en': 'for 150 Seconds',
      'de': 'für 150 Sekunden',
      'nl': 'gedurende 150 seconden',
    },
    'vanej6wy': {
      'en': 'for 151 Seconds',
      'de': 'für 151 Sekunden',
      'nl': 'gedurende 151 seconden',
    },
    's4s8o4vz': {
      'en': 'for 152 Seconds',
      'de': 'für 152 Sekunden',
      'nl': 'gedurende 152 seconden',
    },
    '92qz52ot': {
      'en': 'for 153 Seconds',
      'de': 'für 153 Sekunden',
      'nl': 'gedurende 153 seconden',
    },
    'o61bk0ec': {
      'en': 'for 154 Seconds',
      'de': 'für 154 Sekunden',
      'nl': 'gedurende 154 seconden',
    },
    'hizjbz2h': {
      'en': 'for 155 Seconds',
      'de': 'für 155 Sekunden',
      'nl': 'gedurende 155 seconden',
    },
    'gaecmbh4': {
      'en': 'for 156 Seconds',
      'de': 'für 156 Sekunden',
      'nl': 'gedurende 156 seconden',
    },
    'ee0huou0': {
      'en': 'for 157 Seconds',
      'de': 'für 157 Sekunden',
      'nl': 'gedurende 157 seconden',
    },
    'hpsnipxr': {
      'en': 'for 158 Seconds',
      'de': 'für 158 Sekunden',
      'nl': 'gedurende 158 seconden',
    },
    'qsznlelj': {
      'en': 'for 159 Seconds',
      'de': 'für 159 Sekunden',
      'nl': 'gedurende 159 seconden',
    },
    'pnewr455': {
      'en': 'for 160 Seconds',
      'de': 'für 160 Sekunden',
      'nl': 'gedurende 160 seconden',
    },
    'kbuecv5u': {
      'en': 'for 161 Seconds',
      'de': 'für 161 Sekunden',
      'nl': 'gedurende 161 seconden',
    },
    '0ztaqvty': {
      'en': 'for 162 Seconds',
      'de': 'für 162 Sekunden',
      'nl': 'gedurende 162 seconden',
    },
    'nosrbzaz': {
      'en': 'for 163 Seconds',
      'de': 'für 163 Sekunden',
      'nl': 'gedurende 163 seconden',
    },
    '05dlvasg': {
      'en': 'for 164 Seconds',
      'de': 'für 164 Sekunden',
      'nl': 'gedurende 164 seconden',
    },
    'xml6tb9f': {
      'en': 'for 165 Seconds',
      'de': 'für 165 Sekunden',
      'nl': 'gedurende 165 seconden',
    },
    '0icyfcys': {
      'en': 'for 166 Seconds',
      'de': 'für 166 Sekunden',
      'nl': 'gedurende 166 seconden',
    },
    'g1ghcxbi': {
      'en': 'for 167 Seconds',
      'de': 'für 167 Sekunden',
      'nl': 'gedurende 167 seconden',
    },
    'v13dl8c4': {
      'en': 'for 168 Seconds',
      'de': 'für 168 Sekunden',
      'nl': 'gedurende 168 seconden',
    },
    '16wvavyt': {
      'en': 'for 169 Seconds',
      'de': 'für 169 Sekunden',
      'nl': 'gedurende 169 seconden',
    },
    'q8wrhv20': {
      'en': 'for 170 Seconds',
      'de': 'für 170 Sekunden',
      'nl': 'gedurende 170 seconden',
    },
    'g4jcngcb': {
      'en': 'for 171 Seconds',
      'de': 'für 171 Sekunden',
      'nl': 'gedurende 171 seconden',
    },
    'y3j3541x': {
      'en': 'for 172 Seconds',
      'de': 'für 172 Sekunden',
      'nl': 'gedurende 172 seconden',
    },
    'gugkuuzy': {
      'en': 'for 173 Seconds',
      'de': 'für 173 Sekunden',
      'nl': 'gedurende 173 seconden',
    },
    'nbjisbat': {
      'en': 'for 174 Seconds',
      'de': 'für 174 Sekunden',
      'nl': 'gedurende 174 seconden',
    },
    'yfehgijf': {
      'en': 'for 175 Seconds',
      'de': 'für 175 Sekunden',
      'nl': 'gedurende 175 seconden',
    },
    'ee31i0zf': {
      'en': 'for 176 Seconds',
      'de': 'für 176 Sekunden',
      'nl': 'gedurende 176 seconden',
    },
    'f1jcdgya': {
      'en': 'for 177 Seconds',
      'de': 'für 177 Sekunden',
      'nl': 'gedurende 177 seconden',
    },
    'tgrnj256': {
      'en': 'for 178 Seconds',
      'de': 'für 178 Sekunden',
      'nl': 'gedurende 178 seconden',
    },
    '3zv6fvcu': {
      'en': 'for 179 Seconds',
      'de': 'für 179 Sekunden',
      'nl': 'gedurende 179 seconden',
    },
    't46c7j5l': {
      'en': 'for 180 Seconds',
      'de': 'für 180 Sekunden',
      'nl': 'gedurende 180 seconden',
    },
    'nq8jvjms': {
      'en': 'Fan Power',
      'de': 'Lüfterleistung',
      'nl': 'Ventilatorvermogen',
    },
    'qk3zviug': {
      'en': 'Intervall',
      'de': 'Intervall',
      'nl': 'Interval',
    },
    '1hfp9ydi': {
      'en': 'Search...',
      'de': 'Suchen...',
      'nl': 'Zoekopdracht...',
    },
    '877deaul': {
      'en': 'off',
      'de': 'aus',
      'nl': 'uit',
    },
    'zj2u0gc2': {
      'en': '50 %',
      'de': '50 %',
      'nl': '50%',
    },
    'pzlw1szk': {
      'en': '60 %',
      'de': '60 %',
      'nl': '60%',
    },
    'vb1qwk2b': {
      'en': '70 %',
      'de': '70 %',
      'nl': '70%',
    },
    '929nx064': {
      'en': '80 %',
      'de': '80 %',
      'nl': '80%',
    },
    'r1iyw9sz': {
      'en': '90 % ',
      'de': '90 %',
      'nl': '90%',
    },
    '6fzhkcx3': {
      'en': '100 %',
      'de': '100 %',
      'nl': '100%',
    },
    'xyiz87nd': {
      'en': 'Interval',
      'de': 'Intervall',
      'nl': 'Interval',
    },
    'fhbeklmx': {
      'en': 'Intervall',
      'de': 'Intervall',
      'nl': 'Interval',
    },
    '6i4fy3of': {
      'en': 'Search...',
      'de': 'Suchen...',
      'nl': 'Zoekopdracht...',
    },
    'zvu2k8bv': {
      'en': 'no Intervall',
      'de': 'kein Intervall',
      'nl': 'geen Intervall',
    },
    'i3rajryp': {
      'en': '1 minute on, 9 minutes off',
      'de': '1 Minute an, 9 Minuten aus',
      'nl': '1 minuut aan, 9 minuten uit',
    },
    'dldl1vc4': {
      'en': '2 minutes on, 8 minutes off',
      'de': '2 Minuten an, 8 Minuten aus',
      'nl': '2 minuten aan, 8 minuten uit',
    },
    'uodzkboj': {
      'en': '3 minutes on, 7 minutes off',
      'de': '3 Minuten an, 7 Minuten aus',
      'nl': '3 minuten aan, 7 minuten uit',
    },
    'r3y5ue8r': {
      'en': '4 minutes on, 6 minutes off',
      'de': '4 Minuten an, 6 Minuten aus',
      'nl': '4 minuten aan, 6 minuten uit',
    },
    'ee4nv3so': {
      'en': '5 minutes on, 5 minutes off',
      'de': '5 Minuten an, 5 Minuten aus',
      'nl': '5 minuten aan, 5 minuten uit',
    },
    'o69tabwv': {
      'en': '6 minutes on, 4 minutes off',
      'de': '6 Minuten an, 4 Minuten aus',
      'nl': '6 minuten aan, 4 minuten uit',
    },
    'qk9ykjcr': {
      'en': '7 minutes on, 3 minutes off',
      'de': '7 Minuten an, 3 Minuten aus',
      'nl': '7 minuten aan, 3 minuten uit',
    },
    '8jbs5yxz': {
      'en': '8 minutes on,  2 minutes off',
      'de': '8 Minuten an, 2 Minuten aus',
      'nl': '8 minuten aan, 2 minuten uit',
    },
    '8qn959f6': {
      'en': '9 minutes on,  1 minute off',
      'de': '9 Minuten an, 1 Minute aus',
      'nl': '9 minuten aan, 1 minuut uit',
    },
    't3n6ry8q': {
      'en': '1 minute on, 1 minute off',
      'de': '1 Minute an, 1 Minute aus',
      'nl': '1 minuut aan, 1 minuut uit',
    },
    'm6mlu2e0': {
      'en': '2 minutes on, 2 minutes off',
      'de': '2 Minuten an, 2 Minuten aus',
      'nl': '2 minuten aan, 2 minuten uit',
    },
    '129iy392': {
      'en': 'Save Line',
      'de': 'Zeile speichern',
      'nl': 'Lijn opslaan',
    },
    'bquyxowi': {
      'en': 'Ignore Changes',
      'de': 'Änderungen ignorieren',
      'nl': 'Wijzigingen negeren',
    },
    '4x10ufan': {
      'en': 'Delete Line',
      'de': 'Zeile löschen',
      'nl': 'Regel verwijderen',
    },
    'vbrxo51q': {
      'en': 'Home',
      'de': 'Heim',
      'nl': 'Thuis',
    },
  },
  // Miscellaneous
  {
    '6qfzb8rm': {
      'en': 'i need this',
      'de': 'ich brauche das',
      'nl': 'ik heb dit nodig',
    },
    '4kfj9hrj': {
      'en': '',
      'de': '',
      'nl': '',
    },
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

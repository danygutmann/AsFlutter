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
    'hth34pe4': {
      'en': 'Intervall',
      'de': 'Intervall',
      'nl': 'Interval',
    },
    'sljrm3p3': {
      'en': 'Search...',
      'de': 'Suchen...',
      'nl': 'Zoekopdracht...',
    },
    'vremqz7q': {
      'en': 'Venturi',
      'de': 'Venturi',
      'nl': 'Venturi',
    },
    '1e6x9imm': {
      'en': 'Fan 2',
      'de': 'Lüfter 2',
      'nl': 'Ventilator 2',
    },
    '9zxobbpg': {
      'en': 'Fan 3',
      'de': 'Lüfter 3',
      'nl': 'Ventilator 3',
    },
    '87vfdpnj': {
      'en': 'not Set',
      'de': '',
      'nl': '',
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
    'lcikb06l': {
      'en': 'never',
      'de': 'Venturi',
      'nl': 'Venturi',
    },
    'ay7wh061': {
      'en': 'every Minute',
      'de': 'Lüfter 2',
      'nl': 'Ventilator 2',
    },
    'mc4shy1h': {
      'en': 'all 2  Minutes',
      'de': 'Lüfter 3',
      'nl': 'Ventilator 3',
    },
    'fncetov0': {
      'en': 'all 3 Minutes',
      'de': '',
      'nl': '',
    },
    'zsjgpbug': {
      'en': 'all 4 Minutes',
      'de': '',
      'nl': '',
    },
    'ly4zoux5': {
      'en': 'all 5 Minutes',
      'de': '',
      'nl': '',
    },
    'askyfqvi': {
      'en': 'Duration',
      'de': 'Intervall',
      'nl': 'Interval',
    },
    'a6u4u85p': {
      'en': 'Search...',
      'de': 'Suchen...',
      'nl': 'Zoekopdracht...',
    },
    'y0c700fv': {
      'en': 'off',
      'de': 'Venturi',
      'nl': 'Venturi',
    },
    'yb8p0vqg': {
      'en': 'for 1 Second',
      'de': 'Lüfter 2',
      'nl': 'Ventilator 2',
    },
    'u8v46yx4': {
      'en': 'for 2 Seconds',
      'de': 'Lüfter 3',
      'nl': 'Ventilator 3',
    },
    'h3aceg5c': {
      'en': 'for 3 Seconds',
      'de': '',
      'nl': '',
    },
    'esvvfv2j': {
      'en': 'for 4 Seconds',
      'de': '',
      'nl': '',
    },
    'jpv4n6be': {
      'en': 'for 5  Seconds',
      'de': '',
      'nl': '',
    },
    'xetj9zqt': {
      'en': 'Intervall',
      'de': 'Intervall',
      'nl': 'Interval',
    },
    'jvxy9iwe': {
      'en': 'Search...',
      'de': 'Suchen...',
      'nl': 'Zoekopdracht...',
    },
    '64mrc676': {
      'en': 'all 1 Minute',
      'de': 'alle 1 Minute',
      'nl': 'alle 1 minuut',
    },
    'txmeci1y': {
      'en': 'all 2 Minutes',
      'de': 'alle 2 Minuten',
      'nl': 'alle 2 minuten',
    },
    '0q8lmw12': {
      'en': 'all 3 Minutes',
      'de': 'alle 3 Minuten',
      'nl': 'alle 3 minuten',
    },
    '97cr760l': {
      'en': 'all 4 Minutes',
      'de': 'alle 4 Minuten',
      'nl': 'alle 4 minuten',
    },
    '1z4686ha': {
      'en': 'never',
      'de': 'niemals',
      'nl': 'nooit',
    },
    '1m5642yl': {
      'en': 'Intervall',
      'de': 'Intervall',
      'nl': 'Interval',
    },
    'vpn59drq': {
      'en': 'Search...',
      'de': 'Suchen...',
      'nl': 'Zoekopdracht...',
    },
    '756w4g3z': {
      'en': 'for 1  Second',
      'de': 'für 1 Sekunde',
      'nl': 'gedurende 1 seconde',
    },
    'rjh93fz5': {
      'en': 'for 2 Seconds',
      'de': 'für 2 Sekunden',
      'nl': 'gedurende 2 seconden',
    },
    'qy80bqvk': {
      'en': 'for 3 Seconds',
      'de': 'für 3 Sekunden',
      'nl': 'gedurende 3 seconden',
    },
    '9vx4bz2o': {
      'en': 'for 4 Seconds',
      'de': 'für 4 Sekunden',
      'nl': 'gedurende 4 seconden',
    },
    'wgc537cs': {
      'en': 'not active',
      'de': 'nicht aktiv',
      'nl': 'niet actief',
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

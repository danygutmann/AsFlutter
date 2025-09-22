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
    'wsevejrk': {
      'en': 'Save to Phone',
      'de': 'Auf Telefon speichern',
      'nl': 'Opslaan op telefoon',
    },
    'zj1d8saq': {
      'en': 'Load from Phone',
      'de': 'Vom Telefon laden',
      'nl': 'Laden vanaf telefoon',
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
    'dpxa1mw3': {
      'en': '  ',
      'de': '',
      'nl': '',
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
      'en': 'Begin:',
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
      'de': '24',
      'nl': '24',
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
    'dh05wxst': {
      'en': 'All',
      'de': 'Alle',
      'nl': 'Alle',
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
    '31ahxrdi': {
      'en': '1',
      'de': '1',
      'nl': '1',
    },
    '72z26jb0': {
      'en': '2',
      'de': '2',
      'nl': '2',
    },
    'v0hx1m22': {
      'en': '3',
      'de': '3',
      'nl': '3',
    },
    'o6uzr4sz': {
      'en': '4',
      'de': '4',
      'nl': '4',
    },
    '8pk20lj3': {
      'en': '5',
      'de': '5',
      'nl': '5',
    },
    '4eisa2wo': {
      'en': '6',
      'de': '6',
      'nl': '6',
    },
    'ezelaz7r': {
      'en': '7',
      'de': '7',
      'nl': '7',
    },
    'zb94z5fr': {
      'en': '8',
      'de': '8',
      'nl': '8',
    },
    'a6plkxy2': {
      'en': '9',
      'de': '9',
      'nl': '9',
    },
    'd5bjuznh': {
      'en': '10',
      'de': '10',
      'nl': '10',
    },
    '2iu1hfyp': {
      'en': '11',
      'de': '11',
      'nl': '11',
    },
    '3g8ms350': {
      'en': '12',
      'de': '12',
      'nl': '12',
    },
    '8zs1w1fr': {
      'en': '13',
      'de': '13',
      'nl': '13',
    },
    '4rrk7ouw': {
      'en': '14',
      'de': '14',
      'nl': '14',
    },
    'r6e3py8b': {
      'en': '15',
      'de': '15',
      'nl': '15',
    },
    'orgz9lw9': {
      'en': '16',
      'de': '16',
      'nl': '16',
    },
    'tbalnxyu': {
      'en': '17',
      'de': '17',
      'nl': '17',
    },
    'lvhlcnyk': {
      'en': '18',
      'de': '18',
      'nl': '18',
    },
    '9geu1tah': {
      'en': '19',
      'de': '19',
      'nl': '19',
    },
    '8lj91m3r': {
      'en': '20',
      'de': '20',
      'nl': '20',
    },
    'rdj8hjur': {
      'en': '21',
      'de': '21',
      'nl': '21',
    },
    'vzubyus1': {
      'en': '22',
      'de': '22',
      'nl': '22',
    },
    '5blaumsg': {
      'en': '23',
      'de': '23',
      'nl': '23',
    },
    'qba5arvq': {
      'en': '24',
      'de': '24',
      'nl': '24',
    },
    'con2upfs': {
      'en': '25',
      'de': '25',
      'nl': '25',
    },
    'qr94aaxp': {
      'en': '26',
      'de': '26',
      'nl': '26',
    },
    'wen0cser': {
      'en': '27',
      'de': '27',
      'nl': '27',
    },
    'skf2lsew': {
      'en': '28',
      'de': '28',
      'nl': '28',
    },
    'd9vu6zfy': {
      'en': '29',
      'de': '29',
      'nl': '29',
    },
    'x8dm052k': {
      'en': '30',
      'de': '30',
      'nl': '30',
    },
    'qcsqsdla': {
      'en': '31',
      'de': '31',
      'nl': '31',
    },
    '4fn6sqi4': {
      'en': '32',
      'de': '32',
      'nl': '32',
    },
    '2mlhf8to': {
      'en': '33',
      'de': '33',
      'nl': '33',
    },
    'r9qziyef': {
      'en': '34',
      'de': '34',
      'nl': '34',
    },
    'ktwfvzbi': {
      'en': '35',
      'de': '35',
      'nl': '35',
    },
    '1ubtlyy8': {
      'en': '36',
      'de': '36',
      'nl': '36',
    },
    'wn4zehpl': {
      'en': '37',
      'de': '37',
      'nl': '37',
    },
    'kqrn87fh': {
      'en': '38',
      'de': '38',
      'nl': '38',
    },
    '8g8uwt75': {
      'en': '39',
      'de': '39',
      'nl': '39',
    },
    '2eyvkyd9': {
      'en': '40',
      'de': '40',
      'nl': '40',
    },
    'i7ukzjwd': {
      'en': '41',
      'de': '41',
      'nl': '41',
    },
    '7yieaamw': {
      'en': '42',
      'de': '42',
      'nl': '42',
    },
    'eihr49ch': {
      'en': '43',
      'de': '43',
      'nl': '43',
    },
    'jy8vnn7g': {
      'en': '44',
      'de': '44',
      'nl': '44',
    },
    'ijc9xrqw': {
      'en': '45',
      'de': '45',
      'nl': '45',
    },
    'pwvre5yd': {
      'en': '46',
      'de': '46',
      'nl': '46',
    },
    '1wkixvod': {
      'en': '47',
      'de': '47',
      'nl': '47',
    },
    '9dux6vvy': {
      'en': '48',
      'de': '48',
      'nl': '48',
    },
    'bab5nkiq': {
      'en': '49',
      'de': '49',
      'nl': '49',
    },
    'hskxfak6': {
      'en': '50',
      'de': '50',
      'nl': '50',
    },
    'w9arwhkn': {
      'en': '51',
      'de': '51',
      'nl': '51',
    },
    '8pb8ea8f': {
      'en': '52',
      'de': '52',
      'nl': '52',
    },
    'e3q910ll': {
      'en': '53',
      'de': '53',
      'nl': '53',
    },
    'toh24fra': {
      'en': '54',
      'de': '54',
      'nl': '54',
    },
    'vxri8jac': {
      'en': '55',
      'de': '55',
      'nl': '55',
    },
    'xqobopuj': {
      'en': '56',
      'de': '56',
      'nl': '56',
    },
    '7rz4xxmb': {
      'en': '57',
      'de': '57',
      'nl': '57',
    },
    '4o2svq0p': {
      'en': '58',
      'de': '58',
      'nl': '58',
    },
    '08fnxjm0': {
      'en': '59',
      'de': '59',
      'nl': '59',
    },
    'byaq347i': {
      'en': '60',
      'de': '60',
      'nl': '60',
    },
    'v3t9nhc0': {
      'en': 'Minutes',
      'de': 'Minuten',
      'nl': 'Notulen',
    },
    '85dzdvc9': {
      'en': 'For',
      'de': 'Für',
      'nl': 'Voor',
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
    'ftu0ytmq': {
      'en': '1',
      'de': '1',
      'nl': '1',
    },
    '6eot3ixl': {
      'en': '2',
      'de': '2',
      'nl': '2',
    },
    'b8cl4njg': {
      'en': '3',
      'de': '3',
      'nl': '3',
    },
    'q7cka60b': {
      'en': '4',
      'de': '4',
      'nl': '4',
    },
    'syvqvhh3': {
      'en': '5',
      'de': '5',
      'nl': '5',
    },
    'f6gousl6': {
      'en': '6',
      'de': '6',
      'nl': '6',
    },
    'ydam740a': {
      'en': '7',
      'de': '7',
      'nl': '7',
    },
    'rbe5l7s7': {
      'en': '8',
      'de': '8',
      'nl': '8',
    },
    'jstxnjx7': {
      'en': '9',
      'de': '9',
      'nl': '9',
    },
    'b0nzyk5z': {
      'en': '10',
      'de': '10',
      'nl': '10',
    },
    'ici6ag0d': {
      'en': '11',
      'de': '11',
      'nl': '11',
    },
    'nfzagmzx': {
      'en': '12',
      'de': '12',
      'nl': '12',
    },
    'wtz1ypth': {
      'en': '13',
      'de': '13',
      'nl': '13',
    },
    '3ppvzm5b': {
      'en': '14',
      'de': '14',
      'nl': '14',
    },
    'tnkc79fn': {
      'en': '15',
      'de': '15',
      'nl': '15',
    },
    'kygd25u3': {
      'en': '16',
      'de': '16',
      'nl': '16',
    },
    'cutoxi8s': {
      'en': '17',
      'de': '17',
      'nl': '17',
    },
    '9a0b5ngu': {
      'en': '18',
      'de': '18',
      'nl': '18',
    },
    'r6x5omvy': {
      'en': '19',
      'de': '19',
      'nl': '19',
    },
    '4fgv4g3e': {
      'en': '20',
      'de': '20',
      'nl': '20',
    },
    'choqkw1a': {
      'en': '21',
      'de': '21',
      'nl': '21',
    },
    'ecnsf9na': {
      'en': '22',
      'de': '22',
      'nl': '22',
    },
    'jdnjantq': {
      'en': '23',
      'de': '23',
      'nl': '23',
    },
    'o6totfs3': {
      'en': '24',
      'de': '24',
      'nl': '24',
    },
    'qett1tjt': {
      'en': '25',
      'de': '25',
      'nl': '25',
    },
    'sjj02o4n': {
      'en': '26',
      'de': '26',
      'nl': '26',
    },
    'rosq5kzm': {
      'en': '27',
      'de': '27',
      'nl': '27',
    },
    'mmw4621y': {
      'en': '28',
      'de': '28',
      'nl': '28',
    },
    'ydjawdxq': {
      'en': '29',
      'de': '29',
      'nl': '29',
    },
    'rbfvzchp': {
      'en': '30',
      'de': '30',
      'nl': '30',
    },
    '0umn1hl3': {
      'en': '31',
      'de': '31',
      'nl': '31',
    },
    'pv9qupit': {
      'en': '32',
      'de': '32',
      'nl': '32',
    },
    '7pmdkh9a': {
      'en': '33',
      'de': '33',
      'nl': '33',
    },
    'w4pxuuo6': {
      'en': '34',
      'de': '34',
      'nl': '34',
    },
    'o4cvkfyu': {
      'en': '35',
      'de': '35',
      'nl': '35',
    },
    'iz5gg4mv': {
      'en': '36',
      'de': '36',
      'nl': '36',
    },
    'xvytsdj3': {
      'en': '37',
      'de': '37',
      'nl': '37',
    },
    'ya2rnf6p': {
      'en': '38',
      'de': '38',
      'nl': '38',
    },
    'x2cbac99': {
      'en': '39',
      'de': '39',
      'nl': '39',
    },
    '7hx60c4k': {
      'en': '40',
      'de': '40',
      'nl': '40',
    },
    'lrsjxvwt': {
      'en': '41',
      'de': '41',
      'nl': '41',
    },
    'z9e4ws8e': {
      'en': '42',
      'de': '42',
      'nl': '42',
    },
    'uwa3mo2l': {
      'en': '43',
      'de': '43',
      'nl': '43',
    },
    'dngjfdj4': {
      'en': '44',
      'de': '44',
      'nl': '44',
    },
    'w6wumvrh': {
      'en': '45',
      'de': '45',
      'nl': '45',
    },
    'fejseood': {
      'en': '46',
      'de': '46',
      'nl': '46',
    },
    'bboh73n4': {
      'en': '47',
      'de': '47',
      'nl': '47',
    },
    '1fjeq8ba': {
      'en': '48',
      'de': '48',
      'nl': '48',
    },
    'ax9ddsv9': {
      'en': '49',
      'de': '49',
      'nl': '49',
    },
    '3kyl0poo': {
      'en': '50',
      'de': '50',
      'nl': '50',
    },
    'qrp2n4sg': {
      'en': '51',
      'de': '51',
      'nl': '51',
    },
    'en1aw3ca': {
      'en': '52',
      'de': '52',
      'nl': '52',
    },
    'h5f32rzz': {
      'en': '53',
      'de': '53',
      'nl': '53',
    },
    'm1gsjnqp': {
      'en': '54',
      'de': '54',
      'nl': '54',
    },
    'x4r83air': {
      'en': '55',
      'de': '55',
      'nl': '55',
    },
    '4xu48occ': {
      'en': '56',
      'de': '56',
      'nl': '56',
    },
    '3xbe54ij': {
      'en': '57',
      'de': '57',
      'nl': '57',
    },
    'pnkj8iop': {
      'en': '58',
      'de': '58',
      'nl': '58',
    },
    'm8id9uw8': {
      'en': '59',
      'de': '59',
      'nl': '59',
    },
    'yloj7cqa': {
      'en': '60',
      'de': '60',
      'nl': '60',
    },
    'w2pxooau': {
      'en': '61',
      'de': '61',
      'nl': '61',
    },
    'y6l1ufa9': {
      'en': '62',
      'de': '62',
      'nl': '62',
    },
    '08y1ix7b': {
      'en': '63',
      'de': '63',
      'nl': '63',
    },
    'tc9tvred': {
      'en': '64',
      'de': '64',
      'nl': '64',
    },
    'huz519qz': {
      'en': '65',
      'de': '65',
      'nl': '65',
    },
    '0zqvpahs': {
      'en': '66',
      'de': '66',
      'nl': '66',
    },
    '095ybp26': {
      'en': '67',
      'de': '67',
      'nl': '67',
    },
    '2spxajsb': {
      'en': '68',
      'de': '68',
      'nl': '68',
    },
    '2lpsl349': {
      'en': '69',
      'de': '69',
      'nl': '69',
    },
    'mz9ohszf': {
      'en': '70',
      'de': '70',
      'nl': '70',
    },
    'h4vunrs5': {
      'en': '71',
      'de': '71',
      'nl': '71',
    },
    'cnnzsi6q': {
      'en': '72',
      'de': '72',
      'nl': '72',
    },
    '13kqdoj4': {
      'en': '73',
      'de': '73',
      'nl': '73',
    },
    's2fbhy3s': {
      'en': '74',
      'de': '74',
      'nl': '74',
    },
    'tpm02zxy': {
      'en': '75',
      'de': '75',
      'nl': '75',
    },
    '2zu9o7uf': {
      'en': '76',
      'de': '76',
      'nl': '76',
    },
    '4cvtty6o': {
      'en': '77',
      'de': '77',
      'nl': '77',
    },
    'wg5x98k3': {
      'en': '78',
      'de': '78',
      'nl': '78',
    },
    'jc6r793a': {
      'en': '79',
      'de': '79',
      'nl': '79',
    },
    '9o44a56h': {
      'en': '80',
      'de': '80',
      'nl': '80',
    },
    'linm2hye': {
      'en': '81',
      'de': '81',
      'nl': '81',
    },
    'ooun3pbq': {
      'en': '82',
      'de': '82',
      'nl': '82',
    },
    'nq5naqtr': {
      'en': '83',
      'de': '83',
      'nl': '83',
    },
    'hf0iw15p': {
      'en': '84',
      'de': '84',
      'nl': '84',
    },
    'uy5hbgxm': {
      'en': '85',
      'de': '85',
      'nl': '85',
    },
    'pcs3a8tn': {
      'en': '86',
      'de': '86',
      'nl': '86',
    },
    'prw3rmap': {
      'en': '87',
      'de': '87',
      'nl': '87',
    },
    '5pup67tk': {
      'en': '88',
      'de': '88',
      'nl': '88',
    },
    '7csdd9x5': {
      'en': '89',
      'de': '89',
      'nl': '89',
    },
    'ag16t9d8': {
      'en': '90',
      'de': '90',
      'nl': '90',
    },
    '0nykbtwt': {
      'en': '91',
      'de': '91',
      'nl': '91',
    },
    'jjpakge7': {
      'en': '92',
      'de': '92',
      'nl': '92',
    },
    'wei5uku1': {
      'en': '93',
      'de': '93',
      'nl': '93',
    },
    '2xmlvor8': {
      'en': '94',
      'de': '94',
      'nl': '94',
    },
    'wftdrt51': {
      'en': '95',
      'de': '95',
      'nl': '95',
    },
    'x6ddenr2': {
      'en': '96',
      'de': '96',
      'nl': '96',
    },
    'b7v8wvbf': {
      'en': '97',
      'de': '97',
      'nl': '97',
    },
    'ooefhq46': {
      'en': '98',
      'de': '98',
      'nl': '98',
    },
    'v1g0vm9g': {
      'en': '99',
      'de': '99',
      'nl': '99',
    },
    'sf9v6jrd': {
      'en': '100',
      'de': '100',
      'nl': '100',
    },
    'j52lwp49': {
      'en': '101',
      'de': '101',
      'nl': '101',
    },
    'vxofafg4': {
      'en': '102',
      'de': '102',
      'nl': '102',
    },
    'yxmha4mw': {
      'en': '103',
      'de': '103',
      'nl': '103',
    },
    'webidw0x': {
      'en': '104',
      'de': '104',
      'nl': '104',
    },
    '1qw1euav': {
      'en': '105',
      'de': '105',
      'nl': '105',
    },
    '2vg77trx': {
      'en': '106',
      'de': '106',
      'nl': '106',
    },
    '1m34squl': {
      'en': '107',
      'de': '107',
      'nl': '107',
    },
    '5f01jr2b': {
      'en': '108',
      'de': '108',
      'nl': '108',
    },
    'mbnde8k0': {
      'en': '109',
      'de': '109',
      'nl': '109',
    },
    'lase7q51': {
      'en': '110',
      'de': '110',
      'nl': '110',
    },
    'wfpnqn9x': {
      'en': '111',
      'de': '111',
      'nl': '111',
    },
    'fcmpoyxl': {
      'en': '112',
      'de': '112',
      'nl': '112',
    },
    'owoieqkx': {
      'en': '113',
      'de': '113',
      'nl': '113',
    },
    'rx05uq4j': {
      'en': '114',
      'de': '114',
      'nl': '114',
    },
    '7299hgao': {
      'en': '115',
      'de': '115',
      'nl': '115',
    },
    'agnuz6at': {
      'en': '116',
      'de': '116',
      'nl': '116',
    },
    '4as2rgvk': {
      'en': '117',
      'de': '117',
      'nl': '117',
    },
    'nuw73fbv': {
      'en': '118',
      'de': '118',
      'nl': '118',
    },
    'phzn48q8': {
      'en': '119',
      'de': '119',
      'nl': '119',
    },
    'rvaytvll': {
      'en': '120',
      'de': '120',
      'nl': '120',
    },
    'oba0fbo7': {
      'en': '121',
      'de': '121',
      'nl': '121',
    },
    '2ilycghq': {
      'en': '122',
      'de': '122',
      'nl': '122',
    },
    'qubrllvh': {
      'en': '123',
      'de': '123',
      'nl': '123',
    },
    'etbp3lmz': {
      'en': '124',
      'de': '124',
      'nl': '124',
    },
    'uuwu5a7t': {
      'en': '125',
      'de': '125',
      'nl': '125',
    },
    'and67cvu': {
      'en': '126',
      'de': '126',
      'nl': '126',
    },
    '0nmrz1gb': {
      'en': '127',
      'de': '127',
      'nl': '127',
    },
    '228zen3z': {
      'en': '128',
      'de': '128',
      'nl': '128',
    },
    'hi6l0qyf': {
      'en': '129',
      'de': '129',
      'nl': '129',
    },
    'uh3fisbt': {
      'en': '130',
      'de': '130',
      'nl': '130',
    },
    'hbup3ia3': {
      'en': '131',
      'de': '131',
      'nl': '131',
    },
    'vmxdqcl0': {
      'en': '132',
      'de': '132',
      'nl': '132',
    },
    'ewd1312y': {
      'en': '133',
      'de': '133',
      'nl': '133',
    },
    '2lb6b4sq': {
      'en': '134',
      'de': '134',
      'nl': '134',
    },
    'dutx7mlv': {
      'en': '135',
      'de': '135',
      'nl': '135',
    },
    'w1ju8sio': {
      'en': '136',
      'de': '136',
      'nl': '136',
    },
    '7fvj0ty4': {
      'en': '137',
      'de': '137',
      'nl': '137',
    },
    '7z30ew98': {
      'en': '138',
      'de': '138',
      'nl': '138',
    },
    '6eqylj85': {
      'en': '139',
      'de': '139',
      'nl': '139',
    },
    'vxg5oy9v': {
      'en': '140',
      'de': '140',
      'nl': '140',
    },
    '07wswg0c': {
      'en': '141',
      'de': '141',
      'nl': '141',
    },
    'bt597rkd': {
      'en': '142',
      'de': '142',
      'nl': '142',
    },
    '0w8knt58': {
      'en': '143',
      'de': '143',
      'nl': '143',
    },
    '5tdta0j2': {
      'en': '144',
      'de': '144',
      'nl': '144',
    },
    'kw066yo8': {
      'en': '145',
      'de': '145',
      'nl': '145',
    },
    'h1du0lyo': {
      'en': '146',
      'de': '146',
      'nl': '146',
    },
    '2r240fj2': {
      'en': '147',
      'de': '147',
      'nl': '147',
    },
    'jjnjs61g': {
      'en': '148',
      'de': '148',
      'nl': '148',
    },
    'xz9ciosz': {
      'en': '149',
      'de': '149',
      'nl': '149',
    },
    'p0ob65an': {
      'en': '150',
      'de': '150',
      'nl': '150',
    },
    'd9riy5oo': {
      'en': '151',
      'de': '151',
      'nl': '151',
    },
    'r26n88ae': {
      'en': '152',
      'de': '152',
      'nl': '152',
    },
    'mpdjbp08': {
      'en': '153',
      'de': '153',
      'nl': '153',
    },
    '4n04heia': {
      'en': '154',
      'de': '154',
      'nl': '154',
    },
    '5m20y0jb': {
      'en': '155',
      'de': '155',
      'nl': '155',
    },
    'o71w471k': {
      'en': '156',
      'de': '156',
      'nl': '156',
    },
    'm34tab0a': {
      'en': '157',
      'de': '157',
      'nl': '157',
    },
    'e69thxmn': {
      'en': '158',
      'de': '158',
      'nl': '158',
    },
    'rsskf5h2': {
      'en': '159',
      'de': '159',
      'nl': '159',
    },
    'qjr2j1p9': {
      'en': '160',
      'de': '160',
      'nl': '160',
    },
    '62gpb7i0': {
      'en': '161',
      'de': '161',
      'nl': '161',
    },
    'oyd1ityj': {
      'en': '162',
      'de': '162',
      'nl': '162',
    },
    'vtfumw7e': {
      'en': '163',
      'de': '163',
      'nl': '163',
    },
    '3c3xgznz': {
      'en': '164',
      'de': '164',
      'nl': '164',
    },
    '5wic1jga': {
      'en': '165',
      'de': '165',
      'nl': '165',
    },
    'qamf890e': {
      'en': '166',
      'de': '166',
      'nl': '166',
    },
    'jdyrq9pk': {
      'en': '167',
      'de': '167',
      'nl': '167',
    },
    '0d3kletn': {
      'en': '168',
      'de': '168',
      'nl': '168',
    },
    'kuv6elby': {
      'en': '169',
      'de': '169',
      'nl': '169',
    },
    'oo1dj77d': {
      'en': '170',
      'de': '170',
      'nl': '170',
    },
    'uphmvgjd': {
      'en': '171',
      'de': '171',
      'nl': '171',
    },
    'hxbkb2by': {
      'en': '172',
      'de': '172',
      'nl': '172',
    },
    'cyef5o7g': {
      'en': '173',
      'de': '173',
      'nl': '173',
    },
    'pfns4oec': {
      'en': '174',
      'de': '174',
      'nl': '174',
    },
    'b4o0a73u': {
      'en': '175',
      'de': '175',
      'nl': '175',
    },
    'mitipc6b': {
      'en': '176',
      'de': '176',
      'nl': '176',
    },
    'npuiap5b': {
      'en': '177',
      'de': '177',
      'nl': '177',
    },
    '851s1vcx': {
      'en': '178',
      'de': '178',
      'nl': '178',
    },
    '2mdnggp5': {
      'en': '179',
      'de': '179',
      'nl': '179',
    },
    'jlkq85g4': {
      'en': '180',
      'de': '180',
      'nl': '180',
    },
    '7w9gon8y': {
      'en': 'Seconds',
      'de': 'Sekunden',
      'nl': 'Seconden',
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
  // DeviceSaveToPhone
  {
    'yl1qmbx9': {
      'en': 'Button',
      'de': 'Taste',
      'nl': 'Knop',
    },
    'ozjgapkt': {
      'en': 'enter an Name',
      'de': 'Geben Sie einen Namen ein',
      'nl': 'Voer een naam in',
    },
    'wif902cp': {
      'en': 'Save now to Phone',
      'de': 'Jetzt aufs Handy speichern',
      'nl': 'Nu opslaan op telefoon',
    },
    'e7oinwor': {
      'en': 'Home',
      'de': 'Heim',
      'nl': 'Thuis',
    },
  },
  // DeviceSaveFromPhone
  {
    'lkm14kaj': {
      'en': 'Button',
      'de': 'Taste',
      'nl': 'Knop',
    },
    '0rrqnl37': {
      'en': 'Select...',
      'de': 'Wählen...',
      'nl': 'Selecteer...',
    },
    '5ofz0v9h': {
      'en': 'Search...',
      'de': '',
      'nl': '',
    },
    'rh0u6q1a': {
      'en': 'Load from Phone',
      'de': 'Vom Telefon laden',
      'nl': 'Laden vanaf telefoon',
    },
    'nq96rch9': {
      'en': 'Delete stored Lines',
      'de': 'Gespeicherte Zeilen löschen',
      'nl': 'Opgeslagen regels verwijderen',
    },
    '8lbnhngy': {
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

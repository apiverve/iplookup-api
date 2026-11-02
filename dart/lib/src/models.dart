/// Response models for the IP Lookup API.

/// API Response wrapper.
class IplookupResponse {
  final String status;
  final dynamic error;
  final IplookupData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  IplookupResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory IplookupResponse.fromJson(Map<String, dynamic> json) => IplookupResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? IplookupData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the IP Lookup API.

class IplookupData {
  String? ip;
  String? country;
  String? countryName;
  String? region;
  String? regionName;
  String? city;
  String? continent;
  String? continentName;
  String? timezone;
  List<num>? coordinates;
  String? postalCode;
  num? accuracyRadius;
  bool? isEU;
  String? asn;
  String? asnName;
  num? ipVersion;
  bool? isPublic;
  dynamic reservedType;
  String? countryCode3;
  String? capital;
  String? callingCode;
  IplookupDataCurrency? currency;
  List<String>? languages;
  String? flag;
  String? tld;
  String? utcOffset;
  String? localTime;
  bool? isDst;
  String? hostname;

  IplookupData({
    this.ip,
    this.country,
    this.countryName,
    this.region,
    this.regionName,
    this.city,
    this.continent,
    this.continentName,
    this.timezone,
    this.coordinates,
    this.postalCode,
    this.accuracyRadius,
    this.isEU,
    this.asn,
    this.asnName,
    this.ipVersion,
    this.isPublic,
    this.reservedType,
    this.countryCode3,
    this.capital,
    this.callingCode,
    this.currency,
    this.languages,
    this.flag,
    this.tld,
    this.utcOffset,
    this.localTime,
    this.isDst,
    this.hostname,
  });

  factory IplookupData.fromJson(Map<String, dynamic> json) => IplookupData(
      ip: json['ip'],
      country: json['country'],
      countryName: json['countryName'],
      region: json['region'],
      regionName: json['regionName'],
      city: json['city'],
      continent: json['continent'],
      continentName: json['continentName'],
      timezone: json['timezone'],
      coordinates: (json['coordinates'] as List?)?.cast<num>(),
      postalCode: json['postalCode'],
      accuracyRadius: json['accuracyRadius'],
      isEU: json['isEU'],
      asn: json['asn'],
      asnName: json['asnName'],
      ipVersion: json['ipVersion'],
      isPublic: json['isPublic'],
      reservedType: json['reservedType'],
      countryCode3: json['countryCode3'],
      capital: json['capital'],
      callingCode: json['callingCode'],
      currency: json['currency'] != null ? IplookupDataCurrency.fromJson(json['currency']) : null,
      languages: (json['languages'] as List?)?.cast<String>(),
      flag: json['flag'],
      tld: json['tld'],
      utcOffset: json['utcOffset'],
      localTime: json['localTime'],
      isDst: json['isDst'],
      hostname: json['hostname'],
    );
}

class IplookupDataCurrency {
  String? code;
  String? name;
  String? symbol;

  IplookupDataCurrency({
    this.code,
    this.name,
    this.symbol,
  });

  factory IplookupDataCurrency.fromJson(Map<String, dynamic> json) => IplookupDataCurrency(
      code: json['code'],
      name: json['name'],
      symbol: json['symbol'],
    );
}

class IplookupRequest {
  String ip;

  IplookupRequest({
    required this.ip,
  });

  Map<String, dynamic> toJson() => {
      'ip': ip,
    };
}

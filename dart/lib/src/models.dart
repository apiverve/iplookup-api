/// Response models for the IP Lookup API.

/// API Response wrapper.
class IplookupResponse {
  final String status;
  final dynamic error;
  final IplookupData? data;

  IplookupResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory IplookupResponse.fromJson(Map<String, dynamic> json) => IplookupResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? IplookupData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the IP Lookup API.

class IplookupData {
  List<int>? range;
  String? country;
  String? region;
  String? timezone;
  String? city;
  List<double>? coordinates;
  String? ip;

  IplookupData({
    this.range,
    this.country,
    this.region,
    this.timezone,
    this.city,
    this.coordinates,
    this.ip,
  });

  factory IplookupData.fromJson(Map<String, dynamic> json) => IplookupData(
      range: (json['range'] as List?)?.cast<int>(),
      country: json['country'],
      region: json['region'],
      timezone: json['timezone'],
      city: json['city'],
      coordinates: (json['coordinates'] as List?)?.cast<double>(),
      ip: json['ip'],
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

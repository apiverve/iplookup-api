# IP Lookup API - Dart/Flutter Client

IP Lookup is an IP address location API that resolves any IP to its country, region, timezone and continent, with the country's currency, calling code, languages and flag and the local time there. Private and reserved addresses are labelled instead of failing. Paid plans add city, coordinates, postal code, an accuracy radius, an EU-membership flag, ASN and the reverse DNS hostname.

[![pub package](https://img.shields.io/pub/v/apiverve_iplookup.svg)](https://pub.dev/packages/apiverve_iplookup)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [IP Lookup API](https://apiverve.com/marketplace/iplookup?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_iplookup: ^1.2.5
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_iplookup/apiverve_iplookup.dart';

void main() async {
  final client = IplookupClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'ip': '173.172.81.20'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "ip": "173.172.81.20",
    "country": "US",
    "countryName": "United States",
    "region": "NE",
    "regionName": "Nebraska",
    "city": "Lincoln",
    "continent": "NA",
    "continentName": "North America",
    "timezone": "America/Chicago",
    "coordinates": [
      40.7579,
      -96.6962
    ],
    "postalCode": "68512",
    "accuracyRadius": 20,
    "isEU": false,
    "asn": "AS11427",
    "asnName": "TWC-11427-TEXAS",
    "ipVersion": 4,
    "isPublic": true,
    "reservedType": null,
    "countryCode3": "USA",
    "capital": "Washington D.C.",
    "callingCode": "+1",
    "currency": {
      "code": "USD",
      "name": "United States dollar",
      "symbol": "$"
    },
    "languages": [
      "English"
    ],
    "flag": "🇺🇸",
    "tld": ".us",
    "utcOffset": "-05:00",
    "localTime": "2026-10-26T20:28:33-05:00",
    "isDst": true,
    "hostname": "syn-173-172-081-020.res.spectrum.com"
  }
}
```

## API Reference

- **API Home:** [IP Lookup API](https://apiverve.com/marketplace/iplookup?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/iplookup](https://docs.apiverve.com/ref/iplookup?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)

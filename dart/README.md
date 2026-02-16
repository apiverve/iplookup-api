# IP Lookup API - Dart/Flutter Client

IP Lookup is a simple tool for looking up the location of an IP address. It returns the country, city, and more.

[![pub package](https://img.shields.io/pub/v/apiverve_iplookup.svg)](https://pub.dev/packages/apiverve_iplookup)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [IP Lookup API](https://iplookup.apiverve.com?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_iplookup: ^1.1.14
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
    "range": [
      2913751040,
      2913755135
    ],
    "country": "US",
    "region": "MO",
    "timezone": "America/Chicago",
    "city": "Kansas City",
    "coordinates": [
      39.0831,
      -94.5853
    ],
    "ip": "173.172.81.20"
  }
}
```

## API Reference

- **API Home:** [IP Lookup API](https://iplookup.apiverve.com?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/iplookup](https://docs.apiverve.com/ref/iplookup?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)

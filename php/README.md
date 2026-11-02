# IP Lookup API - PHP Package

IP Lookup is an IP address location API that resolves any IP to its country, region, timezone and continent, with the country's currency, calling code, languages and flag and the local time there. Private and reserved addresses are labelled instead of failing. Paid plans add city, coordinates, postal code, an accuracy radius, an EU-membership flag, ASN and the reverse DNS hostname.

## Installation

Install via Composer:

```bash
composer require apiverve/iplookup
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Iplookup\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['ip' => '173.172.81.20']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Iplookup\Client;
use APIVerve\Iplookup\Exceptions\APIException;
use APIVerve\Iplookup\Exceptions\ValidationException;

try {
    $response = $client->execute(['ip' => '173.172.81.20']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/iplookup?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/iplookup?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/iplookup?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).

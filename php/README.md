# IP Lookup API - PHP Package

IP Lookup resolves an IP address to its geographic location. It returns the country, region, city, coordinates, postal code, timezone and continent, along with an accuracy radius and an EU-membership flag for compliance routing.

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
    "region": "MO",
    "regionName": "Missouri",
    "city": "Kansas City",
    "continent": "NA",
    "continentName": "North America",
    "timezone": "America/Chicago",
    "coordinates": [
      39.0831,
      -94.5853
    ],
    "postalCode": "64106",
    "accuracyRadius": 20,
    "isEU": false
  }
}
```

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/iplookup?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://iplookup.apiverve.com?utm_source=php&utm_medium=readme](https://iplookup.apiverve.com?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).

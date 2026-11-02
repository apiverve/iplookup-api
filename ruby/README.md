# IP Lookup API - Ruby Gem

IP Lookup is an IP address location API that resolves any IP to its country, region, timezone and continent, with the country's currency, calling code, languages and flag and the local time there. Private and reserved addresses are labelled instead of failing. Paid plans add city, coordinates, postal code, an accuracy radius, an EU-membership flag, ASN and the reverse DNS hostname.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_iplookup'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_iplookup
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_iplookup'

# Initialize the client
client = APIVerve::Iplookup::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ ip: "173.172.81.20" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ ip: "173.172.81.20" })
  puts response["data"]
rescue APIVerve::Iplookup::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Iplookup::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Iplookup::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/iplookup?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/iplookup?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/iplookup?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).

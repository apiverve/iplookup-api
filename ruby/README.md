# IP Lookup API - Ruby Gem

IP Lookup is an IP address location API that resolves any IP to its country, region, timezone and continent. Paid plans add city, coordinates, postal code, an accuracy radius and an EU-membership flag for compliance routing.

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
    "isEU": false,
    "asn": "AS11427",
    "asnName": "TWC-11427-TEXAS"
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

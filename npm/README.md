# IP Lookup API

IP Lookup is an IP address location API that resolves any IP to its country, region, timezone and continent, with the country's currency, calling code, languages and flag and the local time there. Private and reserved addresses are labelled instead of failing. Paid plans add city, coordinates, postal code, an accuracy radius, an EU-membership flag, ASN and the reverse DNS hostname.

[![npm version](https://img.shields.io/npm/v/@apiverve/iplookup.svg)](https://www.npmjs.com/package/@apiverve/iplookup)

This is a JavaScript wrapper for the [IP Lookup API](https://apiverve.com/marketplace/iplookup?utm_source=npm&utm_medium=referral&utm_content=readme)

---

## Installation

Using npm:
```shell
npm install @apiverve/iplookup
```

Using yarn:
```shell
yarn add @apiverve/iplookup
```

---

## Configuration

Before using the IP Lookup API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=npm&utm_medium=referral&utm_content=readme)

---

## Quick Start

[Get started with the Quick Start Guide](https://docs.apiverve.com/quickstart?utm_source=npm&utm_medium=referral&utm_content=readme)

The IP Lookup API documentation is found here: [https://docs.apiverve.com/ref/iplookup](https://docs.apiverve.com/ref/iplookup?utm_source=npm&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```javascript
const iplookupAPI = require('@apiverve/iplookup');
const api = new iplookupAPI({
    api_key: '[YOUR_API_KEY]'
});
```

---

## Usage

---

### Perform Request

Using the API is simple. All you have to do is make a request. The API will return a response with the data you requested.

```javascript
var query = {
  ip: "173.172.81.20"
};

api.execute(query, function (error, data) {
    if (error) {
        return console.error(error);
    } else {
        console.log(data);
    }
});
```

---

### Using Promises

You can also use promises to make requests. The API returns a promise that you can use to handle the response.

```javascript
var query = {
  ip: "173.172.81.20"
};

api.execute(query)
    .then(data => {
        console.log(data);
    })
    .catch(error => {
        console.error(error);
    });
```

---

### Using Async/Await

You can also use async/await to make requests. The API returns a promise that you can use to handle the response.

```javascript
async function makeRequest() {
    var query = {
  ip: "173.172.81.20"
};

    try {
        const data = await api.execute(query);
        console.log(data);
    } catch (error) {
        console.error(error);
    }
}
```

---

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

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=npm&utm_medium=referral&utm_content=readme).

---

## Updates

Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=npm&utm_medium=referral&utm_content=readme) and [Privacy Policy](https://apiverve.com/privacy?utm_source=npm&utm_medium=referral&utm_content=readme).

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "apiverve_iplookup"
  spec.version       = "1.2.4"
  spec.authors       = ["APIVerve"]
  spec.email         = ["hello@apiverve.com"]

  spec.summary       = "IP Lookup API - Ruby Client"
  spec.description   = "IP Lookup is an IP address location API that resolves any IP to its country, region, timezone and continent, with the country's currency, calling code, languages and flag and the local time there. Private and reserved addresses are labelled instead of failing. Paid plans add city, coordinates, postal code, an accuracy radius, an EU-membership flag, ASN and the reverse DNS hostname."
  spec.homepage      = "https://apiverve.com/marketplace/iplookup?utm_source=ruby&utm_medium=referral&utm_content=homepage"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/apiverve/iplookup-API/tree/main/ruby"
  spec.metadata["changelog_uri"] = "https://apiverve.com/changelog"
  spec.metadata["documentation_uri"] = "https://docs.apiverve.com/ref/iplookup"

  spec.files = Dir.glob("{lib}/**/*") + %w[README.md LICENSE]
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", ">= 1.0", "< 3.0"
  spec.add_dependency "faraday-multipart", "~> 1.0"
  spec.add_dependency "json", "~> 2.0"
end

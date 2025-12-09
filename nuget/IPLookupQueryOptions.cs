using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.IPLookup
{
    /// <summary>
    /// Query options for the IP Lookup API
    /// </summary>
    public class IPLookupQueryOptions
    {
        /// <summary>
        /// The IP address for which you want to get the location data (e.g., 173.172.81.20)
        /// Example: 173.172.81.20
        /// </summary>
        [JsonProperty("ip")]
        public string Ip { get; set; }
    }
}

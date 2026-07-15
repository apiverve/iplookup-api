declare module '@apiverve/iplookup' {
  export interface iplookupOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface iplookupResponse {
    status: string;
    error: string | null;
    data: IPLookupData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface IPLookupData {
      ip:             null | string;
      country:        null | string;
      countryName:    null | string;
      region:         null | string;
      regionName:     null | string;
      city:           null | string;
      continent:      null | string;
      continentName:  null | string;
      timezone:       null | string;
      coordinates:    (number | null)[];
      postalCode:     null | string;
      accuracyRadius: number | null;
      isEU:           boolean | null;
  }

  export default class iplookupWrapper {
    constructor(options: iplookupOptions);

    execute(callback: (error: any, data: iplookupResponse | null) => void): Promise<iplookupResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: iplookupResponse | null) => void): Promise<iplookupResponse>;
    execute(query?: Record<string, any>): Promise<iplookupResponse>;
  }
}

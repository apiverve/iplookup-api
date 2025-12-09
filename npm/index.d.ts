declare module '@apiverve/iplookup' {
  export interface iplookupOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface iplookupResponse {
    status: string;
    error: string | null;
    data: IPLookupData;
    code?: number;
  }


  interface IPLookupData {
      range:       number[];
      country:     string;
      region:      string;
      timezone:    string;
      city:        string;
      coordinates: number[];
      ip:          string;
  }

  export default class iplookupWrapper {
    constructor(options: iplookupOptions);

    execute(callback: (error: any, data: iplookupResponse | null) => void): Promise<iplookupResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: iplookupResponse | null) => void): Promise<iplookupResponse>;
    execute(query?: Record<string, any>): Promise<iplookupResponse>;
  }
}

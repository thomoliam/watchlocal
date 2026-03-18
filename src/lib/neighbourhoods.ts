/**
 * Static neighbourhood bounding boxes for the top cities.
 * Used by /cities/[city]/[neighbourhood] pages to filter venues
 * by geographic area rather than just city.
 *
 * Boxes are deliberately slightly generous to catch venues on the borders.
 */

export interface Neighbourhood {
  name: string;
  slug: string;
  description: string;
  latMin: number;
  latMax: number;
  lngMin: number;
  lngMax: number;
}

export const CITY_NEIGHBOURHOODS: Record<string, Neighbourhood[]> = {
  london: [
    {
      name: "Shoreditch",
      slug: "shoreditch",
      description: "London's creative and tech hub, packed with craft beer bars and sports venues showing every league going.",
      latMin: 51.515, latMax: 51.538, lngMin: -0.085, lngMax: -0.058,
    },
    {
      name: "Soho",
      slug: "soho",
      description: "Central London's entertainment district — easy to get to from anywhere and full of pubs with screens.",
      latMin: 51.509, latMax: 51.519, lngMin: -0.140, lngMax: -0.120,
    },
    {
      name: "London Bridge",
      slug: "london-bridge",
      description: "Borough and Bermondsey's best sports bars, south of the river and easy for commuters.",
      latMin: 51.496, latMax: 51.510, lngMin: -0.098, lngMax: -0.072,
    },
    {
      name: "Camden",
      slug: "camden",
      description: "North London's famous market district with a strong pub culture and plenty of screens.",
      latMin: 51.534, latMax: 51.552, lngMin: -0.152, lngMax: -0.128,
    },
    {
      name: "Canary Wharf",
      slug: "canary-wharf",
      description: "East London's financial district — expat-friendly sports bars catering to every timezone.",
      latMin: 51.497, latMax: 51.508, lngMin: -0.024, lngMax: -0.002,
    },
  ],

  "new-york-city": [
    {
      name: "Manhattan",
      slug: "manhattan",
      description: "The heart of NYC — endless sports bars from Midtown to the Village.",
      latMin: 40.700, latMax: 40.820, lngMin: -74.020, lngMax: -73.930,
    },
    {
      name: "Brooklyn",
      slug: "brooklyn",
      description: "Williamsburg, Park Slope, and beyond — Brooklyn's bar scene is second to none.",
      latMin: 40.620, latMax: 40.720, lngMin: -74.050, lngMax: -73.840,
    },
    {
      name: "Hell's Kitchen",
      slug: "hells-kitchen",
      description: "Midtown West's dense bar strip — walking distance from Madison Square Garden.",
      latMin: 40.756, latMax: 40.772, lngMin: -74.010, lngMax: -73.985,
    },
  ],

  bangkok: [
    {
      name: "Sukhumvit",
      slug: "sukhumvit",
      description: "Bangkok's expat heartland — Sukhumvit Soi 11, 22, and beyond are home to the best sports bars in the city.",
      latMin: 13.720, latMax: 13.760, lngMin: 100.540, lngMax: 100.590,
    },
    {
      name: "Silom",
      slug: "silom",
      description: "Bangkok's business district by day, lively bar strip by night — great for watching sport.",
      latMin: 13.720, latMax: 13.740, lngMin: 100.510, lngMax: 100.540,
    },
    {
      name: "Khao San",
      slug: "khao-san",
      description: "The backpacker hub of Bangkok — packed with cheap bars showing major international sport.",
      latMin: 13.755, latMax: 13.765, lngMin: 100.490, lngMax: 100.510,
    },
  ],

  barcelona: [
    {
      name: "Eixample",
      slug: "eixample",
      description: "Barcelona's grid district — the highest concentration of sports bars in the city.",
      latMin: 41.380, latMax: 41.408, lngMin: 2.145, lngMax: 2.185,
    },
    {
      name: "Gothic Quarter",
      slug: "gothic-quarter",
      description: "The old city — atmospheric bars and pubs tucked into medieval streets.",
      latMin: 41.378, latMax: 41.388, lngMin: 2.170, lngMax: 2.184,
    },
    {
      name: "Gràcia",
      slug: "gracia",
      description: "Barcelona's bohemian village neighbourhood, with local bars popular on match days.",
      latMin: 41.402, latMax: 41.420, lngMin: 2.148, lngMax: 2.168,
    },
  ],

  amsterdam: [
    {
      name: "Jordaan",
      slug: "jordaan",
      description: "Amsterdam's most charming neighbourhood — canal-side bars perfect for big matches.",
      latMin: 52.368, latMax: 52.382, lngMin: 4.877, lngMax: 4.895,
    },
    {
      name: "De Pijp",
      slug: "de-pijp",
      description: "Amsterdam's multicultural heart — lively bars and good screens around the Albert Cuyp market.",
      latMin: 52.351, latMax: 52.363, lngMin: 4.890, lngMax: 4.912,
    },
    {
      name: "Leidseplein",
      slug: "leidseplein",
      description: "Amsterdam's nightlife square — the most-watched area for major sporting events.",
      latMin: 52.360, latMax: 52.368, lngMin: 4.878, lngMax: 4.892,
    },
  ],

  berlin: [
    {
      name: "Mitte",
      slug: "mitte",
      description: "Berlin's central district — a growing sports bar scene alongside the tourist hotspots.",
      latMin: 52.510, latMax: 52.535, lngMin: 13.380, lngMax: 13.420,
    },
    {
      name: "Prenzlauer Berg",
      slug: "prenzlauer-berg",
      description: "East Berlin's cool residential neighbourhood — popular match-day pubs and craft beer bars.",
      latMin: 52.530, latMax: 52.548, lngMin: 13.405, lngMax: 13.435,
    },
    {
      name: "Kreuzberg",
      slug: "kreuzberg",
      description: "Berlin's alternative heart — cheap beers and big screens in a laid-back setting.",
      latMin: 52.490, latMax: 52.508, lngMin: 13.385, lngMax: 13.420,
    },
  ],

  melbourne: [
    {
      name: "CBD",
      slug: "cbd",
      description: "Melbourne's city centre — wall-to-wall sports bars from Flinders Lane to Bourke Street.",
      latMin: -37.825, latMax: -37.805, lngMin: 144.948, lngMax: 144.978,
    },
    {
      name: "Fitzroy",
      slug: "fitzroy",
      description: "Melbourne's hipster heartland — craft beer bars with plenty of screens for AFL and more.",
      latMin: -37.810, latMax: -37.793, lngMin: 144.970, lngMax: 144.992,
    },
    {
      name: "Collingwood",
      slug: "collingwood",
      description: "Home of the Magpies — high density of sports pubs and passionate local crowds.",
      latMin: -37.808, latMax: -37.793, lngMin: 144.988, lngMax: 145.005,
    },
  ],

  sydney: [
    {
      name: "CBD",
      slug: "cbd",
      description: "Sydney's city centre — packed with sports bars from Circular Quay to Central.",
      latMin: -33.880, latMax: -33.858, lngMin: 151.195, lngMax: 151.218,
    },
    {
      name: "Surry Hills",
      slug: "surry-hills",
      description: "Sydney's bar-dense inner suburb — great for watching NRL, AFL, and international fixtures.",
      latMin: -33.892, latMax: -33.875, lngMin: 151.206, lngMax: 151.225,
    },
    {
      name: "Newtown",
      slug: "newtown",
      description: "King Street's pub strip — one of Sydney's best areas for a match-day session.",
      latMin: -33.905, latMax: -33.892, lngMin: 151.172, lngMax: 151.190,
    },
  ],

  dublin: [
    {
      name: "Temple Bar",
      slug: "temple-bar",
      description: "Dublin's tourist and nightlife hub — plenty of pubs showing all major sport.",
      latMin: 53.344, latMax: 53.350, lngMin: -6.272, lngMax: -6.258,
    },
    {
      name: "Portobello",
      slug: "portobello",
      description: "Dublin's canal-side quarter — local pubs with big screens and a friendly atmosphere.",
      latMin: 53.330, latMax: 53.342, lngMin: -6.272, lngMax: -6.255,
    },
    {
      name: "Ranelagh",
      slug: "ranelagh",
      description: "South Dublin's most popular suburb for sport — great local pubs and a strong community feel.",
      latMin: 53.320, latMax: 53.334, lngMin: -6.268, lngMax: -6.248,
    },
  ],

  singapore: [
    {
      name: "Clarke Quay",
      slug: "clarke-quay",
      description: "Singapore's riverside bar district — the go-to for watching live sport after work.",
      latMin: 1.286, latMax: 1.294, lngMin: 103.843, lngMax: 103.852,
    },
    {
      name: "Orchard",
      slug: "orchard",
      description: "Singapore's shopping and hotel belt — expat-friendly sports bars along Orchard Road.",
      latMin: 1.296, latMax: 1.310, lngMin: 103.820, lngMax: 103.845,
    },
  ],

  dubai: [
    {
      name: "Dubai Marina",
      slug: "dubai-marina",
      description: "Dubai's waterfront expat hub — the best selection of sports bars in the city.",
      latMin: 25.068, latMax: 25.090, lngMin: 55.128, lngMax: 55.148,
    },
    {
      name: "Downtown Dubai",
      slug: "downtown-dubai",
      description: "Around Burj Khalifa and Dubai Mall — hotel sports bars with screens for every sport.",
      latMin: 25.188, latMax: 25.202, lngMin: 55.268, lngMax: 55.285,
    },
  ],

  "bali": [
    {
      name: "Seminyak",
      slug: "seminyak",
      description: "Bali's expat strip — beach clubs and sports bars showing Australian, UK, and US sport.",
      latMin: -8.700, latMax: -8.678, lngMin: 115.153, lngMax: 115.170,
    },
    {
      name: "Canggu",
      slug: "canggu",
      description: "The digital nomad capital of Bali — cafes and bars with reliable streams for all sports.",
      latMin: -8.660, latMax: -8.638, lngMin: 115.120, lngMax: 115.145,
    },
    {
      name: "Kuta",
      slug: "kuta",
      description: "Bali's original tourist strip — cheap bars with multiple screens for big matches.",
      latMin: -8.730, latMax: -8.710, lngMin: 115.160, lngMax: 115.178,
    },
  ],

  "lisbon": [
    {
      name: "Bairro Alto",
      slug: "bairro-alto",
      description: "Lisbon's hilltop party district — narrow streets lined with bars showing football till late.",
      latMin: 38.710, latMax: 38.718, lngMin: -9.147, lngMax: -9.138,
    },
    {
      name: "Cais do Sodré",
      slug: "cais-do-sodre",
      description: "Lisbon's riverside bar strip — Pink Street and beyond for sport and nightlife.",
      latMin: 38.703, latMax: 38.712, lngMin: -9.148, lngMax: -9.138,
    },
  ],

  madrid: [
    {
      name: "Malasaña",
      slug: "malasana",
      description: "Madrid's alternative neighbourhood — local bars buzzing for La Liga and Champions League.",
      latMin: 40.424, latMax: 40.432, lngMin: -3.708, lngMax: -3.698,
    },
    {
      name: "Sol",
      slug: "sol",
      description: "The heart of Madrid — tourist-friendly sports bars with screens for every match.",
      latMin: 40.415, latMax: 40.422, lngMin: -3.706, lngMax: -3.695,
    },
  ],

  paris: [
    {
      name: "Le Marais",
      slug: "le-marais",
      description: "Paris's historic and trendy district — stylish bars and pubs showing international sport.",
      latMin: 48.853, latMax: 48.864, lngMin: 2.346, lngMax: 2.366,
    },
    {
      name: "Oberkampf",
      slug: "oberkampf",
      description: "Paris's liveliest nightlife strip — relaxed bars and brasseries popular on match nights.",
      latMin: 48.862, latMax: 48.872, lngMin: 2.366, lngMax: 2.384,
    },
    {
      name: "Saint-Germain",
      slug: "saint-germain",
      description: "Left Bank's intellectual café culture meets sport — several international sports bars near the Seine.",
      latMin: 48.849, latMax: 48.857, lngMin: 2.328, lngMax: 2.345,
    },
    {
      name: "Bastille",
      slug: "bastille",
      description: "East Paris's buzzing nightlife hub — craft bars and Irish pubs for big match days.",
      latMin: 48.849, latMax: 48.857, lngMin: 2.362, lngMax: 2.378,
    },
  ],

  tokyo: [
    {
      name: "Shinjuku",
      slug: "shinjuku",
      description: "Tokyo's entertainment mega-district — packed with sports bars and British pubs on match nights.",
      latMin: 35.688, latMax: 35.698, lngMin: 139.694, lngMax: 139.710,
    },
    {
      name: "Shibuya",
      slug: "shibuya",
      description: "Tokyo's youth capital — international sports bars and expat-friendly pubs around the famous crossing.",
      latMin: 35.656, latMax: 35.666, lngMin: 139.694, lngMax: 139.708,
    },
    {
      name: "Roppongi",
      slug: "roppongi",
      description: "Tokyo's expat nightlife hub — the highest concentration of sports bars in the city.",
      latMin: 35.660, latMax: 35.668, lngMin: 139.728, lngMax: 139.742,
    },
    {
      name: "Akihabara",
      slug: "akihabara",
      description: "East Tokyo's gaming and entertainment district — some great screen-filled sports bars.",
      latMin: 35.695, latMax: 35.703, lngMin: 139.769, lngMax: 139.779,
    },
  ],

  "los-angeles": [
    {
      name: "Hollywood",
      slug: "hollywood",
      description: "LA's entertainment district — vibrant sports bars on Hollywood Blvd and Cahuenga.",
      latMin: 34.090, latMax: 34.105, lngMin: -118.345, lngMax: -118.320,
    },
    {
      name: "Downtown LA",
      slug: "downtown-la",
      description: "LA's revitalised city centre — sports bars near Staples Center and LA Live.",
      latMin: 34.040, latMax: 34.055, lngMin: -118.270, lngMax: -118.245,
    },
    {
      name: "Silver Lake",
      slug: "silver-lake",
      description: "LA's hipster heartland — laid-back bars with screens for soccer, NFL, and NBA.",
      latMin: 34.085, latMax: 34.097, lngMin: -118.278, lngMax: -118.260,
    },
    {
      name: "Santa Monica",
      slug: "santa-monica",
      description: "Beachside sports bars near the pier — popular with expats for Premier League early kicks.",
      latMin: 34.010, latMax: 34.025, lngMin: -118.510, lngMax: -118.488,
    },
  ],

  chicago: [
    {
      name: "Wicker Park",
      slug: "wicker-park",
      description: "Chicago's coolest neighbourhood — craft bars and pub-style venues for every sport.",
      latMin: 41.906, latMax: 41.916, lngMin: -87.678, lngMax: -87.658,
    },
    {
      name: "Wrigleyville",
      slug: "wrigleyville",
      description: "Home of Wrigley Field — the densest concentration of sports bars in Chicago.",
      latMin: 41.946, latMax: 41.958, lngMin: -87.660, lngMax: -87.644,
    },
    {
      name: "River North",
      slug: "river-north",
      description: "Chicago's upscale bar and restaurant district — great sports bars with views.",
      latMin: 41.889, latMax: 41.900, lngMin: -87.637, lngMax: -87.622,
    },
    {
      name: "Lincoln Park",
      slug: "lincoln-park",
      description: "Affluent north Chicago neighbourhood — popular pubs for Cubs and Bears game days.",
      latMin: 41.918, latMax: 41.932, lngMin: -87.652, lngMax: -87.635,
    },
  ],

  miami: [
    {
      name: "South Beach",
      slug: "south-beach",
      description: "Miami's iconic beach strip — rooftop bars and beach clubs with screens for major sport.",
      latMin: 25.764, latMax: 25.790, lngMin: -80.140, lngMax: -80.118,
    },
    {
      name: "Wynwood",
      slug: "wynwood",
      description: "Miami's arts and bar district — craft bars and sports pubs popular with expats.",
      latMin: 25.800, latMax: 25.812, lngMin: -80.202, lngMax: -80.186,
    },
    {
      name: "Brickell",
      slug: "brickell",
      description: "Miami's financial district — upscale sports bars popular with business expats.",
      latMin: 25.754, latMax: 25.764, lngMin: -80.202, lngMax: -80.186,
    },
  ],

  toronto: [
    {
      name: "Entertainment District",
      slug: "entertainment-district",
      description: "Toronto's sports and nightlife hub — steps from Scotiabank Arena and Rogers Centre.",
      latMin: 43.643, latMax: 43.650, lngMin: -79.398, lngMax: -79.382,
    },
    {
      name: "Kensington Market",
      slug: "kensington-market",
      description: "Toronto's eclectic neighbourhood — independent bars and pubs popular for match days.",
      latMin: 43.653, latMax: 43.661, lngMin: -79.404, lngMax: -79.392,
    },
    {
      name: "The Annex",
      slug: "the-annex",
      description: "University neighbourhood with a strong pub culture — great for Premier League watching.",
      latMin: 43.666, latMax: 43.675, lngMin: -79.410, lngMax: -79.395,
    },
    {
      name: "King West",
      slug: "king-west",
      description: "Toronto's trendiest strip — upscale sports bars and lounge-style venues on King Street.",
      latMin: 43.643, latMax: 43.649, lngMin: -79.417, lngMax: -79.398,
    },
  ],

  "cape-town": [
    {
      name: "V&A Waterfront",
      slug: "va-waterfront",
      description: "Cape Town's tourist and expat hub — sports bars with views of Table Mountain.",
      latMin: -33.908, latMax: -33.898, lngMin: 18.416, lngMax: 18.430,
    },
    {
      name: "Green Point",
      slug: "green-point",
      description: "Near Cape Town Stadium — lively bars for rugby, cricket, and football.",
      latMin: -33.909, latMax: -33.898, lngMin: 18.405, lngMax: 18.418,
    },
    {
      name: "Long Street",
      slug: "long-street",
      description: "Cape Town's iconic nightlife strip — pubs and bars showing all major sport.",
      latMin: -33.930, latMax: -33.920, lngMin: 18.415, lngMax: 18.425,
    },
  ],

  "hong-kong": [
    {
      name: "Lan Kwai Fong",
      slug: "lan-kwai-fong",
      description: "Hong Kong's legendary bar district — expat sports bars for every timezone.",
      latMin: 22.280, latMax: 22.286, lngMin: 114.152, lngMax: 114.159,
    },
    {
      name: "Wan Chai",
      slug: "wan-chai",
      description: "Hong Kong's original expat nightlife hub — sports bars with big screens on Lockhart Road.",
      latMin: 22.275, latMax: 22.283, lngMin: 114.170, lngMax: 114.183,
    },
    {
      name: "Tsim Sha Tsui",
      slug: "tsim-sha-tsui",
      description: "Kowloon's shopping and bar district — solid sports bars a short MTR ride from Central.",
      latMin: 22.295, latMax: 22.304, lngMin: 114.166, lngMax: 114.178,
    },
  ],

  rome: [
    {
      name: "Trastevere",
      slug: "trastevere",
      description: "Rome's most atmospheric neighbourhood — rustic bars and pubs packed for Serie A nights.",
      latMin: 41.883, latMax: 41.892, lngMin: 12.465, lngMax: 12.477,
    },
    {
      name: "Testaccio",
      slug: "testaccio",
      description: "Rome's traditional working-class quarter — authentic sports bars popular with locals.",
      latMin: 41.876, latMax: 41.886, lngMin: 12.473, lngMax: 12.487,
    },
    {
      name: "Prati",
      slug: "prati",
      description: "Near the Vatican — upscale bars and pubs with screens for football and rugby.",
      latMin: 41.904, latMax: 41.914, lngMin: 12.456, lngMax: 12.470,
    },
  ],

  milan: [
    {
      name: "Navigli",
      slug: "navigli",
      description: "Milan's canal district — the liveliest bar strip in the city, buzzing on match nights.",
      latMin: 45.448, latMax: 45.457, lngMin: 9.172, lngMax: 9.188,
    },
    {
      name: "Brera",
      slug: "brera",
      description: "Milan's chic arts district — aperitivo bars doubling as sports venues for big matches.",
      latMin: 45.470, latMax: 45.478, lngMin: 9.182, lngMax: 9.194,
    },
    {
      name: "Isola",
      slug: "isola",
      description: "Milan's up-and-coming neighbourhood — craft bars and sports pubs popular with young locals.",
      latMin: 45.482, latMax: 45.491, lngMin: 9.185, lngMax: 9.198,
    },
  ],

  edinburgh: [
    {
      name: "Old Town",
      slug: "old-town",
      description: "Edinburgh's historic heart — traditional pubs and bars along the Royal Mile.",
      latMin: 55.948, latMax: 55.956, lngMin: -3.196, lngMax: -3.180,
    },
    {
      name: "Grassmarket",
      slug: "grassmarket",
      description: "Edinburgh's famous pub strip — lively on Six Nations and derby days.",
      latMin: 55.945, latMax: 55.951, lngMin: -3.196, lngMax: -3.184,
    },
    {
      name: "Stockbridge",
      slug: "stockbridge",
      description: "Edinburgh's village neighbourhood — traditional Scottish pubs with a strong local atmosphere.",
      latMin: 55.956, latMax: 55.965, lngMin: -3.214, lngMax: -3.200,
    },
  ],

  manchester: [
    {
      name: "Northern Quarter",
      slug: "northern-quarter",
      description: "Manchester's indie heartland — craft bars and pubs showing every game going.",
      latMin: 53.482, latMax: 53.490, lngMin: -2.238, lngMax: -2.225,
    },
    {
      name: "Deansgate",
      slug: "deansgate",
      description: "Manchester's bar strip — packed with sports pubs and themed bars for United and City.",
      latMin: 53.475, latMax: 53.483, lngMin: -2.254, lngMax: -2.238,
    },
    {
      name: "Ancoats",
      slug: "ancoats",
      description: "Manchester's regenerated district — new craft bars with excellent screens.",
      latMin: 53.481, latMax: 53.490, lngMin: -2.224, lngMax: -2.210,
    },
  ],

  glasgow: [
    {
      name: "Merchant City",
      slug: "merchant-city",
      description: "Glasgow's trendy bar quarter — sports pubs and stylish venues for Old Firm days.",
      latMin: 55.857, latMax: 55.864, lngMin: -4.247, lngMax: -4.233,
    },
    {
      name: "West End",
      slug: "west-end",
      description: "Glasgow's university district — traditional pubs with a passionate sports crowd.",
      latMin: 55.868, latMax: 55.878, lngMin: -4.295, lngMax: -4.278,
    },
    {
      name: "Byres Road",
      slug: "byres-road",
      description: "Glasgow's most popular pub strip — great for rugby, football, and live sport.",
      latMin: 55.870, latMax: 55.880, lngMin: -4.302, lngMax: -4.290,
    },
  ],

  seoul: [
    {
      name: "Itaewon",
      slug: "itaewon",
      description: "Seoul's international neighbourhood — expat-friendly sports bars showing Western sport.",
      latMin: 37.533, latMax: 37.541, lngMin: 126.991, lngMax: 127.006,
    },
    {
      name: "Hongdae",
      slug: "hongdae",
      description: "Seoul's youth culture hub — lively bars and venues showing K-League and international sport.",
      latMin: 37.550, latMax: 37.559, lngMin: 126.919, lngMax: 126.932,
    },
    {
      name: "Gangnam",
      slug: "gangnam",
      description: "Seoul's upscale district — sophisticated sports bars and lounge venues.",
      latMin: 37.513, latMax: 37.522, lngMin: 127.019, lngMax: 127.038,
    },
  ],

  "kuala-lumpur": [
    {
      name: "KLCC",
      slug: "klcc",
      description: "Kuala Lumpur's upscale hub — hotel sports bars and expat venues near the Petronas Towers.",
      latMin: 3.150, latMax: 3.162, lngMin: 101.706, lngMax: 101.720,
    },
    {
      name: "Bangsar",
      slug: "bangsar",
      description: "KL's expat heartland — the best sports bars in the city along Telawi Street.",
      latMin: 3.128, latMax: 3.138, lngMin: 101.670, lngMax: 101.682,
    },
    {
      name: "Bukit Bintang",
      slug: "bukit-bintang",
      description: "KL's nightlife and shopping district — sports bars open late for early morning Premier League.",
      latMin: 3.143, latMax: 3.152, lngMin: 101.710, lngMax: 101.724,
    },
  ],

  "buenos-aires": [
    {
      name: "Palermo",
      slug: "palermo",
      description: "Buenos Aires's trendiest neighbourhood — craft bars and sports pubs popular for football.",
      latMin: -34.580, latMax: -34.567, lngMin: -58.440, lngMax: -58.420,
    },
    {
      name: "San Telmo",
      slug: "san-telmo",
      description: "BA's historic quarter — traditional bars packed for Superclásico and Copa Libertadores.",
      latMin: -34.625, latMax: -34.614, lngMin: -58.378, lngMax: -58.364,
    },
    {
      name: "Recoleta",
      slug: "recoleta",
      description: "Buenos Aires's upscale barrio — sophisticated venues with screens for rugby and football.",
      latMin: -34.587, latMax: -34.575, lngMin: -58.400, lngMax: -58.384,
    },
  ],

  "mexico-city": [
    {
      name: "Condesa",
      slug: "condesa",
      description: "Mexico City's coolest neighbourhood — trendy bars and restaurants showing Liga MX and NFL.",
      latMin: 19.406, latMax: 19.418, lngMin: -99.176, lngMax: -99.160,
    },
    {
      name: "Roma Norte",
      slug: "roma-norte",
      description: "CDMX's most fashionable district — craft bars and sports venues popular with young professionals.",
      latMin: 19.415, latMax: 19.426, lngMin: -99.170, lngMax: -99.154,
    },
    {
      name: "Polanco",
      slug: "polanco",
      description: "Mexico City's upscale zone — hotel sports bars and premium venues for major events.",
      latMin: 19.428, latMax: 19.439, lngMin: -99.200, lngMax: -99.182,
    },
  ],

  jakarta: [
    {
      name: "SCBD",
      slug: "scbd",
      description: "Jakarta's financial and expat hub — the best sports bars in the city in the South CBD.",
      latMin: -6.228, latMax: -6.218, lngMin: 106.800, lngMax: 106.812,
    },
    {
      name: "Kemang",
      slug: "kemang",
      description: "Jakarta's expat neighbourhood — laid-back bars and restaurants showing Premier League and Champions League.",
      latMin: -6.268, latMax: -6.256, lngMin: 106.808, lngMax: 106.822,
    },
    {
      name: "Menteng",
      slug: "menteng",
      description: "Central Jakarta's upscale district — sports cafes and bars popular with professionals.",
      latMin: -6.202, latMax: -6.192, lngMin: 106.826, lngMax: 106.840,
    },
  ],

  bogota: [
    {
      name: "Zona Rosa",
      slug: "zona-rosa",
      description: "Bogotá's entertainment district — sports bars and clubs showing football and rugby.",
      latMin: 4.666, latMax: 4.676, lngMin: -74.056, lngMax: -74.042,
    },
    {
      name: "La Candelaria",
      slug: "la-candelaria",
      description: "Bogotá's historic centre — traditional bars popular on Colombian league match days.",
      latMin: 4.594, latMax: 4.602, lngMin: -74.077, lngMax: -74.064,
    },
    {
      name: "Chapinero",
      slug: "chapinero",
      description: "Bogotá's university and bar district — craft bars and pubs for live sport.",
      latMin: 4.635, latMax: 4.648, lngMin: -74.070, lngMax: -74.056,
    },
  ],

  "ho-chi-minh-city": [
    {
      name: "District 1",
      slug: "district-1",
      description: "HCMC's expat hub — Bui Vien walking street and the surrounding area are packed with sports bars showing Premier League and international sport.",
      latMin: 10.768, latMax: 10.790, lngMin: 106.690, lngMax: 106.710,
    },
    {
      name: "Bui Vien",
      slug: "bui-vien",
      description: "Saigon's famous backpacker strip — cheap beers and big screens all night long for any major fixture.",
      latMin: 10.767, latMax: 10.773, lngMin: 106.691, lngMax: 106.700,
    },
    {
      name: "Thao Dien",
      slug: "thao-dien",
      description: "HCMC's upscale expat enclave in District 2 — relaxed sports bars popular with Western residents.",
      latMin: 10.799, latMax: 10.815, lngMin: 106.730, lngMax: 106.748,
    },
  ],

  hanoi: [
    {
      name: "Old Quarter",
      slug: "old-quarter",
      description: "Hanoi's ancient heart — narrow streets packed with bars and backpacker spots showing live sport.",
      latMin: 21.030, latMax: 21.042, lngMin: 105.846, lngMax: 105.858,
    },
    {
      name: "Tay Ho",
      slug: "tay-ho",
      description: "West Lake's expat district — the go-to neighbourhood for Western sports bars in Hanoi.",
      latMin: 21.050, latMax: 21.065, lngMin: 105.820, lngMax: 105.836,
    },
    {
      name: "Hoan Kiem",
      slug: "hoan-kiem",
      description: "Around Hanoi's iconic lake — cafes and bars with screens in a central, walkable area.",
      latMin: 21.027, latMax: 21.036, lngMin: 105.848, lngMax: 105.860,
    },
  ],

  "chiang-mai": [
    {
      name: "Nimman",
      slug: "nimman",
      description: "Chiang Mai's hipster neighbourhood — Nimmanhaemin Road cafes and bars with screens for Premier League and Australian sport.",
      latMin: 18.798, latMax: 18.810, lngMin: 98.963, lngMax: 98.978,
    },
    {
      name: "Old City",
      slug: "old-city",
      description: "Inside the moat — guesthouses and bars with streams for every major sporting event.",
      latMin: 18.784, latMax: 18.800, lngMin: 98.981, lngMax: 98.998,
    },
    {
      name: "Night Bazaar",
      slug: "night-bazaar",
      description: "East of the moat — tourist-friendly sports bars and pubs along Chang Klan Road.",
      latMin: 18.782, latMax: 18.793, lngMin: 98.998, lngMax: 99.012,
    },
  ],

  phuket: [
    {
      name: "Patong",
      slug: "patong",
      description: "Phuket's main tourist strip — Bangla Road and the surrounding area has the most sports bars on the island.",
      latMin: 7.890, latMax: 7.905, lngMin: 98.292, lngMax: 98.305,
    },
    {
      name: "Kata",
      slug: "kata",
      description: "Quieter beach area south of Patong — several relaxed sports bars popular with long-stay expats.",
      latMin: 7.819, latMax: 7.832, lngMin: 98.294, lngMax: 98.307,
    },
    {
      name: "Rawai",
      slug: "rawai",
      description: "Phuket's local-feel southern tip — expat community bars with screens for AFL, NRL, and Premier League.",
      latMin: 7.773, latMax: 7.787, lngMin: 98.316, lngMax: 98.330,
    },
  ],

  "da-nang": [
    {
      name: "My Khe Beach",
      slug: "my-khe-beach",
      description: "Da Nang's beachfront strip — the highest concentration of sports bars in the city, popular with expats and digital nomads.",
      latMin: 16.042, latMax: 16.058, lngMin: 108.238, lngMax: 108.250,
    },
    {
      name: "Han River",
      slug: "han-river",
      description: "Downtown Da Nang along the Han River — rooftop bars and pubs with screens for major sport.",
      latMin: 16.065, latMax: 16.078, lngMin: 108.217, lngMax: 108.228,
    },
  ],
};

/** Get all neighbourhoods for a given city slug */
export function getNeighbourhoods(citySlug: string): Neighbourhood[] {
  return CITY_NEIGHBOURHOODS[citySlug] || [];
}

/** Get a single neighbourhood by city slug + neighbourhood slug */
export function getNeighbourhood(
  citySlug: string,
  neighbourhoodSlug: string
): Neighbourhood | null {
  return (
    CITY_NEIGHBOURHOODS[citySlug]?.find((n) => n.slug === neighbourhoodSlug) ??
    null
  );
}

/** Return all city+neighbourhood combos for sitemap generation */
export function getAllNeighbourhoodCombos(): { citySlug: string; neighbourhood: Neighbourhood }[] {
  const combos: { citySlug: string; neighbourhood: Neighbourhood }[] = [];
  for (const [citySlug, neighbourhoods] of Object.entries(CITY_NEIGHBOURHOODS)) {
    for (const neighbourhood of neighbourhoods) {
      combos.push({ citySlug, neighbourhood });
    }
  }
  return combos;
}

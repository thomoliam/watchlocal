// Country slug helpers and metadata for country pages

export interface CountryInfo {
  slug: string;
  name: string;
  code: string;
  region: string;
  intro: string;
  bestFor: string[];
  broadcasters: { network: string; sports: string[] }[];
  nearbyCountries: string[]; // slugs
}

/** Convert a country name (from the cities table) to a URL-safe slug */
export function countryToSlug(country: string): string {
  return country
    .toLowerCase()
    .replace(/[^a-z0-9]+/g, "-")
    .replace(/^-+|-+$/g, "");
}

/** Convert a slug back to a display name (title-cased, handles multi-word) */
export function slugToCountryName(slug: string): string {
  // Check the metadata map first for proper names
  const info = COUNTRY_META[slug];
  if (info) return info.name;

  // Fallback: title-case the slug
  return slug
    .split("-")
    .map((w) => w.charAt(0).toUpperCase() + w.slice(1))
    .join(" ");
}

/** Rich metadata for countries we know about */
export const COUNTRY_META: Record<string, CountryInfo> = {
  thailand: {
    slug: "thailand",
    name: "Thailand",
    code: "TH",
    region: "Southeast Asia",
    intro:
      "Thailand is one of Southeast Asia's top destinations for expats and travelers. With a thriving sports bar scene across Bangkok, Chiang Mai, Phuket, and more, you'll never miss a match. From Premier League football to UFC fight nights, Thai sports bars cater to a global crowd with affordable drinks and late-night screenings.",
    bestFor: [
      "Late-night Premier League screenings",
      "Affordable drinks and food",
      "UFC and boxing fight nights",
      "Year-round outdoor viewing",
    ],
    broadcasters: [
      { network: "TrueVisions", sports: ["Premier League", "Champions League", "La Liga"] },
      { network: "beIN Sports", sports: ["Champions League", "Ligue 1"] },
      { network: "Fox Sports Asia", sports: ["NFL", "NBA", "MLB"] },
    ],
    nearbyCountries: ["vietnam", "indonesia", "malaysia", "singapore", "cambodia"],
  },
  "united-kingdom": {
    slug: "united-kingdom",
    name: "United Kingdom",
    code: "GB",
    region: "Europe",
    intro:
      "The United Kingdom is the spiritual home of modern football and pub culture. From packed London pubs during Premier League matchdays to Six Nations rugby in Cardiff, the UK offers the most authentic sports bar atmosphere in the world. Whether you're watching the FA Cup or Formula 1, there's a pub for every fan.",
    bestFor: [
      "Authentic matchday pub atmosphere",
      "Premier League and Champions League",
      "Six Nations rugby weekends",
      "Historic sporting pubs",
    ],
    broadcasters: [
      { network: "Sky Sports", sports: ["Premier League", "F1", "Cricket", "NFL"] },
      { network: "BT Sport / TNT Sports", sports: ["Champions League", "UFC", "Rugby"] },
      { network: "BBC Sport", sports: ["Six Nations", "FA Cup", "Wimbledon"] },
    ],
    nearbyCountries: ["ireland", "france", "netherlands", "germany", "spain"],
  },
  "united-arab-emirates": {
    slug: "united-arab-emirates",
    name: "United Arab Emirates",
    code: "AE",
    region: "Middle East",
    intro:
      "The United Arab Emirates has become a global sports hub, with Dubai and Abu Dhabi hosting Formula 1, UFC, and cricket events. The sports bar scene is world-class, with luxury venues showing every major league. Time zones are favorable for European football and IPL cricket.",
    bestFor: [
      "Premium sports bar experiences",
      "Formula 1 Abu Dhabi GP live",
      "European football at sociable hours",
      "IPL and cricket screenings",
    ],
    broadcasters: [
      { network: "beIN Sports", sports: ["Premier League", "Champions League", "Ligue 1"] },
      { network: "Abu Dhabi Sports", sports: ["Serie A", "La Liga"] },
      { network: "OSN", sports: ["NFL", "NBA", "UFC"] },
    ],
    nearbyCountries: ["qatar", "saudi-arabia", "india", "singapore"],
  },
  australia: {
    slug: "australia",
    name: "Australia",
    code: "AU",
    region: "Oceania",
    intro:
      "Australia is a sports-mad nation where pubs are central to the viewing culture. From AFL Grand Final parties in Melbourne to NRL State of Origin in Sydney and Brisbane, plus early-morning Premier League sessions, Aussie sports bars deliver passionate atmospheres and great food.",
    bestFor: [
      "AFL and NRL live atmospheres",
      "Early-morning Premier League sessions",
      "Formula 1 Melbourne GP weekend",
      "Cricket and rugby union",
    ],
    broadcasters: [
      { network: "Kayo Sports / Foxtel", sports: ["AFL", "NRL", "F1", "Cricket"] },
      { network: "Optus Sport", sports: ["Premier League", "Champions League"] },
      { network: "Stan Sport", sports: ["Rugby Union", "Tennis"] },
      { network: "ESPN (via Kayo)", sports: ["NFL", "NBA", "MLB"] },
    ],
    nearbyCountries: ["new-zealand", "indonesia", "singapore", "japan"],
  },
  "united-states": {
    slug: "united-states",
    name: "United States",
    code: "US",
    region: "North America",
    intro:
      "The United States is home to some of the world's biggest sporting leagues. From Super Bowl parties to NBA Finals watch parties, American sports bars are built for big-screen viewing. Major cities also have thriving soccer pub cultures for Premier League and Champions League.",
    bestFor: [
      "NFL Super Bowl viewing parties",
      "NBA and MLB atmospheres",
      "Growing soccer pub culture",
      "College sports traditions",
    ],
    broadcasters: [
      { network: "ESPN / ABC", sports: ["NFL", "NBA", "MLS", "College Sports"] },
      { network: "NBC Sports", sports: ["Premier League", "NFL", "NHL"] },
      { network: "CBS Sports / Paramount+", sports: ["Champions League", "NFL", "Serie A"] },
      { network: "Fox Sports", sports: ["NFL", "MLB", "FIFA World Cup"] },
    ],
    nearbyCountries: ["canada", "mexico", "united-kingdom"],
  },
  vietnam: {
    slug: "vietnam",
    name: "Vietnam",
    code: "VN",
    region: "Southeast Asia",
    intro:
      "Vietnam has a passionate football culture and a growing expat sports bar scene. Ho Chi Minh City, Hanoi, and Da Nang offer dozens of bars showing Premier League, Champions League, and more. With cheap beer and enthusiastic local fans, Vietnam is a fantastic place to watch live sport.",
    bestFor: [
      "Passionate local football fans",
      "Cheap beer and late-night matches",
      "Growing expat sports bar scene",
      "Premier League and Champions League",
    ],
    broadcasters: [
      { network: "K+", sports: ["Premier League", "Champions League"] },
      { network: "VTV", sports: ["La Liga", "Serie A", "World Cup"] },
      { network: "FPT Play", sports: ["Champions League", "Europa League"] },
    ],
    nearbyCountries: ["thailand", "cambodia", "indonesia", "singapore", "malaysia"],
  },
  indonesia: {
    slug: "indonesia",
    name: "Indonesia",
    code: "ID",
    region: "Southeast Asia",
    intro:
      "Indonesia's sports bar scene centers on Bali and Jakarta, with Canggu and Seminyak becoming hotspots for expats watching live sport. Premier League football is hugely popular, and UFC fight nights draw big crowds. The laid-back beach bar atmosphere makes Bali a unique sports watching destination.",
    bestFor: [
      "Beach bar sports viewing in Bali",
      "Premier League and Champions League",
      "UFC fight night events",
      "Relaxed tropical atmosphere",
    ],
    broadcasters: [
      { network: "Vidio / Emtek", sports: ["Premier League", "Champions League", "La Liga"] },
      { network: "RCTI", sports: ["Serie A", "Europa League"] },
      { network: "Mola TV", sports: ["Bundesliga", "FA Cup"] },
    ],
    nearbyCountries: ["thailand", "vietnam", "singapore", "malaysia", "australia"],
  },
  spain: {
    slug: "spain",
    name: "Spain",
    code: "ES",
    region: "Europe",
    intro:
      "Spain is football heartland, home to La Liga, El Clasico, and some of the most passionate sports bars in the world. Barcelona and Madrid offer incredible matchday atmospheres, while coastal cities like Valencia and Malaga cater to expats watching international leagues.",
    bestFor: [
      "La Liga and El Clasico matchdays",
      "Champions League nights",
      "Formula 1 Spanish GP",
      "Passionate local football culture",
    ],
    broadcasters: [
      { network: "Movistar+", sports: ["La Liga", "Champions League", "F1"] },
      { network: "DAZN Spain", sports: ["Premier League", "Serie A"] },
      { network: "Gol TV", sports: ["La Liga highlights"] },
    ],
    nearbyCountries: ["portugal", "france", "italy", "united-kingdom", "germany"],
  },
  germany: {
    slug: "germany",
    name: "Germany",
    code: "DE",
    region: "Europe",
    intro:
      "Germany boasts the highest football attendance in Europe and a vibrant sports bar culture to match. From Bundesliga matchdays in Berlin and Munich to Champions League nights, German sports bars combine great beer, big screens, and passionate fans.",
    bestFor: [
      "Bundesliga matchday atmosphere",
      "Champions League screenings",
      "Formula 1 viewings",
      "World-class beer culture",
    ],
    broadcasters: [
      { network: "Sky Deutschland", sports: ["Bundesliga", "Premier League", "F1"] },
      { network: "DAZN", sports: ["Champions League", "Serie A", "NFL"] },
      { network: "ARD/ZDF", sports: ["National team", "World Cup"] },
    ],
    nearbyCountries: ["netherlands", "france", "austria", "czech-republic", "united-kingdom"],
  },
  singapore: {
    slug: "singapore",
    name: "Singapore",
    code: "SG",
    region: "Southeast Asia",
    intro:
      "Singapore's sports bars are world-class, offering premium viewing experiences for Premier League, Champions League, Formula 1, and NBA. The Singapore Grand Prix makes it a must-visit for motorsport fans, while expat-friendly bars across Clarke Quay and Boat Quay show every major league.",
    bestFor: [
      "Singapore Grand Prix weekend",
      "Premium sports bar experiences",
      "Premier League at convenient times",
      "NBA and Formula 1 live",
    ],
    broadcasters: [
      { network: "StarHub", sports: ["Premier League", "Champions League"] },
      { network: "Singtel", sports: ["La Liga", "Serie A", "Bundesliga"] },
      { network: "beIN Sports", sports: ["Ligue 1", "Copa America"] },
    ],
    nearbyCountries: ["malaysia", "indonesia", "thailand", "vietnam", "hong-kong"],
  },
  japan: {
    slug: "japan",
    name: "Japan",
    code: "JP",
    region: "East Asia",
    intro:
      "Japan has a unique sports bar culture blending izakaya-style venues with big-screen sports. Tokyo and Osaka have growing scenes for Premier League, Champions League, and F1, while baseball (NPB) and the J-League drive local pub culture.",
    bestFor: [
      "Unique izakaya sports bar culture",
      "Premier League and Champions League",
      "NPB baseball viewing",
      "Formula 1 Japanese GP",
    ],
    broadcasters: [
      { network: "DAZN Japan", sports: ["Premier League", "Champions League", "F1", "MLB"] },
      { network: "WOWOW", sports: ["La Liga", "Tennis Grand Slams"] },
      { network: "J Sports", sports: ["Rugby", "Cycling", "Motorsport"] },
    ],
    nearbyCountries: ["south-korea", "hong-kong", "singapore", "australia"],
  },
  france: {
    slug: "france",
    name: "France",
    code: "FR",
    region: "Europe",
    intro:
      "France offers passionate sports viewing from Ligue 1 in Paris to Six Nations rugby in Toulouse. Parisian sports bars buzz during Champions League nights, and the country's cafe culture extends to relaxed sports viewing in every neighborhood.",
    bestFor: [
      "Ligue 1 and Champions League nights",
      "Six Nations rugby atmosphere",
      "Tour de France viewing",
      "Roland Garros tennis",
    ],
    broadcasters: [
      { network: "Canal+", sports: ["Ligue 1", "Champions League", "Top 14"] },
      { network: "beIN Sports", sports: ["La Liga", "Serie A", "NBA"] },
      { network: "RMC Sport", sports: ["Champions League", "Premier League"] },
    ],
    nearbyCountries: ["united-kingdom", "spain", "germany", "italy", "netherlands"],
  },
  netherlands: {
    slug: "netherlands",
    name: "Netherlands",
    code: "NL",
    region: "Europe",
    intro:
      "The Netherlands has a vibrant sports bar scene centered on Amsterdam, where expats and locals gather for Premier League, Champions League, and Formula 1. The city's famous brown cafes offer a cozy setting for watching live sport alongside great Dutch beer.",
    bestFor: [
      "Champions League and Eredivisie",
      "Formula 1 with Max Verstappen fans",
      "Amsterdam brown cafe atmosphere",
      "Premier League screenings",
    ],
    broadcasters: [
      { network: "ESPN NL", sports: ["Eredivisie", "Premier League", "Champions League"] },
      { network: "Ziggo Sport", sports: ["La Liga", "F1", "UFC"] },
      { network: "Viaplay", sports: ["Bundesliga", "Serie A"] },
    ],
    nearbyCountries: ["germany", "united-kingdom", "france", "belgium"],
  },
  ireland: {
    slug: "ireland",
    name: "Ireland",
    code: "IE",
    region: "Europe",
    intro:
      "Ireland's pub culture is legendary, and sports viewing is at the heart of it. From Six Nations rugby to Premier League Saturdays, Dublin and other cities offer some of the best sports bar atmospheres in Europe. GAA hurling and football add a uniquely Irish dimension.",
    bestFor: [
      "Six Nations rugby in authentic pubs",
      "Premier League Saturday sessions",
      "GAA hurling and football",
      "Legendary pub atmosphere",
    ],
    broadcasters: [
      { network: "Sky Sports", sports: ["Premier League", "F1", "GAA"] },
      { network: "BT Sport / TNT Sports", sports: ["Champions League", "Rugby"] },
      { network: "RTE", sports: ["Six Nations", "GAA", "National team"] },
      { network: "Virgin Media Sport", sports: ["Champions League", "La Liga"] },
    ],
    nearbyCountries: ["united-kingdom", "france", "netherlands"],
  },
  "new-zealand": {
    slug: "new-zealand",
    name: "New Zealand",
    code: "NZ",
    region: "Oceania",
    intro:
      "New Zealand is rugby-mad, and sports bars come alive during All Blacks tests and Super Rugby. Auckland and Wellington also cater to Premier League and NRL fans with early-morning screenings and dedicated viewing events.",
    bestFor: [
      "All Blacks and Super Rugby atmosphere",
      "NRL screenings",
      "Premier League morning sessions",
      "Cricket World Cup viewings",
    ],
    broadcasters: [
      { network: "Sky Sport NZ", sports: ["Super Rugby", "NRL", "Premier League", "F1"] },
      { network: "Spark Sport", sports: ["Champions League", "MotoGP"] },
    ],
    nearbyCountries: ["australia", "indonesia", "singapore"],
  },
  portugal: {
    slug: "portugal",
    name: "Portugal",
    code: "PT",
    region: "Europe",
    intro:
      "Portugal's sports bar scene extends beyond Portuguese football to cater to a growing expat and digital nomad community. Lisbon and Porto have vibrant bars showing Premier League, Champions League, and La Liga, plus local Primeira Liga matches.",
    bestFor: [
      "Affordable European sports bar experience",
      "Premier League and Champions League",
      "Local Primeira Liga atmosphere",
      "Digital nomad-friendly venues",
    ],
    broadcasters: [
      { network: "Eleven Sports", sports: ["Premier League", "La Liga", "Bundesliga"] },
      { network: "Sport TV", sports: ["Primeira Liga", "Champions League"] },
      { network: "BTV", sports: ["Benfica TV"] },
    ],
    nearbyCountries: ["spain", "france", "united-kingdom"],
  },
  canada: {
    slug: "canada",
    name: "Canada",
    code: "CA",
    region: "North America",
    intro:
      "Canada's sports bars are built around ice hockey culture, with NHL game nights dominating from coast to coast. Toronto, Vancouver, and Montreal also have thriving scenes for NFL, NBA, and a growing soccer following for Premier League and MLS.",
    bestFor: [
      "NHL game night atmosphere",
      "NFL Super Bowl parties",
      "NBA Raptors viewing",
      "Growing Premier League scene",
    ],
    broadcasters: [
      { network: "TSN", sports: ["NHL", "NBA", "CFL", "Premier League"] },
      { network: "Sportsnet", sports: ["NHL", "MLB", "NBA", "Champions League"] },
      { network: "DAZN Canada", sports: ["NFL", "Champions League", "Premier League"] },
    ],
    nearbyCountries: ["united-states", "united-kingdom"],
  },
  mexico: {
    slug: "mexico",
    name: "Mexico",
    code: "MX",
    region: "North America",
    intro:
      "Mexico's passionate sports culture extends from Liga MX football to NFL and boxing. Mexico City, Cancun, and Guadalajara have vibrant sports bars, and the growing expat community ensures Premier League and La Liga are widely shown.",
    bestFor: [
      "Liga MX and El Clasico atmosphere",
      "NFL and Super Bowl events",
      "Boxing and UFC fight nights",
      "La Liga screenings",
    ],
    broadcasters: [
      { network: "Televisa / TUDN", sports: ["Liga MX", "La Liga", "Champions League"] },
      { network: "ESPN Mexico", sports: ["NFL", "NBA", "Premier League"] },
      { network: "Fox Sports Mexico", sports: ["Bundesliga", "UFC", "F1"] },
    ],
    nearbyCountries: ["united-states", "colombia"],
  },
  "south-korea": {
    slug: "south-korea",
    name: "South Korea",
    code: "KR",
    region: "East Asia",
    intro:
      "South Korea's sports bars buzz with Premier League and Champions League action, plus K-League football. Seoul has a modern sports bar scene with high-tech viewing setups and a passionate local fanbase.",
    bestFor: [
      "K-League and Premier League",
      "Champions League screenings",
      "Modern high-tech venues",
      "KBO baseball viewing",
    ],
    broadcasters: [
      { network: "SPOTV", sports: ["Premier League", "Champions League", "La Liga"] },
      { network: "CJ ENM", sports: ["Serie A", "Bundesliga"] },
    ],
    nearbyCountries: ["japan", "hong-kong", "singapore"],
  },
  "hong-kong": {
    slug: "hong-kong",
    name: "Hong Kong",
    code: "HK",
    region: "East Asia",
    intro:
      "Hong Kong's Wan Chai, Lan Kwai Fong, and TST districts are packed with sports bars catering to a massive expat community. Premier League is king, with late-night kickoffs fitting perfectly into the city's nightlife culture.",
    bestFor: [
      "Premier League late-night atmosphere",
      "NBA and Champions League",
      "Legendary expat bar scene",
      "Horse racing culture",
    ],
    broadcasters: [
      { network: "Now TV", sports: ["Premier League", "Champions League", "F1"] },
      { network: "beIN Sports", sports: ["La Liga", "Ligue 1"] },
      { network: "Fox Sports Asia", sports: ["NFL", "NBA"] },
    ],
    nearbyCountries: ["singapore", "japan", "south-korea", "thailand"],
  },
  qatar: {
    slug: "qatar",
    name: "Qatar",
    code: "QA",
    region: "Middle East",
    intro:
      "Qatar's sports bar scene has grown rapidly since hosting the 2022 FIFA World Cup. Doha offers premium venues showing Premier League, Champions League, and Formula 1, with world-class facilities and a growing sports culture.",
    bestFor: [
      "Premium sports viewing",
      "Premier League and Champions League",
      "Formula 1 Qatar GP",
      "World-class facilities",
    ],
    broadcasters: [
      { network: "beIN Sports", sports: ["Premier League", "Champions League", "Ligue 1", "La Liga"] },
    ],
    nearbyCountries: ["united-arab-emirates", "saudi-arabia"],
  },
  colombia: {
    slug: "colombia",
    name: "Colombia",
    code: "CO",
    region: "South America",
    intro:
      "Colombia's sports bar scene is driven by passionate football fans. Medellin, Bogota, and Cartagena have growing expat communities with bars showing Premier League, La Liga, and Champions League alongside local Liga BetPlay matches.",
    bestFor: [
      "Passionate South American football culture",
      "Growing digital nomad scene",
      "Affordable sports bars",
      "Premier League and La Liga",
    ],
    broadcasters: [
      { network: "ESPN Andina", sports: ["Premier League", "Champions League", "NBA"] },
      { network: "Win Sports", sports: ["Liga BetPlay"] },
      { network: "DirecTV Sports", sports: ["La Liga", "Serie A"] },
    ],
    nearbyCountries: ["mexico", "argentina", "brazil"],
  },
  italy: {
    slug: "italy",
    name: "Italy",
    code: "IT",
    region: "Europe",
    intro:
      "Italy's sports bars blend Serie A football passion with cafe culture. From Rome to Milan, bars come alive on Champions League nights, and the country's deep football heritage makes every matchday a cultural event.",
    bestFor: [
      "Serie A and Champions League",
      "Italian football culture",
      "MotoGP and Formula 1",
      "Cafe-style sports viewing",
    ],
    broadcasters: [
      { network: "Sky Italia", sports: ["Serie A", "Champions League", "F1"] },
      { network: "DAZN", sports: ["Serie A", "La Liga"] },
      { network: "Mediaset", sports: ["Champions League (free-to-air)"] },
    ],
    nearbyCountries: ["france", "spain", "germany", "austria"],
  },
  india: {
    slug: "india",
    name: "India",
    code: "IN",
    region: "South Asia",
    intro:
      "India's sports bar scene revolves around cricket and the IPL, but Premier League and Champions League football are growing rapidly. Mumbai, Delhi, Bangalore, and Goa have vibrant scenes with modern sports bars catering to a young, enthusiastic crowd.",
    bestFor: [
      "IPL cricket atmosphere",
      "Growing Premier League fanbase",
      "Affordable viewing experiences",
      "Champions League nights",
    ],
    broadcasters: [
      { network: "Star Sports / Disney+ Hotstar", sports: ["IPL", "Cricket", "Premier League"] },
      { network: "Sony Sports", sports: ["Champions League", "La Liga", "Serie A", "NBA"] },
    ],
    nearbyCountries: ["united-arab-emirates", "singapore", "thailand"],
  },
  malaysia: {
    slug: "malaysia",
    name: "Malaysia",
    code: "MY",
    region: "Southeast Asia",
    intro:
      "Malaysia has a football-mad culture with mamak stalls and sports bars packed during Premier League matches. Kuala Lumpur's vibrant nightlife scene includes dedicated sports venues showing European football, UFC, and F1.",
    bestFor: [
      "Mamak stall football culture",
      "Premier League and Champions League",
      "Formula 1 viewing",
      "Affordable drinks and food",
    ],
    broadcasters: [
      { network: "Astro", sports: ["Premier League", "Champions League", "La Liga", "F1"] },
      { network: "beIN Sports", sports: ["Ligue 1", "Serie A"] },
    ],
    nearbyCountries: ["singapore", "thailand", "indonesia", "vietnam"],
  },
  "south-africa": {
    slug: "south-africa",
    name: "South Africa",
    code: "ZA",
    region: "Africa",
    intro:
      "South Africa's sports bar culture is driven by rugby, cricket, and Premier League football. Cape Town and Johannesburg offer vibrant venues with passionate crowds for Springboks matches, Super Rugby, and European football.",
    bestFor: [
      "Springboks rugby atmosphere",
      "Super Rugby and Cricket",
      "Premier League screenings",
      "Lively local sports culture",
    ],
    broadcasters: [
      { network: "SuperSport (DStv)", sports: ["Premier League", "Champions League", "Rugby", "Cricket"] },
    ],
    nearbyCountries: ["united-kingdom", "australia"],
  },
  argentina: {
    slug: "argentina",
    name: "Argentina",
    code: "AR",
    region: "South America",
    intro:
      "Argentina's sports bar scene is dominated by passionate football culture. Buenos Aires has bars packed for La Liga, Champions League, and local Primera Division matches. The atmosphere during Boca Juniors or River Plate games is electric.",
    bestFor: [
      "Passionate football atmosphere",
      "La Liga and Champions League",
      "Local derby viewings",
      "South American football culture",
    ],
    broadcasters: [
      { network: "ESPN Argentina", sports: ["Premier League", "Champions League", "NBA"] },
      { network: "TyC Sports", sports: ["Primera Division", "Copa Libertadores"] },
      { network: "DirecTV Sports", sports: ["La Liga", "Serie A"] },
    ],
    nearbyCountries: ["colombia", "brazil", "mexico"],
  },
  "czech-republic": {
    slug: "czech-republic",
    name: "Czech Republic",
    code: "CZ",
    region: "Europe",
    intro:
      "Prague and other Czech cities offer affordable sports bars with excellent beer. Champions League and Premier League are widely shown, and the local sports culture means ice hockey is also a big draw in Czech sports bars.",
    bestFor: [
      "World-class beer culture",
      "Affordable sports bar prices",
      "Champions League and Premier League",
      "Ice hockey atmosphere",
    ],
    broadcasters: [
      { network: "O2 TV Sport", sports: ["Premier League", "Champions League"] },
      { network: "Nova Sport", sports: ["La Liga", "Serie A"] },
    ],
    nearbyCountries: ["germany", "austria", "hungary", "poland"],
  },
  hungary: {
    slug: "hungary",
    name: "Hungary",
    code: "HU",
    region: "Europe",
    intro:
      "Budapest's ruin bars and sports bars offer a unique atmosphere for watching live sport. Premier League and Champions League are popular draws, with affordable prices and a growing expat community making Budapest a hidden gem for sports viewing.",
    bestFor: [
      "Unique ruin bar atmosphere",
      "Affordable prices",
      "Premier League and Champions League",
      "Growing expat scene",
    ],
    broadcasters: [
      { network: "Arena4", sports: ["Premier League", "Champions League"] },
      { network: "Sport TV Hungary", sports: ["La Liga", "Bundesliga"] },
    ],
    nearbyCountries: ["czech-republic", "germany", "austria"],
  },
};

/** Get region groupings for nearby country display */
export const REGION_COUNTRIES: Record<string, string[]> = {
  "Southeast Asia": ["thailand", "vietnam", "indonesia", "singapore", "malaysia", "cambodia"],
  "East Asia": ["japan", "south-korea", "hong-kong"],
  Europe: [
    "united-kingdom", "ireland", "france", "germany", "spain", "italy",
    "netherlands", "portugal", "czech-republic", "hungary",
  ],
  "Middle East": ["united-arab-emirates", "qatar"],
  "North America": ["united-states", "canada", "mexico"],
  "South America": ["colombia", "argentina"],
  Oceania: ["australia", "new-zealand"],
  "South Asia": ["india"],
  Africa: ["south-africa"],
};

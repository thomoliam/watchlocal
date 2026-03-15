export function generateTeamCityMeta(
  teamName: string,
  cityName: string,
  leagueName: string,
  venueCount: number,
  year: number = new Date().getFullYear()
) {
  return {
    title: `Where to Watch ${teamName} in ${cityName} | Best Bars & Venues (${year})`,
    description: `Find the best ${venueCount > 0 ? venueCount : ""} bars and venues showing ${teamName} (${leagueName}) in ${cityName}. Interactive map, verified venues, match schedules, and fan communities.`,
  };
}

export function generateLeagueCityMeta(
  leagueName: string,
  cityName: string,
  venueCount: number,
  year: number = new Date().getFullYear()
) {
  return {
    title: `Where to Watch ${leagueName} in ${cityName} | Best Sports Bars (${year})`,
    description: `Find ${venueCount > 0 ? venueCount : "the best"} bars and venues showing ${leagueName} in ${cityName}. Verified venues with screen counts, atmosphere ratings, and reviews.`,
  };
}

export function generateFAQs(
  teamName: string,
  cityName: string,
  leagueName: string,
  timezone: string,
  country: string
) {
  return [
    {
      question: `What time do ${leagueName} games kick off in ${cityName}?`,
      answer: `${leagueName} matches are broadcast in ${cityName} according to ${timezone} time. Check our fixture schedule above for exact local kick-off times for each ${teamName} match.`,
    },
    {
      question: `Which channel shows ${leagueName} in ${country}?`,
      answer: `${leagueName} broadcasting rights vary by country. In ${country}, check with local sports broadcasters or visit venues listed above that are verified to show ${leagueName} matches.`,
    },
    {
      question: `Is there a ${teamName} supporters club in ${cityName}?`,
      answer: `Check the fan communities section above for ${teamName} supporters groups, Facebook groups, WhatsApp groups, and Discord servers in ${cityName}. If you know of one we're missing, you can submit it.`,
    },
    {
      question: `Can I watch ${teamName} replays in ${cityName}?`,
      answer: `Some venues offer replays on demand, especially for games that air at unsociable hours locally. Check individual venue listings above for replay availability.`,
    },
    {
      question: `What is the best sports bar in ${cityName} for ${leagueName}?`,
      answer: `Browse our verified venue listings above, sorted by rating and number of reviews. Each venue shows which sports they cover, screen count, and atmosphere details.`,
    },
  ];
}

export function generateFAQSchema(
  faqs: { question: string; answer: string }[]
) {
  return {
    "@context": "https://schema.org",
    "@type": "FAQPage",
    mainEntity: faqs.map((faq) => ({
      "@type": "Question",
      name: faq.question,
      acceptedAnswer: {
        "@type": "Answer",
        text: faq.answer,
      },
    })),
  };
}

export function generateVenueListSchema(
  venues: any[],
  cityName: string,
  label: string
) {
  return {
    "@context": "https://schema.org",
    "@type": "ItemList",
    name: `Best venues to watch ${label} in ${cityName}`,
    itemListElement: venues.map((venue, index) => ({
      "@type": "ListItem",
      position: index + 1,
      item: {
        "@type": "LocalBusiness",
        "@id": `https://watchlocal.co/venues/${venue.slug}`,
        name: venue.name,
        description: venue.description,
        address: {
          "@type": "PostalAddress",
          streetAddress: venue.address,
          addressLocality: cityName,
        },
        geo: {
          "@type": "GeoCoordinates",
          latitude: venue.latitude,
          longitude: venue.longitude,
        },
        ...(venue.reviews?.length > 0 && {
          aggregateRating: {
            "@type": "AggregateRating",
            ratingValue: (
              venue.reviews.reduce(
                (sum: number, r: any) => sum + r.rating,
                0
              ) / venue.reviews.length
            ).toFixed(1),
            reviewCount: venue.reviews.length,
          },
        }),
      },
    })),
  };
}

export function generateBreadcrumbSchema(
  items: { name: string; url: string }[]
) {
  return {
    "@context": "https://schema.org",
    "@type": "BreadcrumbList",
    itemListElement: items.map((item, index) => ({
      "@type": "ListItem",
      position: index + 1,
      name: item.name,
      item: item.url,
    })),
  };
}

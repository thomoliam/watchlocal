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

export function generateLeagueCityFAQs(
  leagueName: string,
  cityName: string,
  country: string,
  timezone: string,
  venueCount: number,
  topVenueName?: string
) {
  const faqs = [
    {
      question: `Where can I watch ${leagueName} in ${cityName}?`,
      answer:
        venueCount > 0
          ? `There are ${venueCount} verified sports bars in ${cityName} that show ${leagueName} matches live. ${topVenueName ? `${topVenueName} is the most popular choice among fans.` : ""} All venues are verified for the current season.`
          : `We're building our list of ${leagueName} venues in ${cityName}. Submit a venue if you know one.`,
    },
    {
      question: `What time does ${leagueName} start in ${cityName}?`,
      answer: `${leagueName} kick-off times in ${cityName} follow the ${timezone} timezone. Depending on the competition round, matches typically start in the evening local time, but exact times vary by fixture. Check each venue's listing for confirmed showtimes.`,
    },
    {
      question: `Which is the best sports bar in ${cityName} for ${leagueName}?`,
      answer:
        topVenueName
          ? `${topVenueName} is one of the top-rated venues for ${leagueName} in ${cityName}. We recommend checking screen counts, atmosphere ratings, and reviews above to find the best fit for your group.`
          : `Browse our verified listings above — each venue shows screen count, atmosphere, food options, and which leagues they cover. Sort by rating to find the best match.`,
    },
    {
      question: `Do sports bars in ${cityName} show every ${leagueName} match?`,
      answer: `Coverage varies by venue. Larger sports bars with more screens typically show every match, while smaller venues may prioritise headline fixtures. Check individual venue pages for details or call ahead for less popular games.`,
    },
    {
      question: `Which channel broadcasts ${leagueName} in ${country}?`,
      answer: `Broadcasting rights for ${leagueName} in ${country} vary by season. All venues listed on WatchLocal are verified to have the correct subscriptions to show ${leagueName} matches live, regardless of the local broadcaster.`,
    },
    {
      question: `Can I book a table to watch ${leagueName} in ${cityName}?`,
      answer: `Some venues accept reservations for big matches — check the venue's website or call ahead, especially for derby days and knockout rounds. Arriving 30-60 minutes early is recommended for popular fixtures.`,
    },
    {
      question: `Are there ${leagueName} fan groups in ${cityName}?`,
      answer: `Many cities have supporter groups that meet at specific venues. Check individual venue pages for fan community links, or search for ${leagueName} supporter groups in ${cityName} on Facebook and WhatsApp.`,
    },
    {
      question: `Is there a cover charge to watch ${leagueName} at bars in ${cityName}?`,
      answer: `Most sports bars in ${cityName} don't charge a cover for watching live sport. Some premium venues may have a minimum spend on match days, especially for big fixtures. Check the price range indicator on each listing.`,
    },
  ];
  return faqs;
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

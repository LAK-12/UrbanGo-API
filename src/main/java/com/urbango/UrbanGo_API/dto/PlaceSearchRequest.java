package com.urbango.UrbanGo_API.dto;

public record PlaceSearchRequest(
        String cityName,
        String countryCode,
        String category,    // "FOOD" or "ATTRACTION" or null
        Double minRating,
        Integer priceTier,
        Boolean halal
) {}

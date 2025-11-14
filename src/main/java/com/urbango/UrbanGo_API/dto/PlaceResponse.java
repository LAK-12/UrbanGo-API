package com.urbango.UrbanGo_API.dto;

import java.util.UUID;

public record PlaceResponse(
        UUID id,
        String name,
        String cityName,
        String countryCode,
        String category,
        double lat,
        double lng,
        String address,
        Double rating,
        Integer ratingCount,
        Integer priceTier,
        boolean isHalal
) {}

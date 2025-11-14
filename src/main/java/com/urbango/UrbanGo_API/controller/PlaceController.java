package com.urbango.UrbanGo_API.controller;

import com.urbango.UrbanGo_API.dto.PlaceSearchRequest;
import com.urbango.UrbanGo_API.dto.PlaceResponse;
import com.urbango.UrbanGo_API.model.Place;
import com.urbango.UrbanGo_API.model.PlaceCategory;
import com.urbango.UrbanGo_API.repository.PlaceRepository;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/places")
@CrossOrigin
public class PlaceController {

    private final PlaceRepository placeRepository;

    public PlaceController(PlaceRepository placeRepository) {
        this.placeRepository = placeRepository;
    }

    @PostMapping("/search")
    public List<PlaceResponse> search(@RequestBody PlaceSearchRequest req) {

        PlaceCategory category = null;
        if (req.category() != null && !req.category().isBlank()) {
            category = PlaceCategory.valueOf(req.category().toUpperCase());
        }

        List<Place> places = placeRepository.searchPlaces(
                req.cityName(),
                req.countryCode(),
                category,
                req.minRating(),
                req.priceTier(),
                req.halal()
        );

        return places.stream()
                .map(p -> new PlaceResponse(
                        p.getId(),
                        p.getName(),
                        p.getCityName(),
                        p.getCountryCode(),
                        p.getCategory().name(),
                        p.getLat(),
                        p.getLng(),
                        p.getAddress(),
                        p.getRating(),
                        p.getRatingCount(),
                        p.getPriceTier(),
                        p.isHalal()
                ))
                .toList();
    }
}

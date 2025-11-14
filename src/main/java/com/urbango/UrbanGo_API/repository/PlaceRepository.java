package com.urbango.UrbanGo_API.repository;

import com.urbango.UrbanGo_API.model.Place;
import com.urbango.UrbanGo_API.model.PlaceCategory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.UUID;

public interface PlaceRepository extends JpaRepository<Place, UUID> {

    @Query("""
        select p from Place p
        where lower(p.cityName) = lower(:cityName)
          and upper(p.countryCode) = upper(:countryCode)
          and (:category is null or p.category = :category)
          and (:minRating is null or p.rating >= :minRating)
          and (:priceTier is null or p.priceTier = :priceTier)
          and (:halal is null or p.isHalal = :halal)
        """)
    List<Place> searchPlaces(
            @Param("cityName") String cityName,
            @Param("countryCode") String countryCode,
            @Param("category") PlaceCategory category,
            @Param("minRating") Double minRating,
            @Param("priceTier") Integer priceTier,
            @Param("halal") Boolean halal
    );
}

function populate(key, slct2) {
    var s1 = document.getElementById(key);
    var s2 = document.getElementById(slct2);
    s2.innerHTML = "";
    if (s1.value == "aerialway") {
        var optionArray =
            [
                "pylon",
                "station",
                "chair_lift",
                "drag_lift",
                "platter",
                "t-bar",
                "goods",
                "magic_carpet",
                "gondola",
                "cable_car",
                "rope_tow"
            ];
    } else if (s1.value == "aeroway") {
        var optionArray =
            [
                "taxiway",
                "aerodrome",
                "runway",
                "helipad",
                "apron",
                "hangar",
                "parking_position",
                "gate",
                "terminal",
                "holding_position",
                "airstrip",
                "windsock",
                "navigationaid",
                "landing_light",
                "marking",
                "waypoint",
                "taxilane",
                "heliport",
                "fuel"
            ];
    } else if (s1.value == "amenity") {
        var optionArray =
            [
                "parking",
                "place_of_worship",
                "school",
                "bench",
                "restaurant",
                "fuel",
                "cafe",
                "fast_food",
                "bank",
                "post_box",
                "pharmacy",
                "waste_basket",
                "recycling",
                "kindergarten",
                "bicycle_parking",
                "toilets",
                "grave_yard",
                "shelter",
                "hospital",
                "post_office",
                "drinking_water",
                "pub",
                "atm",
                "bar",
                "public_building",
                "telephone",
                "parking_space",
                "police",
                "hunting_stand",
                "townhall",
                "fire_station",
                "vending_machine",
                "fountain",
                "doctors",
                "library",
                "community_centre",
                "social_facility",
                "car_wash",
                "dentist",
                "university",
                "clinic",
                "waste_disposal",
                "bus_station",
                "college",
                "marketplace",
                "swimming_pool",
                "parking_entrance",
                "taxi",
                "theatre",
                "bicycle_rental",
                "veterinary",
                "cinema",
                "courthouse",
                "nightclub",
                "water_well",
                "arts_centre",
                "bbq",
                "mobile_money_agent",
                "nursing_home",
                "car_rental",
                "ferry_terminal",
                "shower",
                "grit_bin",
                "charging_station",
                "ice_cream",
                "clock",
                "driving_school",
                "embassy",
                "biergarten",
                "childcare",
                "prison",
                "water_point",
                "bureau_de_change",
                "car_sharing",
                "motorcycle_parking",
                "studio",
                "food_court",
                "residential",
                "casino",
                "watering_place",
                "shop",
                "boat_storage",
                "sauna",
                "brothel",
                "bicycle_repair_station",
                "compressed_air",
                "gambling",
                "kiosk",
                "retirement_home",
                "game_feeding",
                "internet_cafe",
                "sanitary_dump_station",
                "payment_terminal",
                "social_centre",
                "public_bookcase",
                "dojo",
                "training",
                "events_venue",
                "boat_rental",
                "lavoir",
                "monastery",
                "kneipp_water_cure"

            ];
    }else if (s1.value == "barrier") {
        var optionArray =
            [
                "fence",
                "wall",
                "gate",
                "hedge"
            ];
    }else if (s1.value == "building") {
        var optionArray =
            [
                "yes",
                "house",
                "residential",
                "garage"
            ];
    }else if (s1.value == "geological") {
        var optionArray =
            [
                "moraine",
                "fault",
                "outcrop",
                "palaeontological_site"
            ];
    }else if (s1.value == "highway") {
        var optionArray =
            [
                "residential",
                "service",
                "track",
                "unclassified",
                "footway",
                "path",
                "tertiary",
                "secondary",
                "crossing",
                "primary",
                "bus_stop",
                "turning_circle"
            ];
    }else if (s1.value == "historic") {
        var optionArray =
            [
                "memorial",
                "ruins",
                "wayside_cross",
                "archaeological_site"
            ];
    }else if (s1.value == "information") {
        var optionArray =
            [
                "guidepost",
                "board",
                "map",
                "office"
            ];
    }else if (s1.value == "junction") {
        var optionArray =
            [
                "roundabout",
                "yes",
                "jughandle",
                "circular"
            ];
    }else if (s1.value == "landuse") {
        var optionArray =
            [
                "",
                "",
                "",
                ""
            ];
    }else if (s1.value == "leisure") {
        var optionArray =
            [
                "residential",
                "forest",
                "farmland",
                "grass",
                "meadow",
                "farmyard",
                "orchard",
                "industrial"
            ];
    }else if (s1.value == "man_made") {
        var optionArray =
            [
                "survey_point",
                "pier",
                "tower",
                "storage_tank"
            ];
    }else if (s1.value == "mountain_pass") {
        var optionArray =
            [
                "yes"
            ];
    }else if (s1.value == "natural") {
        var optionArray =
            [
                "tree",
                "water",
                "wood",
                "scrub",
                "wetland",
                "coastline",
                "peak"
            ];
    }else if (s1.value == "place") {
        var optionArray =
            [
                "locality",
                "village",
                "hamlet",
                "isolated_dwelling"
            ];
    }else if (s1.value == "power") {
        var optionArray =
            [
                "tower",
                "pole",
                "line",
                "generator"
            ];
    }else if (s1.value == "railway") {
        var optionArray =
            [
                "rail",
                "level_crossing",
                "switch",
                "abandoned"
            ];
    }else if (s1.value == "route") {
        var optionArray =
            [
                "road",
                "bus",
                "hiking",
                "bicycle",
                "foot",
                "ferry"
            ];
    }else if (s1.value == "segregated") {
        var optionArray =
            [
                "no",
                "yes",
                "",
                ""
            ];
    }else if (s1.value == "service") {
        var optionArray =
            [
                "driveway",
                "parking_aisle",
                "alley",
                "spur"
            ];
    }else if (s1.value == "shop") {
        var optionArray =
            [
                "convenience",
                "supermarket",
                "clothes",
                "hairdresser",
                "bakery",
                "car_repair"
            ];
    }else if (s1.value == "sport") {
        var optionArray =
            [
                "soccer",
                "tennis",
                "baseball",
                "basketball",
                "swimming",
                "multi",
                "golf",
                "equestrian"
            ];
    }else if (s1.value == "tourism") {
        var optionArray =
            [
                "information",
                "hotel",
                "attraction",
                "viewpoint",
                "picnic_site",
                "guest_house",
                "camp_site",
                "museum",
                "artwork",
                "motel"
            ];
    }else if (s1.value == "tunnel") {
        var optionArray =
            [
                "yes",
                "culvert",
                "building_passage",
                "avalanche_protector"
            ];
    }else if (s1.value == "traffic_sign") {
        var optionArray =
            [
                "city_limit",
                "maxspeed"
            ];
    }else if (s1.value == "vending") {
        var optionArray =
            [
                "parking_tickets",
                "cigarettes",
                "excrement_bags",
                "public_transport_tickets"
            ];
    }else if (s1.value == "waterway") {
        var optionArray =
            [
                "stream",
                "ditch",
                "river",
                "drain"
            ];
    }

    for (var option in optionArray) {
        if (optionArray.hasOwnProperty(option)) {
            var pair = optionArray[option];
            var checkbox = document.createElement("input");
            checkbox.type = "checkbox";
            checkbox.name = "value";
            checkbox.value = pair;
            s2.appendChild(checkbox);
            var label = document.createElement('label')
            label.htmlFor = pair;
            label.appendChild(document.createTextNode(pair));
            s2.appendChild(label);
            s2.appendChild(document.createElement("hr"));
        }
    }
}
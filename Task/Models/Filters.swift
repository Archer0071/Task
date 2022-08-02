//
//  Filters.swift
//  Task
//
//  Created by ARCHER on 02/08/2022.
//

import Foundation
enum Filters: String,CaseIterable {
    
    case flight_id                  = "flight_id"
    case start                      = "start"
    case end                        = "end"
    case flight_number              = "flight_number"
    case launch_year                = "launch_year"
    case tbd                        = "tbd"
    case rocket_id                  = "rocket_id"
    case rocket_name                = "rocket_name"
    case rocket_type                = "rocket_type"
    case core_serial                = "core_serial"
    case land_success               = "land_success"
    case landing_intent             = "landing_intent"
    case landing_type               = "landing_type"
    case landing_vehicle            = "landing_vehicle"
    case cap_serial                 = "cap_serial"
    case core_flight                = "core_flight"
    case block                      = "block"
    case gridfins                   = "gridfins"
    case legs                       = "legs"
    case core_reuse                 = "core_reuse"
    case capsule_reuse              = "capsule_reuse"
    case fairings_reused            = "fairings_reused"
    case fairings_recovery_attempt  = "fairings_recovery_attempt"
    case fairings_recovered         = "fairings_recovered"
    case fairings_ship              = "fairings_ship"
    case site_id                    = "site_id"
    case site_name                  = "site_name"
    case payload_id                 = "payload_id"
    case norad_id                   = "norad_id"
    case customer                   = "customer"
    case nationality                = "nationality"
    case manufacturer               = "manufacturer"
    case payload_type               = "payload_type"
    case orbit                      = "orbit"
    case reference_system           = "reference_system"
    case regime                     = "regime"
    case longitude                  = "longitude"
    case semi_major_axis_km         = "semi_major_axis_km"
    case eccentricity               = "eccentricity"
    case periapsis_km               = "periapsis_km"
    case apoapsis_km                = "apoapsis_km"
    case inclination_deg            = "inclination_deg"
    case period_min                 = "period_min"
    case lifespan_years             = "lifespan_years"
    case epoch                      = "epoch"
    case mean_motion                = "mean_motion"
    case raan                       = "raan"
    case launch_success             = "launch_success"
}

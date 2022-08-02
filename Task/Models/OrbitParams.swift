
import Foundation

struct OrbitParams: Codable {

  var referenceSystem : String? = nil
  var regime          : String? = nil
  var longitude       : Float?  = nil
  var semiMajorAxisKm : Float?  = nil
  var eccentricity    : Float?  = nil
  var periapsisKm     : Float?  = nil
  var apoapsisKm      : Float?  = nil
  var inclinationDeg  : Float?  = nil
  var periodMin       : Float?  = nil
  var lifespanYears   : Float?  = nil
  var epoch           : String? = nil
  var meanMotion      : Float?  = nil
  var raan            : Float?  = nil
  var argOfPericenter : Float?  = nil
  var meanAnomaly     : Float?  = nil

  enum CodingKeys: String, CodingKey {

    case referenceSystem = "reference_system"
    case regime          = "regime"
    case longitude       = "longitude"
    case semiMajorAxisKm = "semi_major_axis_km"
    case eccentricity    = "eccentricity"
    case periapsisKm     = "periapsis_km"
    case apoapsisKm      = "apoapsis_km"
    case inclinationDeg  = "inclination_deg"
    case periodMin       = "period_min"
    case lifespanYears   = "lifespan_years"
    case epoch           = "epoch"
    case meanMotion      = "mean_motion"
    case raan            = "raan"
    case argOfPericenter = "arg_of_pericenter"
    case meanAnomaly     = "mean_anomaly"
  
  }



}

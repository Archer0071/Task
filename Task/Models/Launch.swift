
import Foundation

struct Launch: Codable {

  var flightNumber          : Int?                  = nil
  var missionName           : String?               = nil
  var missionId             : [String]?             = []
  var upcoming              : Bool?                 = nil
  var launchYear            : String?               = nil
  var launchDateUnix        : Int?                  = nil
  var launchDateUtc         : String?               = nil
  var launchDateLocal       : String?               = nil
  var isTentative           : Bool?                 = nil
  var tentativeMaxPrecision : String?               = nil
  var tbd                   : Bool?                 = nil
  var launchWindow          : Int?                  = nil
  var rocket                : Rocket?               = Rocket()
  var ships                 : [String]?             = []
  var telemetry             : Telemetry?            = Telemetry()
  var launchSite            : LaunchSite?           = LaunchSite()
  var launchSuccess         : Bool?                 = nil
  var launchFailureDetails  : LaunchFailureDetails? = LaunchFailureDetails()
  var links                 : Links?                = Links()
  var details               : String?               = nil
  var staticFireDateUtc     : String?               = nil
  var staticFireDateUnix    : Int?                  = nil
  var timeline              : Timeline?             = Timeline()
  var crew                  : [String]?             = nil

  enum CodingKeys: String, CodingKey {

    case flightNumber          = "flight_number"
    case missionName           = "mission_name"
    case missionId             = "mission_id"
    case upcoming              = "upcoming"
    case launchYear            = "launch_year"
    case launchDateUnix        = "launch_date_unix"
    case launchDateUtc         = "launch_date_utc"
    case launchDateLocal       = "launch_date_local"
    case isTentative           = "is_tentative"
    case tentativeMaxPrecision = "tentative_max_precision"
    case tbd                   = "tbd"
    case launchWindow          = "launch_window"
    case rocket                = "rocket"
    case ships                 = "ships"
    case telemetry             = "telemetry"
    case launchSite            = "launch_site"
    case launchSuccess         = "launch_success"
    case launchFailureDetails  = "launch_failure_details"
    case links                 = "links"
    case details               = "details"
    case staticFireDateUtc     = "static_fire_date_utc"
    case staticFireDateUnix    = "static_fire_date_unix"
    case timeline              = "timeline"
    case crew                  = "crew"
  
  }



}

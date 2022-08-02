
import Foundation

struct Cores: Codable {

  var coreSerial     : String? = nil
  var flight         : Int?    = nil
  var block          : Int?    = nil
  var gridfins       : Bool?   = nil
  var legs           : Bool?   = nil
  var reused         : Bool?   = nil
  var landSuccess    : Bool?   = nil
  var landingIntent  : Bool?   = nil
  var landingType    : String? = nil
  var landingVehicle : String? = nil

  enum CodingKeys: String, CodingKey {

    case coreSerial     = "core_serial"
    case flight         = "flight"
    case block          = "block"
    case gridfins       = "gridfins"
    case legs           = "legs"
    case reused         = "reused"
    case landSuccess    = "land_success"
    case landingIntent  = "landing_intent"
    case landingType    = "landing_type"
    case landingVehicle = "landing_vehicle"
  
  }



}

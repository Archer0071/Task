
import Foundation

struct Payloads: Codable {

  var payloadId      : String?      = nil
  var noradId        : [Int]?       = []
  var reused         : Bool?        = nil
  var customers      : [String]?    = []
  var nationality    : String?      = nil
  var manufacturer   : String?      = nil
  var payloadType    : String?      = nil
  var payloadMassKg  : Float?       = nil
  var payloadMassLbs : Float?       = nil
  var orbit          : String?      = nil
  var orbitParams    : OrbitParams? = OrbitParams()

  enum CodingKeys: String, CodingKey {

    case payloadId      = "payload_id"
    case noradId        = "norad_id"
    case reused         = "reused"
    case customers      = "customers"
    case nationality    = "nationality"
    case manufacturer   = "manufacturer"
    case payloadType    = "payload_type"
    case payloadMassKg  = "payload_mass_kg"
    case payloadMassLbs = "payload_mass_lbs"
    case orbit          = "orbit"
    case orbitParams    = "orbit_params"
  
  }



}

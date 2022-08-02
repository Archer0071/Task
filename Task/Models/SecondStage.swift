
import Foundation

struct SecondStage: Codable {

  var block    : Int?        = nil
  var payloads : [Payloads]? = []

  enum CodingKeys: String, CodingKey {

    case block    = "block"
    case payloads = "payloads"
  
  }



}

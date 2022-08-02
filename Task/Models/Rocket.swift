
import Foundation

struct Rocket: Codable {

  var rocketId    : String?      = nil
  var rocketName  : String?      = nil
  var rocketType  : String?      = nil
  var firstStage  : FirstStage?  = FirstStage()
  var secondStage : SecondStage? = SecondStage()
  var fairings    : Fairings?    = Fairings()

  enum CodingKeys: String, CodingKey {

    case rocketId    = "rocket_id"
    case rocketName  = "rocket_name"
    case rocketType  = "rocket_type"
    case firstStage  = "first_stage"
    case secondStage = "second_stage"
    case fairings    = "fairings"
  
  }



}


import Foundation

struct Links: Codable {

  var missionPatch      : String?   = nil
  var missionPatchSmall : String?   = nil
  var redditCampaign    : String?   = nil
  var redditLaunch      : String?   = nil
  var redditRecovery    : String?   = nil
  var redditMedia       : String?   = nil
  var presskit          : String?   = nil
  var articleLink       : String?   = nil
  var wikipedia         : String?   = nil
  var videoLink         : String?   = nil
  var youtubeId         : String?   = nil
  var flickrImages      : [String]? = []

  enum CodingKeys: String, CodingKey {

    case missionPatch      = "mission_patch"
    case missionPatchSmall = "mission_patch_small"
    case redditCampaign    = "reddit_campaign"
    case redditLaunch      = "reddit_launch"
    case redditRecovery    = "reddit_recovery"
    case redditMedia       = "reddit_media"
    case presskit          = "presskit"
    case articleLink       = "article_link"
    case wikipedia         = "wikipedia"
    case videoLink         = "video_link"
    case youtubeId         = "youtube_id"
    case flickrImages      = "flickr_images"
  
  }



}

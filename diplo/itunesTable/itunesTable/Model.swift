

import Foundation


struct Results: Codable{
    var resultCount: Int
    var results: [Tracks]
}

struct Tracks: Codable {
    var artistName: String
    var trackName: String
}

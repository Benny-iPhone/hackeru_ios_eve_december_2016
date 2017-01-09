//
//  Model.swift
//  RadioPlayer
//
//  Created by Benny Davidovitz on 09/01/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import Foundation

enum Station : Int{
    case someLie
    case glgltz
    case yesFM
    
    func url() -> URL{
        switch self {
        case .someLie:
            return URL(string: "http://streamer.akaver.com/streamgen.php?stream=skyplus&format=mp3&quality=hi")!
        case .glgltz:
            return URL(string: "http://glzlv01.vds-is.bynetcdn.com/glglz/glglz_aac/playlist.m3u8")!
        case .yesFM:
            return URL(string: "http://yesfm.ice.infomaniak.ch/yesfm-high.mp3")!
        }
    }
}




















//
//  Song.swift
//  VPosUISwift
//
//  Created by QRVN on 30/07/2024.
//

import Foundation

typealias APIModel = Decodable & Identifiable

struct Song: APIModel {
    var id: String
    var artistName: String
    var releaseDate: String
    var name: String
    var collectionName: String
    var kind: String
    var copyright: String
    var artistId: String
    var artistUrl: String
    var artworkUrl100: String
}

struct SongFeed: Decodable {
    var result: [Song]
}

struct SongResult: Decodable {
    var feed: SongFeed
}

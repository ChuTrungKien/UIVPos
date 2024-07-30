//
//  SongListViewModel.swift
//  VPosUISwift
//
//  Created by QRVN on 30/07/2024.
//

import Foundation

class SongListViewModel: ObservableObject {
    private let urlString = "https://rss.itunes.apple.com/api/v1/vn/apple-music/hot-tracks/all/100/explicit.json"
    @Published var songs: [Song] = []
    
    init() {
        loadAPI()
    }
    
    func loadAPI() {
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { data, _, _ in
            guard let data = data else { return }
            
            do {
                let songResult = try JSONDecoder().decode(SongResult.self, from: data)
                
                DispatchQueue.main.async {
                    self.songs = songResult.feed.result
                }
            } catch {
                print("Loi convert data")
            }
        }.resume()
    }
}

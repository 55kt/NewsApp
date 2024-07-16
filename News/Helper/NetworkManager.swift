//
//  NetworkManager.swift
//  News
//
//  Created by Vlad on 16/7/24.
//

import Foundation

final class NetworkManager {
    
    // MARK: - Properties
    static let shared = NetworkManager()
    private let decoder = JSONDecoder()
    
    // MARK: - Initalizer
    private init() {
        decoder.dateDecodingStrategy = .iso8601
    }
    
    // MARK: - Methods
    func getNews(urlString: String) async throws -> News {
        
        guard let url = URL(string: urlString) else { throw NetworkError.invalidURL }
//        print("URL: \(url)") Verifying that data has been received
        let (data, response) = try await URLSession.shared.data(from: url)
//        print("Data: \(String(data: data, encoding: .utf8))") Verifying that data has been received
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else { throw NetworkError.invalidResponse}
        do {
            return try decoder.decode(News.self, from: data)
        } catch {
            throw NetworkError.invalidData
        }
    }
}

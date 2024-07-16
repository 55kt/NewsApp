//
//  NetworkError.swift
//  News
//
//  Created by Vlad on 16/7/24.
//

import Foundation

enum NetworkError: String, Error {
    case invalidURL = "Invalid URL"
    case invalidResponse = "Invalid response from the server"
    case invalidData = "The data received from the server is invalid"
}

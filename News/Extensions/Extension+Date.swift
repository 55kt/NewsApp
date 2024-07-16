//
//  Extension+Date.swift
//  News
//
//  Created by Vlad on 16/7/24.
//

import Foundation

extension Date {
    func convertDate() -> String {
        return formatted(.dateTime.hour().minute().day().month().year())
    }
}

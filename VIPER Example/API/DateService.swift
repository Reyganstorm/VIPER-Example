//
//  DateService.swift
//  VIPER Example
//
//  Created by Руслан Штыбаев on 16.12.2022.
//

import Foundation

class DateService {
    func getDate(completion: @escaping (Date) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            completion(Date())
        }
    }
}

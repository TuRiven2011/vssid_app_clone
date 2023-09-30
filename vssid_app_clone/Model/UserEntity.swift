//
//  UserEntity.swift
//  vssid_app_clone
//
//  Created by Phạm Bá Tú on 30/09/2023.
//

import Foundation

struct UserEntity: Codable {
    var userName: String?
    var password: String?
    var name: String?
    var bhxhID: String?
    var birth: String?
    var cccd: String?
    var phone: String?
    var address: String?
    var bhyt: BhytEntity?
}

struct BhytEntity: Codable {
    var startDate: String?
    var endDate: String?
    var birth: String?
    var bhytID: String?
    var sex: String?
    var registerLocation: String?
    var expiredDate: String?
    var inforBenefit: String?
}

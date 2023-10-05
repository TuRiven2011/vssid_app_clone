

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
//    var bhyt: BhytEntity?
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

struct ProgressEntity: Codable {
    var startMonth1: String?
    var endMonth1: String?
    var unit1: String?
    var position1: String?
    var money1: String?
    var address1: String?
    
    
    var startMonth2: String?
    var endMonth2: String?
    var unit2: String?
    var position2: String?
    var money2: String?
    var address2: String?
    
    var startMonth3: String?
    var endMonth3: String?
    var unit3: String?
    var position3: String?
    var money3: String?
    var address3: String?
}

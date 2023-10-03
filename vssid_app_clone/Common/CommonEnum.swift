

import Foundation
import UIKit

enum HelpEnum {
    case userManual, chatBot, hotline, email, question, request
    
    var title: String {
        switch(self) {
        case .userManual:
            return "Hướng dẫn sử dụng"
        case .chatBot:
            return "Chat bot"
        case .hotline:
            return "Tổng đài"
        case .email:
            return "Email"
        case .question:
            return "Câu hỏi thường gặp"
        case .request:
            return "Phản ảnh kiến nghị"
        }
    }
    
    var icon: UIImage {
        switch(self) {
        case .userManual:
            return .init(named: "ho-trohdsd") ?? .init()
        case .chatBot:
            return .init(named: "ho-trohdsd") ?? .init()
        case .hotline:
            return .init(named: "ho-trohdsd") ?? .init()
        case .email:
            return .init(named: "ho-trohdsd") ?? .init()
        case .question:
            return .init(named: "ho-trohdsd") ?? .init()
        case .request:
            return .init(named: "ho-trohdsd") ?? .init()
        }
    }
}

enum SearchEnum {
    case first, second, third, fourth, fifth, sixth
    
    var title: String {
        switch(self) {
        case .first:
            return "Tra cứu mã số BHXH"
        case .second:
            return "Tra cứu cơ quan BHXH"
        case .third:
            return "Tra cứu CSKCB cấp giấy nghỉ việc hưởng BHXH"
        case .fourth:
            return "Tra cứu CSKCB ký hợp đồng khám, chữa bệnh BHYT"
        case .fifth:
            return "Tra cứu đơn vị tham gia BHYT"
        case .sixth:
            return "Tra cứu các tổ chức dịch vụ thu BHXH, BHYT"
        }
    }
    
    var icon: UIImage {
        switch(self) {
        case .first:
            return .init(named: "new_tracuu_maso") ?? .init()
        case .second:
            return .init(named: "new_tracuu_diemthu") ?? .init()
        case .third:
            return .init(named: "new_tracuu_cskcb2") ?? .init()
        case .fourth:
            return .init(named: "new_tracuu_cskcb") ?? .init()
        case .fifth:
            return .init(named: "new_tracuu_donvi") ?? .init()
        case .sixth:
            return .init(named: "new_tracuu_coquan") ?? .init()
        }
    }
    
    
}

enum InforEnum {
    case profileImage, name, insuranceId, birthday, personalID, phone, address
    
    var infor: String {
        switch(self) {
        case .name:
            return "Phạm Thanh Tú"
        case .insuranceId:
            return "010101001010"
        case .birthday:
            return "22/2/2022"
        case .personalID:
            return "032381389428"
        case .phone:
            return "0938247921"
        case .address:
            return "số 8 đường Bạch Mai Hà Nội"
        case .profileImage:
            return "avatar"
        }
    }
    
}

enum InsuranceInforEnum {
    case profileImage, name, insuranceId, birthday, date, sex, address, time, benefit
    
    var infor: String {
        switch(self) {
            
        case .profileImage:
            return "avatar"
        case .name:
            return "Phạm Thanh Tú"
        case .insuranceId:
            return "10229394839"
        case .birthday:
            return "22/12/2012"
        case .date:
            return "22/12/2028"
        case .sex:
            return "Nam"
        case .address:
            return "Bệnh Viện Trung Ương"
        case .time:
            return "22/12/2023 đến 22/12/2028"
        case .benefit:
            return "Được hưởng 80% chi phí khám bệnh, chữa bệnh trong phạm vi được hưởng BHYT \n(áp dụng tỷ lệ thanh toán một số thuốc, hoá chất, vật tư y tế và dịch vụ kỹ thuật theo quy định của Bộ trưởng Bộ Y tế),\nTrong trường hợp điều trị nội trú trái tuyến tại CSKCB tuyến TW sẽ được hưởng 32% (TH trên thẻ có mã nơi sinh sống là K1 hoặc K2 hoặc K3 sẽ được 80%),\nCSKCB tuyến tỉnh sẽ được hưởng 48% (TH trên thẻ có mã nơi sinh sống là K1 hoặc K2 hoặc K3 sẽ được 80%),\ntừ ngày 1/1/2021 sẽ hưởng 80%, CSKCB là bệnh viện tuyến huyện sẽ hưởng 80% Chi phí trong phạm vi hưởng BHYT\n(áp dụng tỷ lệ thanh toán một số thuốc, hoá chất, vật tư y tế và dịch vụ kỹ thuật theo quy định của Bộ trươgr Bộ Y tế)"
        }
    }
}

enum UseCardEnum {
    case qrImage, insuranceId, name
    
    var infor: String {
        switch(self) {
        case .qrImage:
            return "qrimage"
        case .insuranceId:
            return "9127317313"
        case .name:
            return "Phạm Thanh Tú"
        }
        
    }
    
}

enum SideMenuEnum: CaseIterable {
    case notification, news, personal, service, search, help, setting, changePassword, logOut
    
    var title: String {
        switch(self) {
            
        case .notification:
            return "Thông báo"
        case .news:
            return "Tin tức"
        case .personal:
            return "Quản lý cá nhân"
        case .service:
            return "Dịch vụ công"
        case .search:
            return "Tra cứu"
        case .help:
            return "Trợ giúp"
        case .setting:
            return "Cài đặt"
        case .changePassword:
            return "Đổi mật khẩu"
        case .logOut:
            return "Đăng xuất"
        }
    }
    
    var image: UIImage {
        switch(self) {
            
        case .notification:
            return .init(named: "new_menu_thongbao") ?? .init()
        case .news:
            return .init(named: "new_menu_tintuc") ?? .init()
        case .personal:
            return .init(named: "new_menu_canhan") ?? .init()
        case .service:
            return .init(named: "dvcongtrang") ?? .init()
        case .search:
            return .init(named: "new_menu_tracuu") ?? .init()
        case .help:
            return .init(named: "new_menu_hotro") ?? .init()
        case .setting:
            return .init(named: "new_menu_caidat") ?? .init()
        case .changePassword:
            return .init(named: "new_menu_thongbao") ?? .init()
        case .logOut:
            return .init(named: "new_menu_dangxuat") ?? .init()
        }
    }
}





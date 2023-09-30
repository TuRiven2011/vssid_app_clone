//
//  CommonEnum.swift
//  clone_vssid
//
//  Created by Phạm Bá Tú on 23/09/2023.
//

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
            return "Dù bạn chỉ là một sinh viên mới tốt nghiệp ở độ tuổi 20, hay đang đầu vì khoản nợ trong quá khứ cùng kế hoạch kết hôn ở độ tuổi 30, dự định lập kế hoạch đầu tư cho bất động sản khi 50 tuổi. Bạn thấy đó, dù ở lứa tuổi nào trong cuộc đời thì chúng ta đều có hai điểm chung này: Chúng ta ai cũng có người thân trong gia đình mà bạn hết mực yêu thương. Lo âu vì những rủi ro xảy ra trong tương lai mà bạn không thể lường trước. Đó là lý do mà bảo hiểm nhân thọ Sun Life ra đời và luôn được Khách hàng tin tưởng lựa chọn để đảm bảo cho sự an toàn tương lai, từ đó an tâm phát triển sự nghiệp, hướng đến một tương lai tươi sáng. Đúng như vậy, bạn không thể biết chính xác rủi ro sẽ xảy đến vào lúc nào. Nếu có bảo hiểm nhân thọ, bạn có thể chuẩn bị cho những rủi ro không lường trước trong tương lai. Chính bảo hiểm nhân thọ xây dựng cho bạn một tinh thần luôn vững vàng, an tâm trước những vấn đề trong cuộc sống. Khi nói về khả năng xấu nhất xảy ra thì bạn và những người thân yêu của bạn luôn có sự hỗ trợ về tài chính và tinh thần. Bảo hiểm nhân thọ mang lại cho bạn điều gì ở độ tuổi từ 20 đến 40 "
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
            return .init(named: "dichvucongTab") ?? .init()
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





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


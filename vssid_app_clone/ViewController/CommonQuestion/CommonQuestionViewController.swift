

import UIKit

class CommonQuestionViewController: UIViewController {

    @IBOutlet weak var questionTableView: UITableView!
    
    
    let listData: [QuestionEntity] = [
        .init(question: "Làm thế nào để có tài khoản đăng nhập và sử dụng ứng dụng VssID?", answer: "Bạn có thể chọn chức năng \"Quên mật khẩu\" trên ứng dụng VssID hoặc trên Cổng Dịch vụ công Bảo hiểm xã hội Việt Nam (https://dichvucong.baohiẽmahoi.gov.vn), điền các thông tin theo yêu cầu để lấy lại mật khẩu."),
        .init(question: "Tôi có thể tìm thấy mã số Bảo hiểm xã hội của mình ở đâu?", answer: "Bạn có thể chọn chức năng \"Quên mật khẩu\" trên ứng dụng VssID hoặc trên Cổng Dịch vụ công Bảo hiểm xã hội Việt Nam (https://dichvucong.baohiẽmahoi.gov.vn), điền các thông tin theo yêu cầu để lấy lại mật khẩu."),
        .init(question: "Tôi có thể sử dụng những tính năng, tiện ích gì trên ứng dụng VssID?", answer: "Bạn có thể chọn chức năng \"Quên mật khẩu\" trên ứng dụng VssID hoặc trên Cổng Dịch vụ công Bảo hiểm xã hội Việt Nam (https://dichvucong.baohiẽmahoi.gov.vn), điền các thông tin theo yêu cầu để lấy lại mật khẩu."),
        .init(question: "Tôi có thể có nhiều tài khoản(tên) đăng nhập để sử dụng ứng dụng VssID không?", answer: "Bạn có thể chọn chức năng \"Quên mật khẩu\" trên ứng dụng VssID hoặc trên Cổng Dịch vụ công Bảo hiểm xã hội Việt Nam (https://dichvucong.baohiẽmahoi.gov.vn), điền các thông tin theo yêu cầu để lấy lại mật khẩu."),
        .init(question: "Tôi có thể cùng lúc sử dụng một (01) tài khoản để đăng nhập vào ứng dụng VssID ở từ (02) thiết bị trở lên không?", answer: "Bạn có thể chọn chức năng \"Quên mật khẩu\" trên ứng dụng VssID hoặc trên Cổng Dịch vụ công Bảo hiểm xã hội Việt Nam (https://dichvucong.baohiẽmahoi.gov.vn), điền các thông tin theo yêu cầu để lấy lại mật khẩu."),
        .init(question: "Nếu tôi nhập sai mật khẩu đăng nhập ứng dụng VssID, tài khoản của tôi có bị khoá không?", answer: "Bạn có thể chọn chức năng \"Quên mật khẩu\" trên ứng dụng VssID hoặc trên Cổng Dịch vụ công Bảo hiểm xã hội Việt Nam (https://dichvucong.baohiẽmahoi.gov.vn), điền các thông tin theo yêu cầu để lấy lại mật khẩu."),
        .init(question: "Làm thế nào để có tài khoản đăng nhập và sử dụng ứng dụng VssID?", answer: "Bạn có thể chọn chức năng \"Quên mật khẩu\" trên ứng dụng VssID hoặc trên Cổng Dịch vụ công Bảo hiểm xã hội Việt Nam (https://dichvucong.baohiẽmahoi.gov.vn), điền các thông tin theo yêu cầu để lấy lại mật khẩu."),
        .init(question: "Làm thế nào để có tài khoản đăng nhập và sử dụng ứng dụng VssID?", answer: "Bạn có thể chọn chức năng \"Quên mật khẩu\" trên ứng dụng VssID hoặc trên Cổng Dịch vụ công Bảo hiểm xã hội Việt Nam (https://dichvucong.baohiẽmahoi.gov.vn), điền các thông tin theo yêu cầu để lấy lại mật khẩu."),
        .init(question: "Làm thế nào để có tài khoản đăng nhập và sử dụng ứng dụng VssID?", answer: "Bạn có thể chọn chức năng \"Quên mật khẩu\" trên ứng dụng VssID hoặc trên Cổng Dịch vụ công Bảo hiểm xã hội Việt Nam (https://dichvucong.baohiẽmahoi.gov.vn), điền các thông tin theo yêu cầu để lấy lại mật khẩu."),
        .init(question: "Làm thế nào để có tài khoản đăng nhập và sử dụng ứng dụng VssID?", answer: "Bạn có thể chọn chức năng \"Quên mật khẩu\" trên ứng dụng VssID hoặc trên Cổng Dịch vụ công Bảo hiểm xã hội Việt Nam (https://dichvucong.baohiẽmahoi.gov.vn), điền các thông tin theo yêu cầu để lấy lại mật khẩu."),
        .init(question: "Làm thế nào để có tài khoản đăng nhập và sử dụng ứng dụng VssID?", answer: "Bạn có thể chọn chức năng \"Quên mật khẩu\" trên ứng dụng VssID hoặc trên Cổng Dịch vụ công Bảo hiểm xã hội Việt Nam (https://dichvucong.baohiẽmahoi.gov.vn), điền các thông tin theo yêu cầu để lấy lại mật khẩu."),
        .init(question: "Làm thế nào để có tài khoản đăng nhập và sử dụng ứng dụng VssID?", answer: "Bạn có thể chọn chức năng \"Quên mật khẩu\" trên ứng dụng VssID hoặc trên Cổng Dịch vụ công Bảo hiểm xã hội Việt Nam (https://dichvucong.baohiẽmahoi.gov.vn), điền các thông tin theo yêu cầu để lấy lại mật khẩu."),
        .init(question: "Làm thế nào để có tài khoản đăng nhập và sử dụng ứng dụng VssID?", answer: "Bạn có thể chọn chức năng \"Quên mật khẩu\" trên ứng dụng VssID hoặc trên Cổng Dịch vụ công Bảo hiểm xã hội Việt Nam (https://dichvucong.baohiẽmahoi.gov.vn), điền các thông tin theo yêu cầu để lấy lại mật khẩu."),
        .init(question: "Làm thế nào để có tài khoản đăng nhập và sử dụng ứng dụng VssID?", answer: "Bạn có thể chọn chức năng \"Quên mật khẩu\" trên ứng dụng VssID hoặc trên Cổng Dịch vụ công Bảo hiểm xã hội Việt Nam (https://dichvucong.baohiẽmahoi.gov.vn), điền các thông tin theo yêu cầu để lấy lại mật khẩu."),
        .init(question: "Làm thế nào để có tài khoản đăng nhập và sử dụng ứng dụng VssID?", answer: "Bạn có thể chọn chức năng \"Quên mật khẩu\" trên ứng dụng VssID hoặc trên Cổng Dịch vụ công Bảo hiểm xã hội Việt Nam (https://dichvucong.baohiẽmahoi.gov.vn), điền các thông tin theo yêu cầu để lấy lại mật khẩu.")
    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configTableView()
    }
    
    func configTableView(){
        questionTableView.register(.init(nibName: "CommonQuestionTableViewCell", bundle: nil), forCellReuseIdentifier: "CommonQuestionTableViewCell")
        questionTableView.delegate = self
        questionTableView.dataSource = self
    }


}

extension CommonQuestionViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CommonQuestionTableViewCell") as? CommonQuestionTableViewCell else {return UITableViewCell()}
        cell.selectionStyle = .none
        cell.binding(data: listData[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = AnswerViewController()
        vc.data = listData[indexPath.row]
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

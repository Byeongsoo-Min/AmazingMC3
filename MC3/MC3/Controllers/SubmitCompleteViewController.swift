//
//  SubmitCompleteViewController.swift
//  MC3
//
//  Created by MBSoo on 2022/07/13.
//

import UIKit

class SubmitCompleteViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.systemBackground
        view.addSubview(success)
        success.frame = view.bounds
        // Do any additional setup after loading the view.
    }
    private let success:UITextView = { 
       let success = UITextView()
        success.text = "제출 성공!"
        success.isEditable = false
        success.textColor = UIColor.systemBlue
        success.frame(forAlignmentRect: CGRect(x: 200, y: 300, width: 200, height: 200))
        return success
    }()

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

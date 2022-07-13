//
//  QuizAnswerCollectionViewCell.swift
//  MC3
//
//  Created by MBSoo on 2022/07/12.
//

import UIKit

class QuizAnswerCollectionViewCell: UICollectionViewCell {
    static let identifier = "QuizAnswerCollectionViewCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setAnswerButtonView()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    let quizAnswerButtonView: UIButton  =  {
        var quizButton: UIButton = UIButton()
        quizButton.setTitle("hi", for: .normal)
        return quizButton
    }()
    
    func setAnswerButtonView(){
        backgroundColor = UIColor.red
        addSubview(quizAnswerButtonView)
//        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: <#T##String#>, metrics: <#T##[String : Any]?#>, views: <#T##[String : Any]#>))
    }
}


//extension QuizAnswerCollectionViewCell{
//    var quizAnswersDolphin: [String] { return
//        [
//        "goodgood",
//        "nicenice",
//        "greatgreat",
//        "thebestthebest"
//        ]
//        }
//}

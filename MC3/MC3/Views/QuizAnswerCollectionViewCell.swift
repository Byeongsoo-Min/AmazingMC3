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
        contentView.addSubview(quizAnswerButtonView)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    let quizAnswerButtonView: UIButton  =  {
        var quizButton: UIButton = UIButton()
        quizButton.backgroundColor = UIColor.brown
        return quizButton
    }()
    override func layoutSubviews() {
        super.layoutSubviews()
        quizAnswerButtonView.frame = contentView.bounds
    }
    func setAnswerButtonView(){
        backgroundColor = UIColor.red
        contentView.addSubview(quizAnswerButtonView)
    }
}

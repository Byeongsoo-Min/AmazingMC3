//
//  QuizViewController.swift
//  MC3
//
//  Created by MBSoo on 2022/07/12.
//

import UIKit

class QuizViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        view.addSubview(quizImage)
        NSLayoutConstraint.activate([
            quizImage.centerXAnchor.constraint(equalTo:  view.centerXAnchor),
            quizImage.centerYAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            quizImage.widthAnchor.constraint(equalToConstant: 200),
            quizImage.heightAnchor.constraint(equalToConstant: 200)
        ])
        view.addSubview(quizText)
        view.addSubview(quizAnswerCollection)
        NSLayoutConstraint.activate([
            quizAnswerCollection.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            quizAnswerCollection.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 50),
            quizAnswerCollection.widthAnchor.constraint(equalToConstant: view.frame.width - 40),
            quizAnswerCollection.heightAnchor.constraint(equalToConstant: 40)
            
        ])
        quizAnswerCollection.delegate = self
        quizAnswerCollection.dataSource = self
    }
    let quizAnswersDolphin: [String] =
        [
        "goodgood",
        "nicenice",
        "greatgreat",
        "thebestthebest"
        ]
    private let quizImage: UIImageView = {
        var quizImage = UIImage(named: "Dolphin")
        // Image 생성 (현재 더미)
        quizImage = quizImage?.withRenderingMode(.alwaysOriginal)
        // Image가 깨지지 않고 원본을 그대로 렌더링 하게 설정
        let imageView: UIImageView = UIImageView(image: quizImage)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()

    lazy var quizText: UITextView = {
        var quizText: UITextView = UITextView(frame: CGRect(x: 20, y: 350, width: self.view.bounds.width - 40, height: 100))
        // TextView 객체 생성
        quizText.backgroundColor = .systemGray2
        // 배경색 넣기
        quizText.text = "blablalbalblablblal lblablabla dolphin good good ~~~"
        
        quizText.layer.masksToBounds = true
        // 둥글게 만들기
        
        quizText.layer.cornerRadius = 20
        // 20만큼 둥글게 만들기
        
        quizText.font = UIFont.systemFont(ofSize: 20)
        // font 사이즈 설정
        
        quizText.textColor = UIColor.black
        // 색 설정
        quizText.textAlignment = NSTextAlignment.left
        // 정렬
        quizText.isEditable = false
        return quizText
    }()
    
    private let quizAnswerCollection: UICollectionView = {
        let collection = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
        collection.register(QuizAnswerCollectionViewCell.self, forCellWithReuseIdentifier: QuizAnswerCollectionViewCell.identifier)
        collection.backgroundColor = .black
        collection.translatesAutoresizingMaskIntoConstraints = false
        return collection
    }()
}

extension QuizViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: QuizAnswerCollectionViewCell.identifier, for: indexPath) as? QuizAnswerCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.quizAnswerButtonView.setTitle(quizAnswersDolphin[indexPath.row], for: .normal)
        cell.quizAnswerButtonView.titleLabel?.textColor = .white
        cell.quizAnswerButtonView.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        cell.quizAnswerButtonView.layer.borderColor = UIColor.white.cgColor
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
            return 5
        }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: view.frame.width, height: 200)
        }
    
}

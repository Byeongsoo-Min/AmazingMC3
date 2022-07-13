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
            // autolayout
        ])
        view.addSubview(quizText)
        view.addSubview(quizAnswerCollection)
        NSLayoutConstraint.activate([
            quizAnswerCollection.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            quizAnswerCollection.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 200),
            quizAnswerCollection.widthAnchor.constraint(equalToConstant: view.frame.width),
            quizAnswerCollection.heightAnchor.constraint(equalToConstant: 250)
            // auto layout
        ])
        quizAnswerCollection.delegate = self
        // delegate 연결
        quizAnswerCollection.dataSource = self
        // datasource 연결
        quizAnswerCollection.contentInset = UIEdgeInsets(top: 15, left: 30, bottom: 0, right: 30)
        // padding
        view.addSubview(quizSubmit)
        NSLayoutConstraint.activate([
            quizSubmit.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            quizSubmit.centerYAnchor.constraint(equalTo: view.bottomAnchor, constant: -80),
            quizSubmit.widthAnchor.constraint(equalToConstant: view.frame.width - 60),
            quizSubmit.heightAnchor.constraint(equalToConstant: 50)
        ])
//        quizSubmit.frame.width = view.frame.width - 40
//        quizSubmit.frame.height = 40
    }
    let quizAnswersDolphin: [String] =
        [
        "goodgood",
        "nicenice",
        "greatgreat",
        "thebestthebest"
        ]
    @objc func buttonTapped(){
        print("buttonTapped")
        let detailController = SubmitCompleteViewController()
        navigationController?.pushViewController(detailController, animated: true)
    }
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
    private let quizSubmit: UIButton = {
        let quizSubmit = UIButton()
        quizSubmit.setTitle("정답 확인하기", for: .normal)
        quizSubmit.titleLabel?.textColor = UIColor.white
        quizSubmit.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        quizSubmit.translatesAutoresizingMaskIntoConstraints = false
        quizSubmit.backgroundColor = UIColor.brown
        quizSubmit.addTarget(self, action: #selector(QuizViewController.buttonTapped), for: .touchUpInside)
        return quizSubmit
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
        collection.translatesAutoresizingMaskIntoConstraints = false
        return collection
    }()
}

extension QuizViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: QuizAnswerCollectionViewCell.identifier, for: indexPath) as? QuizAnswerCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.quizAnswerButtonView.setTitle(quizAnswersDolphin[indexPath.row], for: .normal)
        cell.quizAnswerButtonView.titleLabel?.textColor = .white
        cell.quizAnswerButtonView.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        cell.quizAnswerButtonView.layer.borderColor = UIColor.white.cgColor
        cell.quizAnswerButtonView.layer.cornerRadius = 20
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
            return 50
        }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let spacing: CGFloat = 20
            return CGSize(width: (collectionView.bounds.width / 2 - spacing * 2), height: 70)
        }
    
}


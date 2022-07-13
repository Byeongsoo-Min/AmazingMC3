//
//  QuizCollectionViewController.swift
//  MC3
//
//  Created by MBSoo on 2022/07/12.
//

import UIKit

class QuizCollectionViewController: UICollectionViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        collectionView?.backgroundColor = UIColor.blue
//        self.collectionView!.register(QuizAnswerCollectionViewCell.self, forCellWithReuseIdentifier: QuizCollectionViewController.identifier)

        // Do any additional setup after loading the view.
    }

    // MARK: UICollectionViewDataSource

    
//    override func numberOfSections(in collectionView: UICollectionView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 2
//    }
//
//
//    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of items
//        return 2
//    }
//
//    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: QuizAnswerCollectionViewCell.identifier, for: indexPath) as! QuizAnswerCollectionViewCell
//        cell.quizAnswerButtonView.setTitle(quizAnswersDolphin[indexPath.row], for: .normal)
//        cell.quizAnswerButtonView.titleLabel?.textColor = .white
//        cell.quizAnswerButtonView.titleLabel?.font = UIFont.systemFont(ofSize: 20)
//        cell.quizAnswerButtonView.layer.borderColor = UIColor.white.cgColor
//        // Configure the cell
//
//        return cell
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//            let width = (collectionView.frame.width / 2) - (5 * (2 - 1))
//            return CGSize(width: width, height: width)
//        }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//            return 5
//        }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//            return 5
//        }
//    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
//        return true
//    }
//
    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}


//extension QuizCollectionViewController: UICollectionViewDelegateFlowLayout{
//
//    //지정된 섹션에 표시할 항목의 개수를 묻는 메서드.
//    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of items
//        return quizAnswersDolphin.count
//    }
//
//    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: QuizCollectionViewController.identifier, for: indexPath) as! QuizAnswerCollectionViewCell
//        cell.quizAnswerButtonView.setTitle(quizAnswersDolphin[indexPath.row], for: .normal)
//        cell.quizAnswerButtonView.titleLabel?.textColor = .white
//        cell.quizAnswerButtonView.titleLabel?.font = UIFont.systemFont(ofSize: 20)
//        cell.quizAnswerButtonView.layer.borderColor = UIColor.white.cgColor
//        // Configure the cell
//    
//        return cell
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//            let width = (collectionView.frame.width / 2) - (5 * (2 - 1))
//            return CGSize(width: width, height: 200)
//        }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//            return 5
//        }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//            return 5
//        }
//    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
//        return true
//    }
//    
//}

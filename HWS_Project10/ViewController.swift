//
//  ViewController.swift
//  HWS_Project10
//
//  Created by J on 2021/03/17.
//

import UIKit

class ViewController: UICollectionViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    //UIImagePickerControllerDelegate: ユーザーが画像を選択したかキャンセルしたかを通知
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addNewPerson))
        
        
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Person", for: indexPath) as? PersonCell else {
            fatalError("fatal error!!")
        }
        return cell
    }
  

    @objc func addNewPerson(){
        let picker = UIImagePickerController()
        picker.allowsEditing = true //画像の切り抜き
        picker.delegate = self
        present(picker, animated: true, completion: nil)
    }
    
}


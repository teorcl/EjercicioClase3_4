//
//  TaskFourViewController.swift
//  EjercicioClase3_4
//
//  Created by TEO on 8/11/22.
//

import UIKit

class TaskFourViewController: UIViewController {

    struct Const{
        static let initialNumber = 1
        static let finalNumber = 10
    }
    
    @IBOutlet weak var randomNumberLabel: UILabel!
    @IBOutlet weak var faceImageView: UIImageView!
    
    var randomNumber = Const.initialNumber
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        play()
    }
    
    func showNumberRandom(){
        randomNumberLabel.text = "\(randomNumber)"
    }
    
    func getRandomNumer(){
        randomNumber = Int.random(in: Const.initialNumber...Const.finalNumber)
    }
    
    func selectImage(){
        if randomNumber % 2 == 0 {
            faceImageView.image = UIImage(named: "caraTriste")
        }else{
            faceImageView.image = UIImage(named: "caraFeliz")
        }
        
    }

    func play(){
        getRandomNumer()
        selectImage()
        showNumberRandom()
    }

}


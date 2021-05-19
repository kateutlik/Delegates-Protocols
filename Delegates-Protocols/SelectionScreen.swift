//
//  SelectionScreen.swift
//  Delegates-Protocols
//
//  Created by Katerina Utlik on 4/2/21.
//

import UIKit

protocol SideSelectionDelegate {
    func didTapChoice(image: UIImage, name: String, color: UIColor)
}

class SelectionScreen: UIViewController {
    var selectionDelegate: SideSelectionDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func imperialButtonTapped(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        selectionDelegate.didTapChoice(image: UIImage(named: "vader")!, name: "Darth Vader", color: .red)
    }
    
    @IBAction func rebelButtonTapped(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        selectionDelegate.didTapChoice(image: UIImage(named: "luke")!, name: "Luke Skywalker", color: .cyan)
    }
}

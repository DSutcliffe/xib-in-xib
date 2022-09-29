//
//  VC1ViewController.swift
//  xib-in-xib
//
//  Created by Daniel Sutcliffe on 29/09/2022.
//

import UIKit

protocol VC1ViewControllerDelegate: AnyObject {
    func dismiss()
}

class VC1ViewController: UIViewController {
    var delegate: VC1ViewControllerDelegate?
    
    let viewModel: VC1ViewModel
    
    @IBOutlet weak var backButton: UIButton!
    
    init(viewModel: VC1ViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: Bundle(for: Self.self))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .green
    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        print("in vc")
//        delegate?.dismiss()
        viewModel.dismiss()
    }
}

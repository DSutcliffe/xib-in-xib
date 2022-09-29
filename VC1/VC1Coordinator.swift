//
//  VC1Coordinator.swift
//  xib-in-xib
//
//  Created by Daniel Sutcliffe on 29/09/2022.
//

import UIKit

class VC1Coordinator: Coordinator {
    public var presenter: UIViewController
    let viewController: VC1ViewController
    let viewModel = VC1ViewModel()
    
    init(presenter: UIViewController) {
        self.presenter = presenter
        viewController = VC1ViewController(viewModel: VC1ViewModel())
    }
    
    func start() {
        viewModel.delegate = self
//        viewController.delegate = self
        
        viewController.modalPresentationStyle = .fullScreen
        presenter.present(viewController, animated: true, completion: nil)
    }
}

extension VC1Coordinator: VC1ViewModelDelegate {
    public func dismiss() {
        print("in coordinator")
        presenter.dismiss(animated: true, completion: nil)
    }
}

//extension VC1Coordinator: VC1ViewControllerDelegate {
//    public func dismiss() {
//        print("in coordinator")
//        viewController.dismiss(animated: true, completion: nil)
//    }
//}

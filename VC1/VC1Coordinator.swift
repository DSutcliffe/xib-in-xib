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
        viewController = VC1ViewController(viewModel: viewModel)
                
//        viewController = VC1ViewController(viewModel: viewModel())
        /// Here the viewModel passed on the VC is not the viewModel initialised above,
        /// It is giving a new VC1ViewModel() viewmodel which hasn’t got the delegate set to be the coordinator.
        /// If you replace VC1ViewModel() with viewModel it dismisses the VC1
    }
    
    func start() {
        viewModel.delegate = self
        
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

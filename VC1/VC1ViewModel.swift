//
//  VC1ViewModel.swift
//  xib-in-xib
//
//  Created by Daniel Sutcliffe on 29/09/2022.
//

import Foundation

protocol VC1ViewModelDelegate: AnyObject {
    func dismiss()
}

class VC1ViewModel {
    public var delegate: VC1ViewModelDelegate?
    
    func dismiss() {
        print("in vm")
        delegate?.dismiss()
    }
}

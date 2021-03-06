//
//  CounterPresenter.swift
//  DemoWithVIP
//
//  Created by Lương Nhật Lâm on 10/26/17.
//  Copyright (c) 2017 Lương Nhật Lâm. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so you can apply
//  clean architecture to your iOS and Mac projects, see http://clean-swift.com
//

import UIKit

protocol CounterPresenterInput
{
  func presentSomething(response: Counter.Something.Response)
}

protocol CounterPresenterOutput: class
{
  func displaySomething(viewModel: Counter.Something.ViewModel)
}

class CounterPresenter: CounterPresenterInput
{
  weak var output: CounterPresenterOutput!
  
  // MARK: - Presentation logic
  
  func presentSomething(response: Counter.Something.Response)
  {
    // NOTE: Format the response from the Interactor and pass the result back to the View Controller
    
    let viewModel = Counter.Something.ViewModel(result: "\(response.number)")
    output.displaySomething(viewModel: viewModel)
  }
}

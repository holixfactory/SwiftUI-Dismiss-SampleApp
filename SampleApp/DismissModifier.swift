//
//  DismissModifier.swift
//  SampleApp
//
//  Created by Hyuntak Joo on 2020/04/04.
//  Copyright © 2020 Hyuntak Joo. All rights reserved.
//

import Foundation
import SwiftUI

struct DismissModifier: ViewModifier {
  let dismissed: Bool
  let animated: Bool
  let completion: () -> Void
  func body(content: Content) -> some View {
    content.overlay(
      DismissController(dismissed: dismissed, animated: animated, completion: completion)
        .frame(width: 0, height: 0)
    )
  }

  struct DismissController: UIViewControllerRepresentable {
    let dismissed: Bool
    let animated: Bool
    let completion: () -> Void
    func makeUIViewController(context _: Context) -> UIViewController {
      let vc = UIViewController()
      vc.view.isHidden = true
      return vc
    }

    func updateUIViewController(
      _ uiViewController: UIViewController,
      context _: UIViewControllerRepresentableContext<DismissController>
    ) {
      if dismissed {
        uiViewController.dismiss(animated: animated, completion: completion)
      }
    }
  }
}

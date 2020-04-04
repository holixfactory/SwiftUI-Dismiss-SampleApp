//
//  View+dismissed.swift
//  SampleApp
//
//  Created by Hyuntak Joo on 2020/04/04.
//  Copyright © 2020 Hyuntak Joo. All rights reserved.
//

import Foundation
import SwiftUI

extension View {
  func dismissed(
    _ dismissed: Bool,
    animated: Bool = true,
    completion: @escaping() -> Void = {}
  ) -> some View {
    modifier(DismissModifier(dismissed: dismissed, animated: animated, completion: completion))
  }
}

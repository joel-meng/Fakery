//
//  Route.swift
//  Fakery-iOS
//
//  Created by Joel Meng on 13/10/17.
//  Copyright © 2017 Vadym Markov. All rights reserved.
//

import Foundation

public final class Transport: Generator {
  
  public func busShortName() -> String {
    return numerify(generate("transport.bus_shortName"))
  }
  
  public func busLongName() -> String {
    return generate("transport.bus_longName")
  }
  
  public func trainShortName() -> String {
    return letterify(generate("transport.train_shortName"))
  }
  
  public func trainLongName() -> String {
    return generate("transport.train_longName")
  }
  
  public func trainLine() -> String {
    return generate("transport.train_line")
  }
}

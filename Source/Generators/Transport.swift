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
    return numerify(generate("transport.bus_short_name"))
  }
  
  public func busLongName() -> String {
    return generate("transport.bus_long_name")
  }
  
  public func trainShortName() -> String {
    return letterify(generate("transport.train_short_name"))
  }
  
  public func trainLongName() -> String {
    return generate("transport.train_long_name")
  }
  
  public func trainLine() -> String {
    return generate("transport.train_line")
  }
  
  public func busStopName() -> String {
    return bothify(generate("transport.bus_stop_name"))
  }
  
  public func trainStationName() -> String {
    return numerify(generate("transport.train_station_name"))
  }
  
  public func agencyName() -> String {
    return generate("transport.agency_name")
  }
}

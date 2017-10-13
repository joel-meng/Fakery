//
//  TransportSpec.swift
//  Fakery
//
//  Created by Joel Meng on 13/10/17.
//  Copyright © 2017 Vadym Markov. All rights reserved.
//

import XCTest
import Quick
import Nimble
@testable import Fakery

class TransportSpec: QuickSpec {
    
  override func spec() {
    describe("Transport") {
      var transport: Transport!
      
      beforeEach {
        let parser = Parser(locale: "en-TEST")
        transport = Transport(parser: parser)
      }
      
      it("returns correct text", closure: {
        let valueUT = transport.busShortName()
        expect(valueUT).to(match("^\\d{3}$"))
      })

      it("returns correct text", closure: {
        let valueUT = transport.busLongName()
        expect(valueUT).to(equal("Kangaroo Point - Kangaroo Point"))
      })
      
      
      it("returns correct train short name", closure: {
        let valueUT = transport.trainShortName()
        expect(valueUT).to(match("^[A-Z]{4}$"))
      })
      
      it("returns correct train long name", closure: {
        let valueUT = transport.trainLongName()
        expect(valueUT).to(equal("Kangaroo Point line - Kangaroo Point line"))
      })
      
      it("returns correct train line name", closure: {
        let valueUT = transport.trainLine()
        expect(valueUT).to(equal("Kangaroo Point line"))
      })
    }
  }
}

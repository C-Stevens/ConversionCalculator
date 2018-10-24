//
//  Converter.swift
//  ConversionCalculator
//
//  Created by Stevens, Colin (MU-Student) on 10/23/18.
//  Copyright © 2018 Colin Stevens. All rights reserved.
//

import Foundation

class Converter {
    let label: String
    let inputUnit: String
    let outputUnit: String
    init(label: String, inputUnit: String, outputUnit: String) {
        self.label = label
        self.inputUnit = inputUnit
        self.outputUnit = outputUnit
    }
}

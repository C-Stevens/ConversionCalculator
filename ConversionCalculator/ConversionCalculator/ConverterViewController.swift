//
//  ConverterViewController.swift
//  ConversionCalculator
//
//  Created by Stevens, Colin (MU-Student) on 10/23/18.
//  Copyright © 2018 Colin Stevens. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {

    @IBOutlet weak var outputDisplay: UITextField!
    @IBOutlet weak var inputDisplay: UITextField!
    
    var converters: [Converter] = [Converter(label: "Farenheit to Celcius", inputUnit: "°F", outputUnit: "°C"),
                                   Converter(label: "Celcius to Farenheit", inputUnit: "°C", outputUnit: "°F"),
                                   Converter(label: "Miles to Kilometers", inputUnit: "mi", outputUnit: "km"),
                                   Converter(label: "Kilometers to Miles", inputUnit: "km", outputUnit: "mi")]
    var currentConverter: Converter?
    
    @IBAction func converterButtonAction(_ sender: UIButton) {
        let optionMenu = UIAlertController(title: nil, message: "Select a Converter", preferredStyle: .actionSheet)
        for converter in converters {
            optionMenu.addAction(UIAlertAction(title: converter.label, style: .default) {
                (action:UIAlertAction!) in
                self.setConverter(to: converter)
            })
        }
        optionMenu.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        self.present(optionMenu, animated: true, completion: nil)
    }
    
    func setConverter(to converter: Converter) {
        outputDisplay.text = converter.outputUnit
        inputDisplay.text = converter.inputUnit
        self.currentConverter = converter
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaultConverter: Converter = converters[0]
        setConverter(to: defaultConverter)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

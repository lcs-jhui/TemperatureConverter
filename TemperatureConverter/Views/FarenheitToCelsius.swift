//
//  FarenheitToCelsius.swift
//  TemperatureConverter
//
//  Created by Justin Hui on 17/1/2023.
//

import SwiftUI

struct FarenheitToCelsius: View {
    
    //MARK: Stored Properties
    @State var farenheit: Double = 70.0
    
    //MARK: Computed Properties
    
    var celsuis: Double{
        return (farenheit - 32) * 0.5556
    }
    var body: some View {
        
        VStack{
            ZStack{
                
                Circle()
                    .padding()
                    .frame(width: 350)
                
                Text("\(celsuis, specifier: "%.2f")")
                    .foregroundColor(.white)
                    .font(.largeTitle)
            }
            
            Text("Farenheit")
                .bold()
                .font(.largeTitle)
            
            Slider(value: $farenheit, in: 0...100,
                   label: { Text("Farenheit") },
                   minimumValueLabel: {Text("0")},
                   maximumValueLabel: { Text("100") })
            .padding()
            
            //Use string interpolation \()
            Text("\(farenheit, specifier: "%.2f")")
            
            
            Spacer()
            
        }
        
    }
}

struct FarenheitToCelsius_Previews: PreviewProvider {
    static var previews: some View {
        FarenheitToCelsius()
    }
}

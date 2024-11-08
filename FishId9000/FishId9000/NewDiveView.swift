//
//  NewDiveView.swift
//  FishId9000
//
//  Created by Laura Tucker on 2024-11-07.
//

import SwiftUI

struct NewDiveView: View {
    @StateObject var newDive: Dive = .init()
    
    var locations: [Location] = [
        .init(name: "Yucab"),
        .init(name: "Palancar"),
        .init(name: "Paso del Cedral")
        ]
    
    var body: some View {
        VStack {
            VStack {
                Text("Dive Number")
                    .frame(maxWidth: .infinity, alignment: .leading)
                TextField("Dive Number", text: $newDive.numberText)
                    .padding(10)
                    .background {
                        Color.white
                    }
                Spacer()
                    .frame(height: 25.0)
                Text("Dive Name")
                    .frame(maxWidth: .infinity, alignment: .leading)
                TextField("Dive Name", text: $newDive.name)
                    .padding(10)
                    .background {
                        Color.white
                    }
                Spacer()
                    .frame(height: 25.0)
                Text("When")
                    .frame(maxWidth: .infinity, alignment: .leading)
                DatePicker("When", selection: $newDive.date)
                    .padding(10)
                    .background {
                        Color.white
                    }
                Spacer()
                    .frame(height: 25.0)
                Text("Location: ")
                    .frame(maxWidth: .infinity, alignment: .leading)
//                TextField("Location", text: $newDive.location)
//                    .padding(10)
//                    .background {
//                        Color.white
//                    }
                Picker("Location", selection: $newDive.location) {
                    ForEach(locations, id:\.self) { location in
                        Text(location.name)
                    }
                }
                    .pickerStyle(.inline)
                    .background {
                        Color.white
                    }
                Spacer()
            }
            .padding(.top, 100)
            .padding(.horizontal, 40)

        }
        .background {
            Color.pink
        }
        .ignoresSafeArea()
        
    }
}

#Preview {
    NewDiveView()
}

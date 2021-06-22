//
//  Info.swift
//  Slot Machine
//
//  Created by Manvendu Pathak on 02/06/21.
//

import SwiftUI

struct Info: View {
    
   @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack(alignment: .center,spacing:10){
          SwiftUIView()
           Spacer()
            
            Form{
                Section(header: Text("About the aplication")){
                    FormRowView(firstItem: "Application", secondItem: "Slot Machine")
                    FormRowView(firstItem: "Platforms", secondItem: "Iphone")
                    FormRowView(firstItem: "Developer", secondItem: "Manvendu Pathak")
                    FormRowView(firstItem: "Designer", secondItem: "Robert Petras")
                    FormRowView(firstItem: "Copyright", secondItem: "2020 All rights reserved")
                    FormRowView(firstItem: "Version", secondItem: "1.0.0")
                   
                }
            }
            .font(.system(.body ,design: .rounded))
        }
        .padding(.top, 40)
        .overlay(
            Button(action: {
                audioPlayer?.stop()
                self.presentationMode.wrappedValue.dismiss()
            }){
                Image(systemName: "xmark.circle")
                    .font(.title)
            }
            .padding(.top, 30)
            .padding(.trailing, 20)
            .accentColor(Color.secondary)
            , alignment: .topTrailing
        
        )
        .onAppear(perform: {
            playSound(sound: "background-music", type: "mp3")
        })
    }
}

struct FormRowView: View {
    var firstItem: String
    var secondItem: String
    var body: some View {
        HStack{
            Text(firstItem).foregroundColor(Color.gray)
            Spacer()
            Text(secondItem)
        }
    }
}


struct Info_Previews: PreviewProvider {
    static var previews: some View {
        Info()
    }
}


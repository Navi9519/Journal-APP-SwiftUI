//
//  PopUpView.swift
//  Journal
//
//  Created by Ivan Dedic on 2024-09-25.
//

import SwiftUI

struct PopUpView: View {
    
   @ObservedObject var journal: Journal
    
    @Binding var showPopUp: Bool
    @Binding var txtTitle: String
    @Binding var txtNotes: String
    
    
    
    
    var body: some View {
        
        ZStack {
            GeometryReader() { gr in
                VStack {
                    VStack {
                        Text("Add entry").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold().foregroundColor(.white)
                        TextField("", text: $txtTitle).textFieldStyle(.roundedBorder)
                        TextEditor(text: $txtNotes).cornerRadius(10)
                    }.padding(.bottom,10)
                    
                    HStack{
                        
                        Button(action: {
                            
                            let newEntry = JournalEntry(title: txtTitle, notes: txtNotes, date: Date())
                            
                            journal.addEntry(entry: newEntry)
                            
                            withAnimation {
                                showPopUp = false
                            }
                            
                            
                            print(journal.getEntries())
                            
                        }, label: {
                            Text("Save entry")
                            
                            
                            
                            
                        }).padding().background(.white).cornerRadius(5).foregroundColor(.black)
                        
                        Spacer()
                        
                        Button(action: {
                            withAnimation{
                                showPopUp = false
                            }
                        }, label: {
                            Text("Cancel")
                            
                        }).padding().background(.white).cornerRadius(5).foregroundColor(.black)
                        
                    }
                    
                    
                }.padding().frame(width: gr.size.width*0.8, height: gr.size.height * 0.7).background(.black).cornerRadius(10).position(x: gr.size.width / 2, y: gr.size.height/2)
            }
            
        }.background(.ultraThinMaterial)
        
        
        
    }
}

#Preview {
    PopUpView(journal: Journal(), showPopUp: .constant(false), txtTitle: .constant(""), txtNotes: .constant(""))
}

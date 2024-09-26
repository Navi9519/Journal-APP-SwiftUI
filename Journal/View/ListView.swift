//
//  ListView.swift
//  Journal
//
//  Created by Ivan Dedic on 2024-09-25.
//

import SwiftUI

struct ListView: View {
    
  @ObservedObject  var journal: Journal
    
   @Binding var showPopUp: Bool
    
    var body: some View {
        
        VStack {
            
            if !journal.getEntries().isEmpty {
                
                List(journal.getEntries()) { entry in
                    Text("\(entry.title)").padding()
                }.padding(.bottom, 20)
                
            } else {
                
                Text("No entries added").padding().font(.title2).bold().foregroundColor(.red)
                
            }
                Button(action: {
                    
                    withAnimation(.spring(.bouncy)){
                        showPopUp = true
                    }
                    
                    
                }, label: {
                    Text("Add entry").padding(25).background(.green).foregroundColor(.white).cornerRadius(12).padding(.top, 60)
                })
                
            
            
            
         
          
        }
        .padding()
       
    }
    
    }


#Preview {
    ListView(journal: Journal(), showPopUp: .constant(false))
}

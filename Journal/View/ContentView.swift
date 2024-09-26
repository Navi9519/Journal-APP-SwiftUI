//
//  ContentView.swift
//  Journal
//
//  Created by Ivan Dedic on 2024-09-25.
//

import SwiftUI

struct ContentView: View {
    
   @StateObject var myJournal = Journal()
    
    @State var showPopUp = false
    @State var txtTitle = ""
    @State var txtNotes = ""
    
    var body: some View {
        
        ZStack {
            
            ListView(journal: myJournal, showPopUp: $showPopUp)
            if showPopUp {
                PopUpView(journal: myJournal, showPopUp: $showPopUp, txtTitle: $txtTitle, txtNotes: $txtNotes).zIndex(1)
                
                
            }
            
            
    }
}


}


#Preview {
ContentView()
 
}

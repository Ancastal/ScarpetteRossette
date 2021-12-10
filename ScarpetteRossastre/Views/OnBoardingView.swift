//
//  OnBoardingView.swift
//  ProjectWomen2
//
//  Created by Antonio Castaldo on 27/11/21.
//

import SwiftUI

struct PageViewData: Identifiable {
    let id = UUID().uuidString
    let imageNamed: String
}

struct PageView: View {
    let viewData: PageViewData
    var body: some View {
        Image(viewData.imageNamed)
            .resizable()
            .clipped()
    }
}

struct CircleButton: View {
    @Binding var isSelected: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action: {
            self.action()
        }) { Circle()
            .frame(width: 16, height: 16)
            .foregroundColor(self.isSelected ? Color.white : Color.white.opacity(0.5))
        }
    }
}


struct OnBoardingContentView: View {
    @Binding var showOnBoarding: Bool
    @State private var willMove = false
    
    var body: some View {
//            ScrollView(.horizontal) {
                
                            TabView {
                onBoardView(systemImageName: "simple",
                            title: "Sostegno",
                            description: "In ogni momento, cerca contatti utili alla tua situazione in un’interfaccia semplice e veloce.\n\nScegli tra una lista o una mappa interattiva che si aggiorna con la tua posizione.", on: false, showOnBoarding: $showOnBoarding)
                
                onBoardView(systemImageName: "safe",
                            title: "Sicurezza",
                            description: "La nostra app è totalmente anonima e nessun dato sarà registrato o mantenuto.\n\nL’accesso tramite password ti garantisce che solo tu potrai accedervi.", on: false, showOnBoarding: $showOnBoarding)
                
                onBoardView(systemImageName: "support",
                            title: "Semplicità",
                            description: "Datti un minuto per pensare alla tua relazione. Potrai riceverai un consiglio ideato da esperti in base alla tua situazione.\n\nEsplora le organizzazioni circostanti e condividi le tue esperienze in anonimo con altri utenti.", on: true, showOnBoarding: $showOnBoarding)
                
            }

                .edgesIgnoringSafeArea([.top, .bottom])
//                .tabViewStyle(.page(indexDisplayMode: .always))        .indexViewStyle(.page(backgroundDisplayMode: .always))
                .tabViewStyle(.page)
                .indexViewStyle(.page(backgroundDisplayMode: .always))

    }
}



//        .navigationTitle("")


struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingContentView(showOnBoarding: .constant(true))
            .preferredColorScheme(.light)
    }
}

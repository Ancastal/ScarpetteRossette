//
//  DisclaimerView.swift
//  ScarpetteRossastre
//
//  Created by Antonio Castaldo on 09/12/21.
//

import SwiftUI

struct DisclaimerView: View {
    var body: some View {
        VStack (alignment: .leading){
        Text("Disclaimer").font(.title).bold().padding(.bottom, 10)
        Text("Il test utilizzato all'interno della app ScarpeRosse è stato fornito da Reama Network - Rete per l'Empowerment e l'Auto Mutuo Aiuto (Sportello Antiviolenza Online).\n\nLa app è stata sviluppata all'interno del corso Apple iOS Foundation Program, IX ed. da Castaldo A., De Rosis M., Dralova E., Tranchese T.")
            Spacer()
        }.padding(.horizontal, 20)
        
    }
}

struct DisclaimerView_Previews: PreviewProvider {
    static var previews: some View {
        DisclaimerView()
    }
}

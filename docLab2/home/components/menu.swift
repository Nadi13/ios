//
//  menu.swift
//  docLab2
//
//  Created by user225687 on 11/24/23.
//

import SwiftUI

struct menu: View {
    let menu1: menuUi
    var body: some View {
            VStack(alignment: .center, spacing: 8) {
                HStack(alignment: .top, spacing: 10) {
                
                        Image(menu1.image)
                            .frame(width: 24, height: 24)
                    
                }
                .padding(24)
                .background(Color("whiteGray"))
                .cornerRadius(100)
                
                Text(NSLocalizedString(menu1.name, comment:""))
                    .font(Fonts.pR_15)
                    .foregroundColor(Color("lightGray"))
            }
            .padding(0)
        
    }

}

struct menu_Preview: PreviewProvider {
    static var previews: some View {
        let items = [
                   menuUi(
                    name: "covid",
                    image: "covid"
                   )
               ]
        menu(menu1: items[0])
    }
}

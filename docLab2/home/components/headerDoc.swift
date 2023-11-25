//
//  headerDoc.swift
//  docLab2
//
//  Created by user225687 on 11/24/23.
//

import SwiftUI

struct headerDoc: View {
    var body: some View {
        HStack(alignment: .center) {
            VStack(alignment: .leading, spacing: 6) {
                Text(NSLocalizedString("hello", comment:""))
                    .font(Fonts.pR_16)
                  .foregroundColor(Color("lightGray"))
                Text(NSLocalizedString("welcome", comment:""))
                  .font(Fonts.pB_20)
                  .foregroundColor(Color.black)
            }
            .padding(0)
            
            Spacer()
            
            Image("frame1")
            .frame(width: 56, height: 56)
            
        }
        .padding(0)
        .frame(width: 327, alignment: .center)
        
    }

}

struct headerDoc_Previews: PreviewProvider {
    static var previews: some View {
        headerDoc()
    }
}

//
//  search.swift
//  docLab2
//
//  Created by user225687 on 11/24/23.
//

import SwiftUI

struct search: View {
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            HStack(alignment: .center, spacing: 0) {
                Image("search")
                .frame(width: 24, height: 24)
            }
            .padding(0)
            .frame(width: 24, height: 24, alignment: .center)
            
            Text(NSLocalizedString("search", comment:""))
                .font(Fonts.pR_15)
                .foregroundColor(Color("lightGray"))
        }
        .padding(16)
        .frame(width: 327, alignment: .leading)
        .background(Color("whiteGray"))
        .cornerRadius(12)
    }

}

struct search_Preview: PreviewProvider {
    static var previews: some View {
        search()
    }
}

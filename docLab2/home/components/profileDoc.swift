//
//  profileDoc.swift
//  docLab2
//
//  Created by user225687 on 11/24/23.
//

import SwiftUI

struct profileDoc: View {
    var body: some View {
        VStack(alignment: .center, spacing: 16){
            HStack(alignment: .center) {
                HStack(alignment: .center, spacing: 12) {
                    ZStack{
                        Circle()
                            .fill(Color.white)
                            .frame(width: 48, height: 48)
                        ZStack {
                            Rectangle()
                                  .frame(width: 48, height: 48)
                                  .foregroundColor(.clear)
                                  .background(
                                        Image("doctor1")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 58, height: 73)
                                        .padding(.top, 20))
                                        .mask(Circle())
                        }
                    }
                    .frame(width: 48, height: 48)
                            
                    VStack(alignment: .leading, spacing: 8){
                        Text(NSLocalizedString("doctorName1", comment:""))
                            .font(Fonts.pB_16)
                            .foregroundColor(.white)
                        Text(NSLocalizedString("role1", comment:""))
                            .font(Fonts.pR_14)
                            .foregroundColor(Color("grey"))
                    }
                    .padding(0)
                    
                        Spacer()
                }
                .padding(0)
                        
                HStack(alignment: .center, spacing: 0){
                    Image("linear")
                        .frame(width: 24, height: 24)
                }
                .padding(0)
                .frame(width: 24, height: 24, alignment: .center)
            }
            .padding(0)
            .frame(maxWidth: .infinity, alignment: .center)
                    
            Divider()
                .background(Color.white.opacity(0.15))
                    
            HStack(alignment: .top, spacing: 12) {
                HStack(alignment: .center, spacing: 8) {
                    HStack(alignment: .center, spacing: 0) {
                        Image("calendar")
                            .frame(width: 16, height: 16)
                    }
                    .padding(0)
                    .frame(width: 16, height: 16, alignment: .center)
                            
                    Text(NSLocalizedString("date", comment:""))
                        .font(Fonts.pR_12)
                        .foregroundColor(.white)
                }
                .padding(0)
                .frame(maxWidth: .infinity, alignment: .leading)
                                    
                HStack(alignment: .center, spacing: 8) {
                    HStack(alignment: .center, spacing: 0) {
                        Image("clock")
                            .frame(width: 16, height: 16)
                    }
                    .padding(0)
                    .frame(width: 16, height: 16, alignment: .center)
                                
                    Text(NSLocalizedString("time1", comment:""))
                        .font(Fonts.pR_12)
                        .foregroundColor(.white)
                }
                .padding(0)
                .frame(maxWidth: .infinity, alignment: .leading)
                        
            }
            .padding(0)
            .frame(maxWidth: .infinity, alignment: .topLeading)
                        
        }
        .padding(20)
        .frame(width: 327, alignment: .top)
        .background(Color("blue"))
        .cornerRadius(12)
        
    }
}

struct profileDoc_Previews: PreviewProvider {
    static var previews: some View {
        profileDoc()
    }
}

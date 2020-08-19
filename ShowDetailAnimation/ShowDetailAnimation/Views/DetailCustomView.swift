//
//  DetailCustomView.swift
//  ShowDetailAnimation
//
//  Created by Chitralekha Yellewar on 18/08/20.
//  Copyright © 2020 Chitralekha Yellewar. All rights reserved.
//

import SwiftUI

struct DetailCustomView: View {
    @State private var showDetail: Bool = false
    
    var body: some View {
        Button(action: {
            self.showDetail.toggle()
        }) {
            Image(systemName: "chevron.right.circle")
                .font(.system(size: 50))
                .foregroundColor(.pink)
                .rotationEffect(.degrees(showDetail ? 90 : 0))
                .scaleEffect(showDetail ? 1.5 : 1)
                .animation(.spring())
        }
    }
}

struct DetailCustomView_Previews: PreviewProvider {
    static var previews: some View {
        DetailCustomView()
    }
}

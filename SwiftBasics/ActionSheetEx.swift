//
//  ActionSheetEx.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/5/24.
//

import SwiftUI

struct ActionSheetEx: View {
    @State var showActionSheet: Bool = false
    @State var actionSheetOption: ActionSheetOptions = .isOtherPost
    
    enum ActionSheetOptions {
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                Button(action: {
                    actionSheetOption = .isMyPost
                    showActionSheet.toggle()
                }, label: {
                    Image(systemName: "ellipsis")
                })
                    .accentColor(.primary)
            }
            .padding(.horizontal)
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
            
        }
        .actionSheet(isPresented: $showActionSheet, content: getActionSheet)
    }
    
    func getActionSheet() -> ActionSheet {
        
        let shareButton: ActionSheet.Button = .default(Text("Share"), action: {
            //        add code to share post
        })

        
        let reportButton: ActionSheet.Button = .destructive(Text("Report"), action: {
//         add code to report this post
        })
        
        let deleteButton: ActionSheet.Button = .destructive(Text("Delete"), action: {
//            add code to delete this post
        })
        
        let cancelButton: ActionSheet.Button = .cancel()
        let title: String = "What would you like to do?"
        
        switch actionSheetOption {
        case .isMyPost:
            return ActionSheet(
                title: Text(title),
                message: nil,
                buttons: [shareButton, reportButton, cancelButton, deleteButton])
        case .isOtherPost:
            return ActionSheet(title: Text("What would you like to do?"), message: nil, buttons: [shareButton, reportButton, cancelButton])
        }
        
        
        
        
////        return  ActionSheet(title: Text("This is the button"))
//        let button1: ActionSheet.Button = .default(Text("Default"))
//        let button2: ActionSheet.Button = .destructive(Text("Destructive"))
//        let button3: ActionSheet.Button = .cancel()
//        return ActionSheet(
//            title: Text("This is the title"),
//            message: Text("this is the message"),
//            buttons: [button1, button2, button3])
    }
}

#Preview {
    ActionSheetEx()
}

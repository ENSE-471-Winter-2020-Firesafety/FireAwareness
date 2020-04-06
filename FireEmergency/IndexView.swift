//
//  IndexView.swift
//  FireEmergency
//
//  Created by Pasion, Timothy on 2020-03-29.
//  Copyright © 2020 Mahamed. All rights reserved.
//

import SwiftUI

struct IndexView: View {
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        VStack {
            if viewRouter.currentPage == PageEnum.ESCAPE_PAGE {
                EscapePlanGridLayout()
            } else if viewRouter.currentPage == PageEnum.PHONE_PAGE {
                PhoneCall()
                    .environmentObject(UserData())
            } else if (viewRouter.currentPage == PageEnum.SUCCESS_CALL)
            {
                PositiveFeedback();
            }
            else if (viewRouter.currentPage == PageEnum.FAIL_CALL)
            {
                NegativeFeedback();
            }
            else if (viewRouter.currentPage == PageEnum.OPERATOR_PAGE)
            {
                CallScreen();
            }
            else if (viewRouter.currentPage == PageEnum.HELPER_PAGE)
            {
                HelperAnimation();
            }
            else {
                HomePageDetail();
            }
        }
    }}

#if DEBUG
struct IndexView_Previews : PreviewProvider {
    static var previews: some View {
        IndexView().environmentObject(ViewRouter())
    }
}
#endif

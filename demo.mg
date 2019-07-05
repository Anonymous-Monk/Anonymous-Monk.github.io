/**
demo.mg
*/

class RHHeroViewController:WMPageController {
    - (void)openMainPageAction {
        self.getMessage1();
        //self.getMessage2();
    }
}


class RHLoginViewController:RHLoginBaseViewController {
    - (void)openMainPageAction {
        NSLog(@"已进入登录页面");
    }
}


import Toybox.Lang;
import Toybox.WatchUi;
import Toybox.Math;

class ComplimentOrRoastDelegate extends WatchUi.BehaviorDelegate {
    var view;

    var string2 = ["Great at ", "Horrible at ", "Fantastic at ", "Not So Good at ", "Really good at ", "Decent at ", "The Worst at ", "Mediocre at "];
    var string3 = ["Cooking.", "Skiing.", "Messing it up.", "Driving.", "Monkey C.", "Objective-C.", "Gaming", "Math", "Finnish", "Spanish", "Norwegian", "Creating", "Debugging", "English"];

    function initialize(view) {
        BehaviorDelegate.initialize();
        self.view = view;
    }

    function onMenu() as Boolean {
        WatchUi.pushView(new Rez.Menus.MainMenu(), new ComplimentOrRoastMenuDelegate(), WatchUi.SLIDE_UP);
        return true;
    }

    function onKey(keyevt as KeyEvent) as Boolean {
        var key = keyevt.getKey();

        if(key == WatchUi.KEY_ENTER) {
                var result2 = Math.rand() % string2.size();
                var result3 = Math.rand() % string3.size();
            view.introthing = "";
            view.secondarything = "You're " + string2[result2] + string3[result3];
            view.requestUpdate();

            return true;
        }

        return false;
    }
}
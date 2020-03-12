// swiftc -c LaunchPad.swift -emit-module -emit-module-path build/LaunchPad.swiftmodule -module-name LaunchPad -whole-module-optimization -parse-as-library -o build/LaunchPad.o -Xcc -ivfsoverlay -Xcc tmp/vfs-overlay.yaml -I /Rocket

import Rocket

public class LaunchPad {
  func takeOff() {
    if (get_remaining_fuel() > 100) {
      Swift.print("Ready for takeoff!")
    } else {
      Swift.print("Not enough fuel!")
    }
  }
}
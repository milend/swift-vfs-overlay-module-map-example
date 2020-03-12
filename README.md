# Swift, Module Maps & VFS Overlays: Example

For context, see [Swift, Module Maps & VFS Overlays](https://milen.me/writings/swift-module-maps-vfs-overlays-header-maps/).

Execute the following command from the root of the repo:

    swiftc -c LaunchPad.swift -emit-module -emit-module-path build/LaunchPad.swiftmodule -module-name LaunchPad -whole-module-optimization -parse-as-library -o build/LaunchPad.o -Xcc -ivfsoverlay -Xcc tmp/vfs-overlay.yaml -I /Rocket

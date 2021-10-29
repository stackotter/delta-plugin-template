// The interface function declared in this file is required for the plugin to load, so it's best to just leave this file alone

import Foundation
import DeltaCore

@_cdecl("buildPlugin")
func buildPlugin() -> UnsafeMutableRawPointer {
  return PluginBuilder(HelloWorldPlugin.self).retainedOpaquePointer
}

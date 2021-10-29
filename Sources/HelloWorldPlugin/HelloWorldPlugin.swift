import DeltaCore

struct HelloWorldPlugin: Plugin {
  public init() {
    print("Hello from HelloWorldPlugin")
  }
  
  func finishLoading() {
    print("I (HelloWorldPlugin) declare that I have finished loading")
  }
  
  func willUnload() {
    print("HelloWorldPlugin (that's me) is now getting unloaded")
  }
  
  func willJoinServer(server: ServerDescriptor, client: Client) {
    print("The client is joining '\(server.description)'")
  }
  
  public func handle(event: Event) {
    
  }
}

use godot::prelude::*;

mod test;

struct MyExtension;

#[gdextension]
unsafe impl ExtensionLibrary for MyExtension {}

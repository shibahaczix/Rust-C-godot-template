use godot::prelude::*;
use godot::engine::Sprite2D;
use godot::engine::ISprite2D;

#[derive(GodotClass)]
#[class(base=Sprite2D)]
struct Test {
}

#[godot_api]
impl ISprite2D for Test {
    fn init(base: Base<Sprite2D>) -> Self {
        godot_print!("Hello, world!"); // Prints to the Godot console
        
        Self {
        }
    }
}

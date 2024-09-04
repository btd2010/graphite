// Part of Graphite framework
// (C) Copyright 2024 Ben Daws.

// File: Types.carbon
// Authors: Ben Daws <ben@bendaws.net / github/btd2010>
// Descriptions: Custom types that are in the Roblox framework

package Types api;

class Vector3 {
    X: i32;
    Y: i32;
    Z: i32;
}

class CFrame {
    // TODO
    Position: Vector3;
}

class Color3 {
    // TODO
    fromRGB(r: i32, g: i32, b: i32) -> self,
    new(a: f32, b: f32, c: f32) -> self,
}
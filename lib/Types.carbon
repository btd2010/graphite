// Part of Graphite framework
// (C) Copyright 2024 Ben Daws.

// File: Types.carbon
// Authors: Ben Daws <ben@bendaws.net / github/btd2010>
// Descriptions: Custom types that are in the Roblox framework

package Types api;

// Vector3
// Notable use in positioning in 3D space. For 2D, see UDim2.

class Vector3 {
    // TODO: A whole ton of stuff.
    // Docs on this page: https://create.roblox.com/docs/reference/engine/datatypes/Vector3

    X: i32;
    Y: i32;
    Z: i32;

    fn new(x: f32, y: f32, z: f32) -> self;
}

fn Vector3.new(x: f32, y: f32, z: f32) -> self {
    var newVector3: Vector3 = { X = x, Y = y, Z = z, }
    return newVector3;
}

// CFrame
// Position + rotations

class CFrame {
    // TODO: Basically the whole type.
    // Docs on this page: https://create.roblox.com/docs/reference/engine/datatypes/CFrame

    Position: Vector3;
}

// Color3
// Used for Colors of roblox.

class Color3 {
    // TODO: fromHSV, etc.
    // Docs on this page: https://create.roblox.com/docs/reference/engine/datatypes/Color3

    R: i32,
    G: i32,
    B: i32,

    // Note: For methods, please name the arguments accordingly. Thanks - ben
    fn fromRGB(r: i32, g: i32, b: i32) -> self,
    fn new(r: f32, g: f32, b: f32) -> self,
}

fn Color3.fromRGB(r: f32, g: f32, b: f32) {
    return Color3.new(r / 255, g / 255, b / 255);
}

fn Color3.new(r: f32, g: f32, b: f32) -> self {
    var newColor3: Color3 = { R = r, G = g, B = b, }
    return newColor3;
}
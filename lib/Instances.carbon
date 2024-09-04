// Part of Graphite framework
// (C) Copyright 2024 Ben Daws.

// File: Instances.carbon
// Authors: Ben Daws <ben@bendaws.net / github/btd2010>
// Descriptions: Objects and methods that are in the Roblox framework

package Instances api;

import Types;

// BasePart
// just a part

class BasePart {
    Position: Types.Vector3,
    CFrame: Types.CFrame,
    Color: Types.Color3;
    Name: String;
    Parent: String; // NOTE: Parent systems work using pathnames, there is no major implementation of inheritance besides this OOP example.
}

class Model {
    Name: String;
    Parent: String;
}
# Graphite
Graphite is a framework for the Carbon language that will allow you to write valid [Luau](https://luau.org) code in Carbon. It transpiles to Roblox Luau and should work with most versions of Carbon.

```go
import Roblox;

fn Main() -> i32 {
    var Part: Roblox.Instance.Part = Roblox.Workspace:WaitForChild("Part");
    Part.Destroy(); // Roblox.Instance.Part is a class.

    // Please note: Not all Roblox instances have been remade in Carbon yet, so usage will be limited.

    Print("Destroyed some Part")

    var ReplicatedStorage: auto = Roblox.Services.ReplicatedStorage; // Service gathering

    var EventThingy: Roblox.Instance.RemoteEvent = ReplicatedStorage:WaitForChild("event");

    EventThingy.FireAllClients();
}

// Graphite is still WIP
```

## Resources
- Graphite assumes the syntax version is Carbon Nightly Release 0.0.0 (2024/09/04): https://github.com/btd2010/carbon-lang/releases/tag/0.0.0

## License
Graphite is licensed under GNU GPL 3.0.
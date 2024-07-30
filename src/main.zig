const std = @import("std");

pub fn main() !void {
    // Prints to stderr (it's a shortcut based on `std.io.getStdErr()`)
    std.debug.print("Hello {s}!", .{"World"});
    // ***** -  Here is the begining of the language feature - ******//
    // Assignment
    const i: i8 = 7;
    std.debug.print(" - first printed number {any}", .{i});

    var j: i8 = 2;
    j = @as(i8, 3); //coercion type
    // Arrays
    const m = [3]u5{ 1, 2, 3 };
    std.debug.print(" - Size Of the Array m {any}", .{m.len});

    const n = [_]i7{ 22, 3, 62, 43, 8 }; // we cant declare an array with 'var'
    std.debug.print(" - Size Of the Array n {any}", .{n.len});
    // If Expressions
    if (m.len < j) std.debug.print(" - m ({any}) est plus petite que j ({any}) ", .{ n.len, j });
    if (m.len < i) std.debug.print(" - m ({any}) est plus petite que i ({any}) ", .{ n.len, i });
    // WhileLoops
    while (j <= 5) {
        std.debug.print(" - value of j : {any}", .{j});
        j = j + 1;
    }
    // ForLoops
    for (n, 0..) |value, index| {
        std.debug.print(" - Current Value = {any} at index {any}", .{ value, index });
    }
    // Functions
    const otherWay = struct {
        fn f(x: u32) u32 {
            return x + 5;
        }
    }.f;
    std.debug.print("{}\n", .{otherWay(5)});
    // Defer
    // var data = 5;
    // for (j..i) |value| u32 {
    //     value;
    //     data = data + j;
    //     defer addFive(4);
    // };
    // Errors
    // Switch
    // Pointers
    // PointerSizedIntegers
    // ManyItemPointers
    // Slices
    // Enums
    // structs
    // Union
    // IntegerRules
    // Floats
    // labelledBlocks
    // LabelLedLoops
    // LoopsAsExpressions
    // Optionals
    // Comptime
    // PayloadCaptures
    // InlineLoops
    // Opaque
    // AnonymousStructs
    // SentinelTerminaisons
    // Vectors
    // Imports

}
// Functions
fn addFive(x: u32) u32 {
    return x + 5;
}

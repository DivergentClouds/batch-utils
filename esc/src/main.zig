const std = @import("std");

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    const allocator = gpa.allocator();
    // set up command line arguments
    const args = try std.process.argsAlloc(allocator);
    defer std.process.argsFree(allocator, args);

    const len = args.len; 

    try std.io.getStdOut().writer().print("{c}", .{27});

    var i : usize = 1;

    while (i < len) : (i += 1)
        try std.io.getStdOut().writer().print("{s}", .{args[i]});
}

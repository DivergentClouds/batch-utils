const std = @import("std");
const win = @cImport({
    @cInclude("conio.h");
});

pub fn main() !void {
    var char : std.os.windows.UINT= @intCast(u8, win._getch() & 0xff);

    if (char == 224 or char == 0) {
        char = @intCast(u8, win._getch() & 0xff);
        try std.io.getStdOut().writer().print("{x}{x}", .{224, char});
    } else {
        try std.io.getStdOut().writer().print("{x}", .{char});
    }
}

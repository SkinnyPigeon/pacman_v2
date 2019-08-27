if keyboard_check(vk_f1)
{
draw_set_alpha(0.1);
draw_set_colour(c_white);
mp_grid_draw(global.room_grid);
for (var i = 0; i < room_width; i += 16;)
    {
    draw_line_width(i, 0, i, room_height, 3);
    }
for (var j = 0; j < room_width; j += 16;)
    {
    draw_line_width(0, j, room_width, j, 3);
    }
draw_set_alpha(1);
//draw_path(global.room_grid, x, y, true);
}   
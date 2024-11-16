x = obj_frogy.x + 10;
y = obj_frogy.y - 6;

var _direc = point_direction(x, y, mouse_x, mouse_y)

image_angle = _direc;

var _intervalo = _direc == clamp(_direc, 90, 270)
shader_type canvas_item;

uniform vec3 colors[2]: source_color;
varying float value0;
varying float value1;

void vertex() {
  value0 = INSTANCE_CUSTOM.x;
  value1 = INSTANCE_CUSTOM.y;
}

void fragment() {
  if (UV.x > value0 && UV.x > value1) {
    discard;
  } else if (UV.x > value0 && UV.x <= value1) {
      COLOR = vec4(colors[1], 1.0);
  } else {
      COLOR = vec4(colors[0], 1.0);
  }
}
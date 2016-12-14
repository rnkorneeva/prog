#version 330

in vec4 point;
in vec2 tex;

out vec2 ttex;

uniform mat4 camera;

void main() {
    ttex = tex;
    gl_Position = camera * point;
}

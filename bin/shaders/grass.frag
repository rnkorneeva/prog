#version 330

in vec2 ttex;
out vec4 outColor;

uniform sampler2D Tex;

void main() {
    outColor = texture(Tex, ttex);
}

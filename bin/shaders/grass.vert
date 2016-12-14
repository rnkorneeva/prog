#version 330

in vec4 point;
in vec2 position;
in vec4 variance;
in float phi;
in float great;
in vec2 tex;

out vec2 ttex;

uniform mat4 camera;

void main() {
    ttex = tex;

    float dx = 0.001 * great;
    float dy = 0.1 * great;

    vec4 newpoint = point;
    newpoint.x *= dx;
    newpoint.y *= dy;

    newpoint = vec4(cos(phi) * newpoint.x + sin(phi) * newpoint.z, newpoint.y, -sin(phi) * newpoint.x + cos(phi) * newpoint.z, 1);

    newpoint.x += position.x;
    newpoint.z += position.y;

	gl_Position = camera * (newpoint + variance * point.y * point.y);
}

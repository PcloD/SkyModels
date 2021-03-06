// Using a fullscreen triangle for post-processing.
// https://www.saschawillems.de/?page_id=2122
// https://michaldrobot.com/2014/04/01/gcn-execution-patterns-in-full-screen-passes/

out vec2 PS_IN_TexCoord;

void main()
{
    PS_IN_TexCoord = vec2((gl_VertexID << 1) & 2, gl_VertexID & 2);
	gl_Position = vec4(PS_IN_TexCoord * 2.0f + -1.0f, 0.0f, 1.0f);
}

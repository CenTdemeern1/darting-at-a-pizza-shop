import "dart:io";

void main(List<String> arguments) {
	if (arguments.length != 3) {
		print("Usage: discord-suggested-1 {character 1} {character 2} {width}");
		exit(0);
	}
	String out = "";
	int width = int.parse(arguments[2]);
	for (var a = width; a >= 0; a--) {
		for (var i = 0; i < a; i++) {
			out+=arguments[0];
		}
		for (var i = 0; i < (width-a); i++) {
			out+=arguments[1];
		}
		out+="\n";
	}
	stdout.write(out);
}
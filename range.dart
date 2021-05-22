import "dart:io";

List<int> range(int from, [int? to, int? step]){
	step ??= 1;
	List<int> list = [];
	if (to==null) {
		List<int> rlist = new List<int>.generate((from/step).round(), (i) => i + 1);
		for (int item in rlist) {
			list.add((item*step)-step);
		}
	} else {
		List<int> rlist = new List<int>.generate(((to-from)/step).round(), (i) => i + 1);
		for (int item in rlist) {
			list.add((item*step)+from-step);
		}
	}
	return list;
}

void main(List<String> args) {
	if (args.length == 0) {
		print("Usage: range {min} {max}");
		print("Usage: range {max}");
		print("Importable dart file that can generate a number range");
		exit(0);
	}
	int from = int.parse(args[0]);
	int? to;
	if (args.length>1) {
		to = int.parse(args[1]);
	}
	print(range(from,to));
}
// About Stalin Sort
// Stalin Sort is a joke sorting algorithm that works like follows:
// Stalin Sort iterates down the list, and checks of the sorted numbers are in order.
// Any unsorted numbers are eliminated from the list, resulting in what is technically a sorted list.
// It's just missing some elements...

void main(List<String> args) {
	List<int> out = [];
	bool isFirst = true;
	for (String item in args) {
		int number = int.parse(item);
		if (isFirst) {
			isFirst = false;
			out.add(number);
		} else {
			if (number >= out.last) {
				out.add(number);
			}
		}
	}
	print(out);
}

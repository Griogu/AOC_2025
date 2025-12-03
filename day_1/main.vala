void main(string []args) {
	string []commands = args[1].split("\n");
	int start = 50;
	int counter = 0;
	int tmp = 0;

	for (size_t i = 0; commands[i] != null; i++) {
		if (commands[i][0] == 'L') {
			commands[i] = commands[i].substring(1);
			tmp = commands[i].to_int();
			start -= tmp;
			if (start == 0)
				counter++;
			while (start < 0) {
				start += 100;
				counter++;
			}
		}
		else if (commands[i][0] == 'R') {
			commands[i] = commands[i].substring(1);
			tmp = commands[i].to_int();
			start += tmp;
			if (start == 0)
				counter++;
			while (start > 99) {
				start -= 100;
				counter++;
			}
		}
	}
	print ("counter : %d\n", counter);
}

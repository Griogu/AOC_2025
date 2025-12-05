void	main (string []args) {
	string []tab = args[1].split ("\n");
	int result = 0;

	foreach (var line in tab) {
		var max = 0;
		for (int i = 0; line[i] != '\0'; i++) {
			for (int j = i + 1; line[j - 1] != '\0'; j++) {
				var tmp = @"$(line[i])$(line[j])";
				if (tmp.to_int () > max)
					max = tmp.to_int ();
			}
		}
		result += max;
	}
	print ("result : %d\n", result);
}

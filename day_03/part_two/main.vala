void	main (string []args) {
	string []tab = args[1].split ("\n");
	long last_result = 0;

	foreach (var line in tab) {
		var max = 0;
		var pos = 0;
		for (int i = 0; i <= line.length - 12; i++) {
			var tmp = @"$(line[i])";
			if (tmp.to_int () > max) {
				pos = i;
				max = tmp.to_int ();
			}
		}
		var result = @"$max";
		for (int counter = 0; counter != 11; counter++) {
			max = 0;
			for (int i = pos + 1; i <= line.length - (11 - counter); i++) {
				var tmp = @"$(line[i])";
				if (tmp.to_int () > max) {
					pos = i;
					max = tmp.to_int ();
				}
			}
			var tmp = @"$(result)$(max)";
			result = @"$tmp";
		}
		last_result += result.to_long ();
	}
	print ("last_result : %lu\n", last_result);
}

use File::Basename;
my $remove_file_delete_header = 1;
my $change_hunk_indicators    = 1;
		if ($1) {
			print $1; # Print out whatever color we're using
		}
	} elsif ($change_hunk_indicators && $line =~ /^${ansi_sequence_regex}(@@@* .+? @@@*)(.*)/) {

		my $hunk_header  = $4;
		my ($orig_offset, $orig_count, $new_offset, $new_count) = parse_hunk_header($hunk_header);
		print "@ $last_file_seen:" . ($new_offset + 3) . " \@${remain}\n";

# Courtesy of github.com/git/git/blob/ab5d01a/git-add--interactive.perl#L798-L805
sub parse_hunk_header {
    my ($line) = @_;
    my ($o_ofs, $o_cnt, $n_ofs, $n_cnt) =
        $line =~ /^@@ -(\d+)(?:,(\d+))? \+(\d+)(?:,(\d+))? @@/;
    $o_cnt = 1 unless defined $o_cnt;
    $n_cnt = 1 unless defined $n_cnt;
    return ($o_ofs, $o_cnt, $n_ofs, $n_cnt);
}


	return 1;
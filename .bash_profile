# Display current git branch
if [ -f ~/.bashrc ];
	then
		. ~/.bashrc
fi

parse_git_branch() {
	git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u@\h \[\033[93m\]\w\[\033[95m\]\$(parse_git_branch)\[\033[00m\] $ "

gh-pages:
	git worktree add gh-pages gh-pages

html:
	cd vroom && \
	vroom html && \
	git restore . && \
	cd .. && \
	cp -rp vroom/html/* gh-pages/gpw-report && \
	rm -r vroom/html

html-status:
	cd gh-pages && git status

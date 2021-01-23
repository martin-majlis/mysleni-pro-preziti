BOOK_FILE=mysleni-pro-zivot.pdf

web-publish:
	bash publish.sh fetch sync

book-pdf-generate:
	find . -name '*.md' -exec sed -ri 's/..\/.gitbook\/assets/.gitbook\/assets/g' {} \;
	pandoc --number-sections --top-level-division=chapter --toc -o ${BOOK_FILE} title.txt SUMMARY.md README.md premysleni/* koronavirus/* ockovani/* ruzne/*
	find . -name '*.md' -exec sed -ri 's/.gitbook\/assets/..\/.gitbook\/assets/g' {} \;

book-pdf-publish:
	rsync -avz ${BOOK_FILE} root@67.205.142.190:/var/www/mysleniprozivot.cz/www

BOOK_FILE=mysleni-pro-zivot.pdf

web-publish:
	publish.sh

book-pdf-generate:
	pandoc --number-sections --top-level-division=chapter --toc -o ${BOOK_FILE} title.txt SUMMARY.md README.md premysleni/* koronavirus/* ockovani/* ruzne/*

book-pdf-publish:
	rsync -avz ${BOOK_FILE} root@67.205.142.190:/var/www/mysleniprozivot.cz/www

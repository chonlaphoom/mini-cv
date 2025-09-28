TARGET	=	cv.pdf
SOURCE	=	cv.tex

.PHONY: clean

build:	
	@echo	"Starting	LaTeX	build	for $(SOURCE)..."
	@echo	"======================="
	/Library/TeX/texbin/lualatex -halt-on-error -jobname=cv $(SOURCE)
	@echo "Finished building $(TARGET)."
	@echo	"======================="


clean: build
	@echo "Cleaning up auxiliary files..."
	rm -f *.aux *.log *.out 
	@echo "Clean complete."

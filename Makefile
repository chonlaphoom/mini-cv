ifeq ($(strip $(TARGET)),)
 TARGET	=	cv
endif

ifeq ($(strip $(SOURCE)),)
 SOURCE	= cv.tex	
endif

.PHONY: clean

build:	
	@echo	"Starting	LaTeX	build	for $(SOURCE)..."
	@echo	"======================="
	lualatex -halt-on-error -jobname=$(TARGET) $(SOURCE) 
	@echo "Finished building $(TARGET)"
	@echo	"======================="


clean: build
	@echo "Cleaning up auxiliary files..."
	rm -f *.aux *.log *.out 
	@echo "Clean completed"

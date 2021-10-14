FILES = $(wildcard slides/*.md)
FILE_NAME = $(notdir $(FILES:.md=))
FOLDER = $(addprefix docs/slides/, $(FILE_NAME))
OUT = $(addsuffix /index.html,$(FOLDER))

# Pandoc conversion
docs/slides/%/index.html: slides/%.md
	pandoc -t revealjs -s -o $@ $^ --slide-level 2 --mathjax

# Folder rule
docs/slides/%/: slides/%.md
	mkdir -p $@

slides: $(FOLDER) $(OUT)

print-%  : ; @echo $* = $($*)

JL = julia --project

default: init update

init:
	$(JL) -e 'using Pkg; Pkg.instantiate(); Pkg.precompile();'

update:
	$(JL) -e 'using Pkg; Pkg.update(); Pkg.precompile();'

serve:
	$(JL) -e 'using Franklin; serve();'
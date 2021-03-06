#-----Master Makefile for orbit_mod90-------

# module based lorentz orbit tracker

INCLUDE    = ./include/
SPLINE     = ./spline/
FLUX       = ./flux/
RDEQDSK    = ./read_eqdsk/
BORIS      = ./boris_pusher/
LIMITER      = ./limiter/
PYTHON      = ./python/


#----------------------------------------------------------
# targets need to be a different names that directory names
ALL:  include_mod spline_mod flux_mod  read_eqdsk_mod limiter_module boris  python_modules

include_mod:
	cd $(INCLUDE) ; make all

spline_mod:
	cd $(SPLINE); make all

flux_mod:
	cd $(FLUX); make all

read_eqdsk_mod:
	cd $(RDEQDSK); make all

limiter_module:
	cd $(LIMITER); make all

boris:
	cd $(BORIS); make all



python_modules:
	cd $(FLUX); make -f flux.mak
	cd $(BORIS); make -f BTpy.mak
	cp $(FLUX)/*.so $(PYTHON)/.
	cp $(BORIS)/*.so $(PYTHON)/.

#----------------------------------------------------------

clean: clean_include clean_spline clean_flux clean_read_eqdsk clean_boris clean_limiter clean_python

clean_include:
	cd $(INCLUDE); make clean

clean_spline:
	cd $(SPLINE); make clean

clean_flux:
	cd $(FLUX); make clean; make -f flux.mak clean

clean_read_eqdsk:
	cd $(RDEQDSK); make clean

clean_boris:
	cd $(BORIS); make clean; make -f BTpy.mak clean

clean_limiter:
	cd $(LIMITER); make clean

clean_python:
	cd $(PYTHON); rm *.so

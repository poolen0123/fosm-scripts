all:
	gcc -c xapi.c -g3 -I${gtm_dist}
	gcc xapi.o -o xapi -g3 -L ${gtm_dist} -Wl,-rpath=${gtm_dist} -lgtmshr
	gcc -c xapid.c -g3 -I${gtm_dist}
	gcc xapid.o -o xapid -g3 -L ${gtm_dist} -Wl,-rpath=${gtm_dist} -lgtmshr


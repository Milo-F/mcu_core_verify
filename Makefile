UVM_HOME = /home/milo/Synopsys/vcs/etc/uvm-1.2

all: clean com run

com:
	$(VCS)

run:
	$(SIMV)
#	$(CHECK)
sim:
	$(SIM)
# verdi:
# 	verdi -sv -f filelist.f –ssf inter.fsdb

clean:
	rm -rf *~ csrc core simv* vc_hdrs.h ucli.key urg* *.log

UVM_VERBOSITY=UVM_LOW
N_ERRS = 0
N_FATALS = 0

VCS = vcs -cpp g++-4.8 -cc gcc-4.8 -LDFLAGS -Wl,--no-as-needed \
	-sverilog \
	+v2k \
	-full64 \
	-timescale=1ps/1ps \
	$(UVM_HOME)/src/dpi/uvm_dpi.cc -CFLAGS -DVCS \
	+incdir+$(UVM_HOME)/src $(UVM_HOME)/src/uvm.sv \
	-f filelist.f \
	-debug_all \
	-l compile.log \
	-P /home/milo/Synopsys/verdi/share/PLI/VCS/LINUX64/novas.tab \
	/home/milo/Synopsys/verdi/share/PLI/VCS/LINUX64/pli.a \
	-kdb -lca

SIM = ./simv -gui=verdi -l run.log +UVM_VERBOSITY=$(UVM_VERBOSITY) &\

SIMV = ./simv -l run.log +UVM_PHASE_TRACE +UVM_TIMEOUT="500ns, YES"
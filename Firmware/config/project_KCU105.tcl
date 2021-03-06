#
# Vivado (TM) v2015.4.2 (64-bit)
#
# project.tcl: Tcl script for re-creating project 'top'
#
# Generated by Vivado on Fri Jan 20 23:25:56 PST 2017
# IP Build 1491208 on Wed Feb 24 03:25:39 MST 2016
#
# This file contains the Vivado Tcl commands for re-creating the project to the state*
# when this script was generated. In order to re-create the project, please source this
# file in the Vivado Tcl Shell.
#
# * Note that the runs in the created project will be configured the same way as the
#   original project, however they will not be launched automatically. To regenerate the
#   run results please launch the synthesis/implementation runs as needed.
#
#*****************************************************************************************
# NOTE: In order to use this script for source control purposes, please make sure that the
#       following files are added to the source control system:-
#
# 1. This project restoration tcl script (project.tcl) that was generated.
#
# 2. The following source(s) files that were local or imported into the original project.
#    (Please see the '$orig_proj_dir' and '$origin_dir' variable setting below at the start of the script)
#
#    <none>
#
# 3. The following remote source files that were added to the original project:-
#
#*****************************************************************************************

# Set the reference directory for source file relative paths (by default the value is script directory path)
set origin_dir "."

# Use origin directory path location variable, if specified in the tcl shell
if { [info exists ::origin_dir_loc] } {
  set origin_dir $::origin_dir_loc
}

variable script_file
set script_file "project.tcl"

# Help information for this script
proc help {} {
  variable script_file
  puts "\nDescription:"
  puts "Recreate a Vivado project from this script. The created project will be"
  puts "functionally equivalent to the original project for which this script was"
  puts "generated. The script contains commands for creating a project, filesets,"
  puts "runs, adding/importing sources and setting properties on various objects.\n"
  puts "Syntax:"
  puts "$script_file"
  puts "$script_file -tclargs \[--origin_dir <path>\]"
  puts "$script_file -tclargs \[--help\]\n"
  puts "Usage:"
  puts "Name                   Description"
  puts "-------------------------------------------------------------------------"
  puts "\[--origin_dir <path>\]  Determine source file paths wrt this path. Default"
  puts "                       origin_dir path value is \".\", otherwise, the value"
  puts "                       that was set with the \"-paths_relative_to\" switch"
  puts "                       when this script was generated.\n"
  puts "\[--help\]               Print help information for this script"
  puts "-------------------------------------------------------------------------\n"
  exit 0
}

if { $::argc > 0 } {
  for {set i 0} {$i < [llength $::argc]} {incr i} {
    set option [string trim [lindex $::argv $i]]
    switch -regexp -- $option {
      "--origin_dir" { incr i; set origin_dir [lindex $::argv $i] }
      "--help"       { help }
      default {
        if { [regexp {^-} $option] } {
          puts "ERROR: Unknown option '$option' specified, please type '$script_file -tclargs --help' for usage info.\n"
          return 1
        }
      }
    }
  }
}

# Set the directory path for the original project from where this script was exported
set orig_proj_dir "[file normalize "$origin_dir/../top"]"

# Create project
create_project top ./

# Set the directory path for the new project
set proj_dir [get_property directory [current_project]]

# Set project properties
set obj [get_projects top]
set_property "board_part" "xilinx.com:kcu105:part0:1.1" $obj
set_property "corecontainer.enable" "1" $obj
set_property "default_lib" "xil_defaultlib" $obj
set_property "sim.ip.auto_export_scripts" "1" $obj
set_property "simulator_language" "Mixed" $obj
set_property "target_language" "VHDL" $obj

# Create 'sources_1' fileset (if not found)
if {[string equal [get_filesets -quiet sources_1] ""]} {
  create_fileset -srcset sources_1
}

# Set 'sources_1' fileset object
set obj [get_filesets sources_1]
set files [list \
 "[file normalize "$origin_dir/../src/gig_eth/KCU105/common/tri_mode_ethernet_mac_0_sync_block.vhd"]"\
 "[file normalize "$origin_dir/../src/gig_eth/KCU105/fifo/tri_mode_ethernet_mac_0_bram_tdp.vhd"]"\
 "[file normalize "$origin_dir/../src/gig_eth/KCU105/fifo/tri_mode_ethernet_mac_0_tx_client_fifo.vhd"]"\
 "[file normalize "$origin_dir/../src/gig_eth/KCU105/fifo/tri_mode_ethernet_mac_0_rx_client_fifo.vhd"]"\
 "[file normalize "$origin_dir/../src/gig_eth/tcp_server/com5402pkg.vhd"]"\
 "[file normalize "$origin_dir/../src/gig_eth/tcp_server/bram_dp.vhd"]"\
 "[file normalize "$origin_dir/../src/gig_eth/tcp_server/whois2.vhd"]"\
 "[file normalize "$origin_dir/../src/gig_eth/tcp_server/udp_rx.vhd"]"\
 "[file normalize "$origin_dir/../src/gig_eth/tcp_server/udp2serial.vhd"]"\
 "[file normalize "$origin_dir/../src/gig_eth/KCU105/fifo/tri_mode_ethernet_mac_0_ten_100_1g_eth_fifo.vhd"]"\
 "[file normalize "$origin_dir/../src/gig_eth/KCU105/support/tri_mode_ethernet_mac_0_support.vhd"]"\
 "[file normalize "$origin_dir/../src/gig_eth/KCU105/common/tri_mode_ethernet_mac_0_reset_sync.vhd"]"\
 "[file normalize "$origin_dir/../src/gig_eth/tcp_server/timer_4us.vhd"]"\
 "[file normalize "$origin_dir/../src/gig_eth/tcp_server/tcp_txbuf.vhd"]"\
 "[file normalize "$origin_dir/../src/gig_eth/tcp_server/tcp_tx.vhd"]"\
 "[file normalize "$origin_dir/../src/gig_eth/tcp_server/tcp_server.vhd"]"\
 "[file normalize "$origin_dir/../src/gig_eth/tcp_server/tcp_rxbufndemux2.vhd"]"\
 "[file normalize "$origin_dir/../src/gig_eth/tcp_server/serial2udp_tx.vhd"]"\
 "[file normalize "$origin_dir/../src/gig_eth/tcp_server/ping.vhd"]"\
 "[file normalize "$origin_dir/../src/gig_eth/tcp_server/packet_parsing.vhd"]"\
 "[file normalize "$origin_dir/../src/gig_eth/tcp_server/arp_cache2.vhd"]"\
 "[file normalize "$origin_dir/../src/gig_eth/tcp_server/arp.vhd"]"\
 "[file normalize "$origin_dir/../src/gig_eth/KCU105/axi_lite_sm/tri_mode_ethernet_mac_0_axi_lite_sm.vhd"]"\
 "[file normalize "$origin_dir/../src/global_resetter.vhd"]"\
 "[file normalize "$origin_dir/../src/gig_eth/KCU105/gig_eth_mac_resets.vhd"]"\
 "[file normalize "$origin_dir/../src/gig_eth/KCU105/gig_eth_mac_fifo_block.vhd"]"\
 "[file normalize "$origin_dir/../src/gig_eth/tcp_server/com5402.vhd"]"\
 "[file normalize "$origin_dir/../src/global_clock_reset.vhd"]"\
 "[file normalize "$origin_dir/../src/gig_eth/KCU105/gig_eth.vhd"]"\
 "[file normalize "$origin_dir/../src/control_interface.vhd"]"\
 "[file normalize "$origin_dir/../src/utility_pkg.vhd"]"\
 "[file normalize "$origin_dir/../src/top_KCU105.vhd"]"\
 "[file normalize "$origin_dir/../src/tickgen.vhd"]"\
 "[file normalize "$origin_dir/../src/channel_sel.vhd"]"\
 "[file normalize "$origin_dir/../src/clk_fwd.vhd"]"\
 "[file normalize "$origin_dir/../src/edge_sync.vhd"]"\
 "[file normalize "$origin_dir/../src/channel_avg.vhd"]"\
 "[file normalize "$origin_dir/../src/byte2cmd.vhd"]"\
 "[file normalize "$origin_dir/../src/uartio.vhd"]"\
 "[file normalize "$origin_dir/../src/pulse2pulse.vhd"]"\
 "[file normalize "$origin_dir/../src/clk_div.vhd"]"\
 "[file normalize "$origin_dir/../src/pulsegen.vhd"]"\
 "[file normalize "$origin_dir/../src/tm_shiftreg_rw/pulse_synchronise.v"]"\
 "[file normalize "$origin_dir/../src/tm_shiftreg_rw/Receive_Data.v"]"\
 "[file normalize "$origin_dir/../src/tm_shiftreg_rw/SR_Control.v"]"\
 "[file normalize "$origin_dir/../src/tm_shiftreg_rw/Top_SR.v"]"\
 "[file normalize "$origin_dir/../src/tm_shiftreg_rw/Clock_SR.v"]"\
 "[file normalize "$origin_dir/../src/tm_shiftreg_rw/Clock_Div.v"]"\
 "[file normalize "$origin_dir/../src/topmetal_analog_scan_diff.vhd"]"\
 "[file normalize "$origin_dir/../src/topmetal_analog_scan.vhd"]"\
 "[file normalize "$origin_dir/../src/fifo2shiftreg.vhd"]"\
 "[file normalize "$origin_dir/../src/shiftreg_drive.vhd"]"\
]
add_files -norecurse -fileset $obj $files

# Set 'sources_1' fileset file properties for remote files
set file "$origin_dir/../src/gig_eth/KCU105/common/tri_mode_ethernet_mac_0_sync_block.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "VHDL" $file_obj

set file "$origin_dir/../src/gig_eth/KCU105/fifo/tri_mode_ethernet_mac_0_bram_tdp.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "VHDL" $file_obj

set file "$origin_dir/../src/gig_eth/KCU105/fifo/tri_mode_ethernet_mac_0_tx_client_fifo.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "VHDL" $file_obj

set file "$origin_dir/../src/gig_eth/KCU105/fifo/tri_mode_ethernet_mac_0_rx_client_fifo.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "VHDL" $file_obj

set file "$origin_dir/../src/gig_eth/tcp_server/com5402pkg.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "VHDL" $file_obj

set file "$origin_dir/../src/gig_eth/tcp_server/bram_dp.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "VHDL" $file_obj

set file "$origin_dir/../src/gig_eth/tcp_server/whois2.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "VHDL" $file_obj

set file "$origin_dir/../src/gig_eth/tcp_server/udp_rx.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "VHDL" $file_obj

set file "$origin_dir/../src/gig_eth/tcp_server/udp2serial.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "VHDL" $file_obj

set file "$origin_dir/../src/gig_eth/KCU105/fifo/tri_mode_ethernet_mac_0_ten_100_1g_eth_fifo.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "VHDL" $file_obj

set file "$origin_dir/../src/gig_eth/KCU105/support/tri_mode_ethernet_mac_0_support.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "VHDL" $file_obj

set file "$origin_dir/../src/gig_eth/KCU105/common/tri_mode_ethernet_mac_0_reset_sync.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "VHDL" $file_obj

set file "$origin_dir/../src/gig_eth/tcp_server/timer_4us.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "VHDL" $file_obj

set file "$origin_dir/../src/gig_eth/tcp_server/tcp_txbuf.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "VHDL" $file_obj

set file "$origin_dir/../src/gig_eth/tcp_server/tcp_tx.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "VHDL" $file_obj

set file "$origin_dir/../src/gig_eth/tcp_server/tcp_server.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "VHDL" $file_obj

set file "$origin_dir/../src/gig_eth/tcp_server/tcp_rxbufndemux2.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "VHDL" $file_obj

set file "$origin_dir/../src/gig_eth/tcp_server/serial2udp_tx.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "VHDL" $file_obj

set file "$origin_dir/../src/gig_eth/tcp_server/ping.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "VHDL" $file_obj

set file "$origin_dir/../src/gig_eth/tcp_server/packet_parsing.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "VHDL" $file_obj

set file "$origin_dir/../src/gig_eth/tcp_server/arp_cache2.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "VHDL" $file_obj

set file "$origin_dir/../src/gig_eth/tcp_server/arp.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "VHDL" $file_obj

set file "$origin_dir/../src/gig_eth/KCU105/axi_lite_sm/tri_mode_ethernet_mac_0_axi_lite_sm.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "VHDL" $file_obj

set file "$origin_dir/../src/global_resetter.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "VHDL" $file_obj

set file "$origin_dir/../src/gig_eth/KCU105/gig_eth_mac_resets.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "VHDL" $file_obj

set file "$origin_dir/../src/gig_eth/KCU105/gig_eth_mac_fifo_block.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "VHDL" $file_obj

set file "$origin_dir/../src/gig_eth/tcp_server/com5402.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "VHDL" $file_obj

set file "$origin_dir/../src/global_clock_reset.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "VHDL" $file_obj

set file "$origin_dir/../src/gig_eth/KCU105/gig_eth.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "VHDL" $file_obj

set file "$origin_dir/../src/control_interface.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "VHDL" $file_obj

set file "$origin_dir/../src/utility_pkg.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "VHDL" $file_obj

set file "$origin_dir/../src/top_KCU105.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "VHDL" $file_obj

set file "$origin_dir/../src/tickgen.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "VHDL" $file_obj

set file "$origin_dir/../src/channel_sel.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "VHDL" $file_obj

set file "$origin_dir/../src/clk_fwd.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "VHDL" $file_obj

set file "$origin_dir/../src/edge_sync.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "VHDL" $file_obj

set file "$origin_dir/../src/channel_avg.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "VHDL" $file_obj

set file "$origin_dir/../src/byte2cmd.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "VHDL" $file_obj

set file "$origin_dir/../src/uartio.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "VHDL" $file_obj

set file "$origin_dir/../src/pulse2pulse.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "VHDL" $file_obj

set file "$origin_dir/../src/clk_div.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "VHDL" $file_obj

set file "$origin_dir/../src/pulsegen.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "VHDL" $file_obj

set file "$origin_dir/../src/tm_shiftreg_rw/pulse_synchronise.v"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "Verilog" $file_obj

# Set 'sources_1' fileset file properties for local files
# None

# Set 'sources_1' fileset properties
set obj [get_filesets sources_1]
set_property "top" "top" $obj

# Set 'sources_1' fileset object
set obj [get_filesets sources_1]
set files [list \
 "[file normalize "$origin_dir/../ipcore_dir/KCU105/tri_mode_ethernet_mac_0/tri_mode_ethernet_mac_0.xci"]"\
]
add_files -norecurse -fileset $obj $files

# Set 'sources_1' fileset file properties for remote files
# None

# Set 'sources_1' fileset file properties for local files
# None

# Set 'sources_1' fileset object
set obj [get_filesets sources_1]
set files [list \
 "[file normalize "$origin_dir/../ipcore_dir/KCU105/fifo16to32/fifo16to32.xci"]"\
]
add_files -norecurse -fileset $obj $files

# Set 'sources_1' fileset file properties for remote files
# None

# Set 'sources_1' fileset file properties for local files
# None

# Set 'sources_1' fileset object
set obj [get_filesets sources_1]
set files [list \
 "[file normalize "$origin_dir/../ipcore_dir/KCU105/fifo32to8/fifo32to8.xci"]"\
]
add_files -norecurse -fileset $obj $files

# Set 'sources_1' fileset file properties for remote files
# None

# Set 'sources_1' fileset file properties for local files
# None

# Set 'sources_1' fileset object
set obj [get_filesets sources_1]
set files [list \
 "[file normalize "$origin_dir/../ipcore_dir/KCU105/fifo8to32/fifo8to32.xci"]"\
]
add_files -norecurse -fileset $obj $files

# Set 'sources_1' fileset file properties for remote files
# None

# Set 'sources_1' fileset file properties for local files
# None

# Set 'sources_1' fileset object
set obj [get_filesets sources_1]
set files [list \
 "[file normalize "$origin_dir/../ipcore_dir/KCU105/clockwiz/clockwiz.xci"]"\
]
add_files -norecurse -fileset $obj $files

# Set 'sources_1' fileset file properties for remote files
# None

# Set 'sources_1' fileset file properties for local files
# None

# Set 'sources_1' fileset object
set obj [get_filesets sources_1]
set files [list \
 "[file normalize "$origin_dir/../ipcore_dir/KCU105/gig_ethernet_pcs_pma_0/gig_ethernet_pcs_pma_0.xci"]"\
]
add_files -norecurse -fileset $obj $files

# Set 'sources_1' fileset file properties for remote files
# None

# Set 'sources_1' fileset file properties for local files
# None

# Set 'sources_1' fileset object
set obj [get_filesets sources_1]
set files [list \
 "[file normalize "$origin_dir/../ipcore_dir/KCU105/fifo36x512/fifo36x512.xci"]"\
]
add_files -norecurse -fileset $obj $files

# Set 'sources_1' fileset file properties for remote files
# None

# Set 'sources_1' fileset file properties for local files
# None

# Set 'sources_1' fileset object
set obj [get_filesets sources_1]
set files [list \
 "[file normalize "$origin_dir/../ipcore_dir/KCU105/bram_sdp_w32r4/bram_sdp_w32r4.xci"]"\
]
add_files -norecurse -fileset $obj $files

# Set 'sources_1' fileset file properties for remote files
# None

# Set 'sources_1' fileset file properties for local files
# None

# Create 'constrs_1' fileset (if not found)
if {[string equal [get_filesets -quiet constrs_1] ""]} {
  create_fileset -constrset constrs_1
}

# Set 'constrs_1' fileset object
set obj [get_filesets constrs_1]

# Add/Import constrs file and set constrs file properties
set file "[file normalize "$origin_dir/../src/top_KCU105.xdc"]"
set file_added [add_files -norecurse -fileset $obj $file]
set file "$origin_dir/../src/top_KCU105.xdc"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets constrs_1] [list "*$file"]]
set_property "file_type" "XDC" $file_obj

# Add/Import constrs file and set constrs file properties
set file "[file normalize "$origin_dir/../src/FMC_KCU105.xdc"]"
set file_added [add_files -norecurse -fileset $obj $file]
set file "$origin_dir/../src/FMC_KCU105.xdc"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets constrs_1] [list "*$file"]]
set_property "file_type" "XDC" $file_obj

# Set 'constrs_1' fileset properties
set obj [get_filesets constrs_1]
set_property "target_constrs_file" "[file normalize "$origin_dir/../src/top_KCU105.xdc"]" $obj

# Create 'sim_1' fileset (if not found)
if {[string equal [get_filesets -quiet sim_1] ""]} {
  create_fileset -simset sim_1
}

# Set 'sim_1' fileset object
set obj [get_filesets sim_1]
# Empty (no sources present)

# Set 'sim_1' fileset properties
set obj [get_filesets sim_1]
set_property "top" "top" $obj
set_property "xelab.nosort" "1" $obj
set_property "xelab.unifast" "" $obj

# Create 'synth_1' run (if not found)
if {[string equal [get_runs -quiet synth_1] ""]} {
  create_run -name synth_1 -part xcku040-ffva1156-2-e -flow {Vivado Synthesis 2015} -strategy "Vivado Synthesis Defaults" -constrset constrs_1
} else {
  set_property strategy "Vivado Synthesis Defaults" [get_runs synth_1]
  set_property flow "Vivado Synthesis 2015" [get_runs synth_1]
}
set obj [get_runs synth_1]

# set the current synth run
current_run -synthesis [get_runs synth_1]

# Create 'impl_1' run (if not found)
if {[string equal [get_runs -quiet impl_1] ""]} {
  create_run -name impl_1 -part xcku040-ffva1156-2-e -flow {Vivado Implementation 2015} -strategy "Vivado Implementation Defaults" -constrset constrs_1 -parent_run synth_1
} else {
  set_property strategy "Vivado Implementation Defaults" [get_runs impl_1]
  set_property flow "Vivado Implementation 2015" [get_runs impl_1]
}
set obj [get_runs impl_1]
set_property "steps.write_bitstream.args.readback_file" "0" $obj
set_property "steps.write_bitstream.args.verbose" "0" $obj

# set the current impl run
current_run -implementation [get_runs impl_1]

puts "INFO: Project created:top"

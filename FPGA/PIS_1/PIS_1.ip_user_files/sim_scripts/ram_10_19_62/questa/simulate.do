onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib ram_10_19_62_opt

do {wave.do}

view wave
view structure
view signals

do {ram_10_19_62.udo}

run -all

quit -force

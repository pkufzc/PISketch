onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib ram_65_16_opt

do {wave.do}

view wave
view structure
view signals

do {ram_65_16.udo}

run -all

quit -force

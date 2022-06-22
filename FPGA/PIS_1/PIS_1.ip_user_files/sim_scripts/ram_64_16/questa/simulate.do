onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib ram_64_16_opt

do {wave.do}

view wave
view structure
view signals

do {ram_64_16.udo}

run -all

quit -force

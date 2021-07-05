puts "Enter the USB capacity in GB: "
gb = gets.chomp().to_i
mb = 820
usbMb = gb * 1024
f = (usbMb / mb).floor
puts ("Your USB have a memory for " + f.to_s + " files")

# Name: Tuan Huynh

print "Enter a Sub-total: "

sub_total = gets.to_f
GST_RATE = 0.05
PST_RATE = 0.07


def calculate_after_tax_value(value)
  gst_tax = (value * GST_RATE)
  pst_tax = (value * PST_RATE)
  grand_total = value + pst_tax + gst_tax

  # Subtotal: $5.00
  # PST: $0.35 - 7%
  # GST: $0.25 - 5%
  # Grand Total: $5.60

  puts "Subtotal: $#{format '%.2f',value}"
  puts "PST: $#{format '%.2f', pst_tax} - #{format '%.0f', (PST_RATE * 100)}%"
  puts "GST: $#{format '%.2f', gst_tax} - #{format '%.0f', (GST_RATE * 100)}%"
  puts "Grand Total: $#{format '%.2f',grand_total}"

  if grand_total <= 5
    puts "Pocket Change"
  elsif grand_total > 5 && grand_total < 20
    puts "Wallet Time"
  else
    puts "Charge It!"
  end
end


calculate_after_tax_value(sub_total)
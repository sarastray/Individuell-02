use context essentials2021
include shared-gdrive(
  "dcic-2021",
  "1wyQZj_L0qqV9Ekgr9au6RX2iqt2Ga8Ep")

include gdrive-sheets
include data-source
ssid = "1RYN0i4Zx_UETVuYacgaGfnFcv4l9zd9toQTTdkQkj7g"

#a
Energiforbrukstabellen = 
  load-table: komponent, energi
  source: load-spreadsheet(ssid).sheet-by-name("kWh", true)
    sanitize energi using string-sanitizer
end

Energiforbrukstabellen

#b
fun energi-to-number(s :: String) ->
  Number:
  cases(Option) string-to-number(s):
    | some(a) => a
    | none=> 0
  end
where:
  energi-to-number("") is 0
  energi-to-number("30") is 30
  energi-to-number("37") is 37
  energi-to-number("5") is 5
  energi-to-number("4") is 4
  energi-to-number("15") is 15
  energi-to-number("48") is 48
  energi-to-number("12") is 12
  energi-to-number("4") is 4
end

#c
ny-tabell = transform-column(Energiforbrukstabellen, "energi", energi-to-number)

fun sum-on-energi():
  t = transform-column(Energiforbrukstabellen, "energi", energi-to-number)

  sum(t, "energi")

end

ny-tabell

#d
distanse-reist-per-dag = 23 
distanse-per-enhet-drivstoff =  17 
energi-per-enhet-drivstoff = 12

energi-per-dag = (distanse-reist-per-dag / distanse-per-enhet-drivstoff) * energi-per-enhet-drivstoff

energi-per-dag


fun add-bil(value :: Number) -> Number:
  if value == 0: energi-per-dag 
  else: value 
end 
end

t2 = transform-column(ny-tabell, "energi", add-bil)

t2

#e

bar-chart(t2, "komponent", "energi")





    
  
  

  
  
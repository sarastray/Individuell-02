use context essentials2021
fun nordic-flag(country) :
  if (country == "norway"):
frame(
      overlay-align("left", "top", square(60, "solid", "crimson"), 
        overlay-align("left", "bottom", square(60, "solid", "crimson"),
          overlay-align("right", "top", rectangle(120, 60, "solid", "crimson"),
            overlay-align("right", "bottom", rectangle(120, 60, "solid", "crimson"),
          overlay-align("left", "top", square(70, "solid", "white"),
            overlay-align("left","bottom", square(70, "solid", "white"),
              overlay-align("right", "top", rectangle(130, 70, "solid", "white"),
                overlay-align("right", "bottom", rectangle(130, 70, "solid", "white"),
                      rectangle(220, 160, "solid", "dark-blue"))))))))))
    
  else if (country == "sweden"):
    frame(
      overlay-align("left", "top", rectangle(50, 40, "solid", "medium-blue"), 
        overlay-align("left", "bottom", rectangle(50, 40, "solid", "medium-blue"),
          overlay-align("right", "top", rectangle(90, 40, "solid", "medium-blue"),
            overlay-align("right", "bottom", rectangle(90, 40, "solid", "medium-blue"),
              rectangle(160, 100, "solid", "yellow"))))))
    
  else if (country == "denmark"):
        frame(
      overlay-align("left", "top", square(120, "solid", "red"), 
        overlay-align("left", "bottom", square(120, "solid", "red"),
          overlay-align("right", "top", rectangle(210, 120, "solid", "red"),
            overlay-align("right", "bottom", rectangle(210, 120, "solid", "red"),
              rectangle(370, 280, "solid", "white"))))))
    
  else if (country == "finland"):
           frame(
      overlay-align("left", "top", rectangle(50, 40, "solid", "white"), 
        overlay-align("left", "bottom", rectangle(50, 40, "solid", "white"),
          overlay-align("right", "top", rectangle(100, 40, "solid", "white"),
            overlay-align("right", "bottom", rectangle(100, 40, "solid", "white"),
              rectangle(180, 110, "solid", "midnight-blue")))))) 
    
  else if (country == "iceland"):
  frame(
      overlay-align("left", "top", square(70, "solid", "royal-blue"), 
        overlay-align("left", "bottom", square(70, "solid", "royal-blue"),
          overlay-align("right", "top", rectangle(140, 70, "solid", "royal-blue"),
            overlay-align("right", "bottom", rectangle(140, 70, "solid", "royal-blue"),
              overlay-align("left", "top", square(80, "solid", "white"),
                overlay-align("left","bottom", square(80, "solid", "white"),
                  overlay-align("right", "top", rectangle(150, 80, "solid", "white"),
                    overlay-align("right", "bottom", rectangle(150, 80, "solid", "white"),
                      rectangle(250, 180, "solid", "crimson"))))))))))
    
  else if (country == "faraoe-island"):
    frame(
      overlay-align("left", "top", square(60, "solid", "white"), 
        overlay-align("left", "bottom", square(60, "solid", "white"),
          overlay-align("right", "top", rectangle(120, 60, "solid", "white"),
            overlay-align("right", "bottom", rectangle(120, 60, "solid", "white"),
              overlay-align("left", "top", square(70, "solid", "royal-blue"),
                overlay-align("left","bottom", square(70, "solid", "royal-blue"),
                  overlay-align("right", "top", rectangle(130, 70, "solid", "royal-blue"),
                    overlay-align("right", "bottom", rectangle(130, 70, "solid", "royal-blue"),
                      rectangle(220, 160, "solid", "red"))))))))))
    
end
end
    
nordic-flag("norway")
nordic-flag("sweden")
nordic-flag("denmark")
nordic-flag("finland")
nordic-flag("iceland")
nordic-flag("faraoe-island")



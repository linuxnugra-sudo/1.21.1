#delete light and marker 

execute if block ~ ~ ~ light[waterlogged=true] run fill ~ ~ ~ ~ ~ ~ water replace light
execute if block ~ ~ ~ light[waterlogged=false] run fill ~ ~ ~ ~ ~ ~ air replace light
function dt:kill

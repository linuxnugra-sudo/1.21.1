tp @s ~ ~-.2 ~
execute if predicate items:is_override unless block ~ ~1.1 ~ #items:pass_through run function items:realistic/stop_descend/override
execute unless predicate items:is_override unless block ~ ~1.65 ~ #items:pass_through run function items:realistic/stop_descend/standard
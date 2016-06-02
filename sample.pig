log = load '/input/sample.log' as (line:chararray)
LEVELS = foreach log generate REGEX_EXTRACT($0, '(TRACE|DEBUG|INFO|WARN|ERROR|FATAL)', 1) as LOGLEVEL;
FILTERDLEVELS = FILTER LEVELS by LOGLEVEL is not null;
dump FILTERDLEVELS


%{
#include <stdio.h>
#include "example6.tab.h"
%}
%%
[0-9]+                  return NUMBER;
heat                    return TOKHEAT;
on|off                  return STATE;
set                     return TOKSET;
temperature             return TOKTEMPERATURE;
humidity		return TOKHUMIDITY;
\n                      /* ignore end of line */;
[ \t]+                  /* ignore whitespace */;
%%


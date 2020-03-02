MEMORY
{
  RAM : ORIGIN = 0x40000000, LENGTH = 16M
  FLASH : ORIGIN = 0x20500000, LENGTH = 16M
  MEMLCD: ORIGIN = 0xB0000000, LENGTH = 32k
  AUDIO:  ORIGIN = 0xE0000000, LENGTH = 4
}

REGION_ALIAS("REGION_TEXT", FLASH);
REGION_ALIAS("REGION_RODATA", FLASH);
REGION_ALIAS("REGION_DATA", RAM);
REGION_ALIAS("REGION_BSS", RAM);
REGION_ALIAS("REGION_HEAP", RAM);
REGION_ALIAS("REGION_STACK", RAM);

_lcdfb = ORIGIN(MEMLCD);
_heap_size = LENGTH(RAM) - 1M;
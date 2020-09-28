#include <stdio.h>

main(int argc, char *argv[])
{
  int i;
  unsigned char u;
  for (i = 0, u = 0; i < 260; i++) {
    printf("%d\n", u++);
  }
}

#!/usr/bin/bash

currentTime=$(date)

CONTENT="
/*
  * author: Adam Soliev
  * created: $currentTime
*/

#include <bits/stdc++.h>
using namespace std;

void run_case() {

  // return 0;
}

int main() {
  ios_base::sync_with_stdio(false);
  cin.tie(NULL);

  int tests;
  cin >> tests;

  while (tests-- > 0)
    run_case();

  return 0;
}
"

echo "$CONTENT" > $1
vim $1


#include<iostream>
#include<dlfcn.h>
#include<emscripten.h>
#include<emscripten/bind.h>

using namespace std;

extern "C" double cubeRoot(int x);

double cubeRoot(int x) {
    double cube, precision = 0.000001;

    if(x < 0) {
        x = x * -1;
    }

    for(cube=1; x >= cube*cube*cube; cube++);

    for(--cube; (cube*cube*cube) < x; cube += precision);

    cout << cube << endl;

    return cube;
}

EMSCRIPTEN_BINDINGS(dynamic_module) {
    emscripten::function("cubeRoot", &cubeRoot);
}

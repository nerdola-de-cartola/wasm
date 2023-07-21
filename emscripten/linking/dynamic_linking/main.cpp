#include<iostream>
#include<dlfcn.h>
#include<emscripten.h>
#include<emscripten/bind.h>

using namespace std;

typedef double (*cube_function)(int);

double dynamicCubeRoot(int number) {
    const char* error;
    void *handle = dlopen("cube_root.wasm", RTLD_NOW);  //loading webassembly at runtime
    if(!handle) {
        cout << "Failed to load webassembly" << dlerror() << endl;
        return 0;
    }
    dlerror();
    
    cube_function cube = (cube_function)dlsym(handle, "cuberoot");  //loading cuberoot symbol

    if((error = dlerror())) {
         cout << "Failed to load symbol" << error << endl;
         dlclose(handle);
        return 0; 
    }
    
    double data =  cube(number);
    
    dlclose(handle);
    return data;
}

EMSCRIPTEN_BINDINGS(dynamic_module) {
    emscripten::function("dynamicCubeRoot", &dynamicCubeRoot);
}
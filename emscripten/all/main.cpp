// C++ program to demonstrate
// multithreading using three
// different callables.
#include <iostream>
#include <thread>
#include <chrono>
#include <SDL/SDL.h>
#include <future>
#include <emscripten.h>
#include<emscripten/bind.h>
#include <fstream>

using namespace std;

promise<void> SIGNAL_EXIT; //create promise object

void wait(int seconds) {
   this_thread::sleep_for(chrono::seconds(seconds));
}

void renderSquare() {
   SDL_Init(SDL_INIT_VIDEO);
   SDL_Surface *screen = SDL_SetVideoMode(256, 256, 32, SDL_SWSURFACE);

   if (SDL_MUSTLOCK(screen))
      SDL_LockSurface(screen);

   for (int i = 0; i < 256; i++)
   {
      for (int j = 0; j < 256; j++)
      {
         int alpha = (i + j) % 255;
         int rRed = rand();
         int rGreen = rand();
         int rBlue = rand();

         *((Uint32 *)screen->pixels + i * 256 + j) = SDL_MapRGBA(screen->format, rRed, rGreen, rBlue, alpha);
      }
   }
   printf("End calc square\n");

   if (SDL_MUSTLOCK(screen))
      SDL_UnlockSurface(screen);

   SDL_Flip(screen);

   SDL_Quit();
}

void threadFunction(future<void> future){
   cout << "Starting the thread" << endl;
   int i = 0;

   while (future.wait_for(chrono::milliseconds(1)) == future_status::timeout){
      cout << "Executing the thread..... " << i << endl;
      this_thread::sleep_for(chrono::milliseconds(500)); //wait for 500 milliseconds
      i++;
   }

   cout << "Thread Terminated" << endl;
}

void asyncPrint() {
   future<void> future = SIGNAL_EXIT.get_future();//create future objects

   thread my_thread(&threadFunction, std::move(future)); //start thread, and move future

   my_thread.join(); //join the thread with the main thread
}

extern "C" void endAsyncPrint();

void endAsyncPrint() {
   SIGNAL_EXIT.set_value(); //set value into promise
}

EMSCRIPTEN_BINDINGS(dynamic_module) {
    emscripten::function("endAsyncPrint", &endAsyncPrint);
}

void printFile() {
   fstream file;
   file.open("file.txt", ios::in)   ;

   if (!file) {
      cout << "Cannot open file" << endl;
      exit(1);
   }

   string str;
   while (!file.eof()) {
      getline(file, str);
      cout << str << endl;
   }

   file.close();
}

int main()
{
   srand((unsigned) time(NULL));

   thread asyncRenderSquare(renderSquare);
   thread asyncPrintThread(asyncPrint);
   thread asyncPrintFile(printFile);

   asyncRenderSquare.join();
   asyncPrintThread.join();
   asyncPrintFile.join();

   return 0;
}
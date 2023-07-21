#include <iostream>
#include <thread>
#include <chrono>
#include <future>

using namespace std;

void wait(int seconds) {
   this_thread::sleep_for(chrono::seconds(seconds));
}

void threadFunction(future<void> future) {
   cout << "Starting the thread" << endl;

   while (future.wait_for(chrono::milliseconds(1)) == future_status::timeout){
      cout << "Executing the thread... " << endl;
      this_thread::sleep_for(chrono::milliseconds(500)); //wait for 500 milliseconds
   }

   cout << "Thread Terminated" << endl;
}

int main() {
   promise<void> signal_exit; //create promise object
   future<void> future = signal_exit.get_future();//create future objects

   thread my_thread(&threadFunction, std::move(future)); //start thread, and move future

   wait(5);

   signal_exit.set_value(); //set value into promise
   my_thread.join(); //join the thread with the main thread

   return 0;
}
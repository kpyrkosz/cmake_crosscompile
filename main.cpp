#include <thread>

int main()
{
	std::thread([](){puts("Hello from thread");}).join();
	puts("Hello from main");
	return 0;
}

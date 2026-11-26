#include <SDL3/SDL.h>
#include <SDL3/SDL_events.h>
#include <SDL3/SDL_video.h>

auto main(int argc, char const* const argv[]) -> int {
  SDL_Window* window;
  bool done{};

  SDL_Init(SDL_INIT_VIDEO);

  window = SDL_CreateWindow("A SDL3 window", 640, 480, SDL_WINDOW_VULKAN);
  if (!window) {
    SDL_LogError(SDL_LOG_CATEGORY_ERROR, "Could not create window: %s\n", SDL_GetError());
    return 1;
  }

  while (!done) {
    SDL_Event event;
    while (SDL_PollEvent(&event)) {
      if (event.type == SDL_EVENT_QUIT) {
        done = true;
      }
    }
  }
  SDL_DestroyWindow(window);
  SDL_Quit();
}

#include "my_application.h"

#include <cstdlib>
#include <cstring>

int main(int argc, char** argv) {
  const char* forced_backend = std::getenv("GDK_BACKEND");
  const char* wayland_display = std::getenv("WAYLAND_DISPLAY");
  if (forced_backend != nullptr && wayland_display != nullptr &&
      std::strcmp(forced_backend, "x11") == 0) {
    unsetenv("GDK_BACKEND");
  }

  g_autoptr(MyApplication) app = my_application_new();
  return g_application_run(G_APPLICATION(app), argc, argv);
}

#include <iostream>
#include "llvm/Support/FormatVariadic.h"

int main() {
    std::cout << llvm::formatv("Hello {0}", "llvm!").str() << std::endl;
    return 0;
}

#pragma once

#include "sshash/external/gz/zip_stream.hpp"
#include "sshash/external/gz/zip_stream.cpp"

#include "essentials.hpp"

namespace bench {

using timer_type = essentials::timer<std::chrono::high_resolution_clock, std::chrono::nanoseconds>;

void random_kmer(char* kmer, uint64_t k) {
    for (uint64_t i = 0; i != k; ++i) kmer[i] = "ACGT"[rand() % 4];
}

}  // namespace bench
#!/bin/bash

results_filename_prefix=$1

cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_COMPILER=/usr/bin/g++ -DUSE_MAX_KMER_LENGTH_63=Off
make -j

/usr/bin/time -v -a -o $results_filename_prefix.k31.build.time.log ./sshash build -i /mnt/hd2/pibiri/DNA/eulertigs/cod.k31.eulertigs.fa.gz -k 31 -m 20 -g 16 -t 64 --verbose -d /mnt/hd2/pibiri/DNA/tmp_dir -o /mnt/hd2/pibiri/DNA/sshash-indexes/cod.k31.canon.sshash --canonical
/usr/bin/time -v -a -o $results_filename_prefix.k31.build.time.log ./sshash build -i /mnt/hd2/pibiri/DNA/eulertigs/kestrel.k31.eulertigs.fa.gz -k 31 -m 20 -g 16 -t 64 --verbose -d /mnt/hd2/pibiri/DNA/tmp_dir -o /mnt/hd2/pibiri/DNA/sshash-indexes/kestrel.k31.canon.sshash --canonical
/usr/bin/time -v -a -o $results_filename_prefix.k31.build.time.log ./sshash build -i /mnt/hd2/pibiri/DNA/eulertigs/human.k31.eulertigs.fa.gz -k 31 -m 21 -g 16 -t 64 --verbose -d /mnt/hd2/pibiri/DNA/tmp_dir -o /mnt/hd2/pibiri/DNA/sshash-indexes/human.k31.canon.sshash --canonical
/usr/bin/time -v -a -o $results_filename_prefix.k31.build.time.log ./sshash build -i /mnt/hd2/pibiri/DNA/eulertigs/ncbi-virus.k31.eulertigs.fa.gz -k 31 -m 19 -g 16 -t 64 --verbose -d /mnt/hd2/pibiri/DNA/tmp_dir -o /mnt/hd2/pibiri/DNA/sshash-indexes/ncbi-virus.k31.canon.sshash --canonical
/usr/bin/time -v -a -o $results_filename_prefix.k31.build.time.log ./sshash build -i /mnt/hd2/pibiri/DNA/eulertigs/se.k31.eulertigs.fa.gz -k 31 -m 21 -g 16 -t 64 --verbose -d /mnt/hd2/pibiri/DNA/tmp_dir -o /mnt/hd2/pibiri/DNA/sshash-indexes/se.k31.canon.sshash --canonical
/usr/bin/time -v -a -o $results_filename_prefix.k31.build.time.log ./sshash build -i /mnt/hd2/pibiri/DNA/eulertigs/hprc.k31.eulertigs.fa.gz -k 31 -m 21 -g 16 -t 64 --verbose -d /mnt/hd2/pibiri/DNA/tmp_dir -o /mnt/hd2/pibiri/DNA/sshash-indexes/hprc.k31.canon.sshash --canonical

cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_COMPILER=/usr/bin/g++ -DUSE_MAX_KMER_LENGTH_63=On
make -j

/usr/bin/time -v -a -o $results_filename_prefix.k63.build.time.log ./sshash build -i /mnt/hd2/pibiri/DNA/eulertigs/cod.k63.eulertigs.fa.gz -k 63 -m 24 -g 16 -t 64 --verbose -d /mnt/hd2/pibiri/DNA/tmp_dir -o /mnt/hd2/pibiri/DNA/sshash-indexes/cod.k63.canon.sshash --canonical
/usr/bin/time -v -a -o $results_filename_prefix.k63.build.time.log ./sshash build -i /mnt/hd2/pibiri/DNA/eulertigs/kestrel.k63.eulertigs.fa.gz -k 63 -m 24 -g 16 -t 64 --verbose -d /mnt/hd2/pibiri/DNA/tmp_dir -o /mnt/hd2/pibiri/DNA/sshash-indexes/kestrel.k63.canon.sshash --canonical
/usr/bin/time -v -a -o $results_filename_prefix.k63.build.time.log ./sshash build -i /mnt/hd2/pibiri/DNA/eulertigs/human.k63.eulertigs.fa.gz -k 63 -m 25 -g 16 -t 64 --verbose -d /mnt/hd2/pibiri/DNA/tmp_dir -o /mnt/hd2/pibiri/DNA/sshash-indexes/human.k63.canon.sshash --canonical
/usr/bin/time -v -a -o $results_filename_prefix.k63.build.time.log ./sshash build -i /mnt/hd2/pibiri/DNA/eulertigs/ncbi-virus.k63.eulertigs.fa.gz -k 63 -m 23 -g 16 -t 64 --verbose -d /mnt/hd2/pibiri/DNA/tmp_dir -o /mnt/hd2/pibiri/DNA/sshash-indexes/ncbi-virus.k63.canon.sshash --canonical
/usr/bin/time -v -a -o $results_filename_prefix.k63.build.time.log ./sshash build -i /mnt/hd2/pibiri/DNA/eulertigs/se.k63.eulertigs.fa.gz -k 63 -m 31 -g 16 -t 64 --verbose -d /mnt/hd2/pibiri/DNA/tmp_dir -o /mnt/hd2/pibiri/DNA/sshash-indexes/se.k63.canon.sshash --canonical
/usr/bin/time -v -a -o $results_filename_prefix.k63.build.time.log ./sshash build -i /mnt/hd2/pibiri/DNA/eulertigs/hprc.k63.eulertigs.fa.gz -k 63 -m 31 -g 16 -t 64 --verbose -d /mnt/hd2/pibiri/DNA/tmp_dir -o /mnt/hd2/pibiri/DNA/sshash-indexes/hprc.k63.canon.sshash --canonical

cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_COMPILER=/usr/bin/g++ -DUSE_MAX_KMER_LENGTH_63=Off
make -j

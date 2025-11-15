#!/bin/bash

results_filename_prefix=$1

cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_COMPILER=/usr/bin/g++ -DUSE_MAX_KMER_LENGTH_63=Off
make -j

/usr/bin/time -v -a -o $results_filename_prefix.k31.build.time.log ./sbwt_build/bin/sbwt build -i /mnt/hd2/pibiri/DNA/eulertigs/cod.k31.eulertigs.fa.gz -k 31 -m 16 -t 64 -d /mnt/hd2/pibiri/DNA/tmp_dir/ --verbose -o /mnt/hd2/pibiri/DNA/sbwt-indexes/cod.k31.sbwt
/usr/bin/time -v -a -o $results_filename_prefix.k31.build.time.log ./sbwt_build/bin/sbwt build -i /mnt/hd2/pibiri/DNA/eulertigs/cod.k31.eulertigs.fa.gz -k 31 -m 16 -t 64 -d /mnt/hd2/pibiri/DNA/tmp_dir/ --add-reverse-complements --verbose -o /mnt/hd2/pibiri/DNA/sbwt-indexes/cod.k31.rc.sbwt

/usr/bin/time -v -a -o $results_filename_prefix.k31.build.time.log ./sbwt_build/bin/sbwt build -i /mnt/hd2/pibiri/DNA/eulertigs/kestrel.k31.eulertigs.fa.gz -k 31 -m 16 -t 64 -d /mnt/hd2/pibiri/DNA/tmp_dir/ --verbose -o /mnt/hd2/pibiri/DNA/sbwt-indexes/kestrel.k31.sbwt
/usr/bin/time -v -a -o $results_filename_prefix.k31.build.time.log ./sbwt_build/bin/sbwt build -i /mnt/hd2/pibiri/DNA/eulertigs/kestrel.k31.eulertigs.fa.gz -k 31 -m 16 -t 64 -d /mnt/hd2/pibiri/DNA/tmp_dir/ --add-reverse-complements --verbose -o /mnt/hd2/pibiri/DNA/sbwt-indexes/kestrel.k31.rc.sbwt

/usr/bin/time -v -a -o $results_filename_prefix.k31.build.time.log ./sbwt_build/bin/sbwt build -i /mnt/hd2/pibiri/DNA/eulertigs/human.k31.eulertigs.fa.gz -k 31 -m 16 -t 64 -d /mnt/hd2/pibiri/DNA/tmp_dir/ --verbose -o /mnt/hd2/pibiri/DNA/sbwt-indexes/human.k31.sbwt
/usr/bin/time -v -a -o $results_filename_prefix.k31.build.time.log ./sbwt_build/bin/sbwt build -i /mnt/hd2/pibiri/DNA/eulertigs/human.k31.eulertigs.fa.gz -k 31 -m 16 -t 64 -d /mnt/hd2/pibiri/DNA/tmp_dir/ --add-reverse-complements --verbose -o /mnt/hd2/pibiri/DNA/sbwt-indexes/human.k31.rc.sbwt

/usr/bin/time -v -a -o $results_filename_prefix.k31.build.time.log ./sbwt_build/bin/sbwt build -i /mnt/hd2/pibiri/DNA/eulertigs/ncbi-virus.k31.eulertigs.fa.gz -k 31 -m 16 -t 64 -d /mnt/hd2/pibiri/DNA/tmp_dir/ --verbose -o /mnt/hd2/pibiri/DNA/sbwt-indexes/ncbi-virus.k31.sbwt
/usr/bin/time -v -a -o $results_filename_prefix.k31.build.time.log ./sbwt_build/bin/sbwt build -i /mnt/hd2/pibiri/DNA/eulertigs/ncbi-virus.k31.eulertigs.fa.gz -k 31 -m 16 -t 64 -d /mnt/hd2/pibiri/DNA/tmp_dir/ --add-reverse-complements --verbose -o /mnt/hd2/pibiri/DNA/sbwt-indexes/ncbi-virus.k31.rc.sbwt

/usr/bin/time -v -a -o $results_filename_prefix.k31.build.time.log ./sbwt_build/bin/sbwt build -i /mnt/hd2/pibiri/DNA/eulertigs/se.k31.eulertigs.fa.gz -k 31 -m 16 -t 64 -d /mnt/hd2/pibiri/DNA/tmp_dir/ --verbose -o /mnt/hd2/pibiri/DNA/sbwt-indexes/se.k31.sbwt
/usr/bin/time -v -a -o $results_filename_prefix.k31.build.time.log ./sbwt_build/bin/sbwt build -i /mnt/hd2/pibiri/DNA/eulertigs/se.k31.eulertigs.fa.gz -k 31 -m 16 -t 64 -d /mnt/hd2/pibiri/DNA/tmp_dir/ --add-reverse-complements --verbose -o /mnt/hd2/pibiri/DNA/sbwt-indexes/se.k31.rc.sbwt

/usr/bin/time -v -a -o $results_filename_prefix.k31.build.time.log ./sbwt_build/bin/sbwt build -i /mnt/hd2/pibiri/DNA/eulertigs/hprc.k31.eulertigs.fa.gz -k 31 -m 16 -t 64 -d /mnt/hd2/pibiri/DNA/tmp_dir/ --verbose -o /mnt/hd2/pibiri/DNA/sbwt-indexes/hprc.k31.sbwt
/usr/bin/time -v -a -o $results_filename_prefix.k31.build.time.log ./sbwt_build/bin/sbwt build -i /mnt/hd2/pibiri/DNA/eulertigs/hprc.k31.eulertigs.fa.gz -k 31 -m 16 -t 64 -d /mnt/hd2/pibiri/DNA/tmp_dir/ --add-reverse-complements --verbose -o /mnt/hd2/pibiri/DNA/sbwt-indexes/hprc.k31.rc.sbwt

cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_COMPILER=/usr/bin/g++ -DUSE_MAX_KMER_LENGTH_63=On
make -j

/usr/bin/time -v -a -o $results_filename_prefix.k63.build.time.log ./sbwt_build/bin/sbwt build -i /mnt/hd2/pibiri/DNA/eulertigs/cod.k63.eulertigs.fa.gz -k 63 -m 16 -t 64 -d /mnt/hd2/pibiri/DNA/tmp_dir/ --verbose -o /mnt/hd2/pibiri/DNA/sbwt-indexes/cod.k63.sbwt
/usr/bin/time -v -a -o $results_filename_prefix.k63.build.time.log ./sbwt_build/bin/sbwt build -i /mnt/hd2/pibiri/DNA/eulertigs/cod.k63.eulertigs.fa.gz -k 63 -m 16 -t 64 -d /mnt/hd2/pibiri/DNA/tmp_dir/ --add-reverse-complements --verbose -o /mnt/hd2/pibiri/DNA/sbwt-indexes/cod.k63.rc.sbwt

/usr/bin/time -v -a -o $results_filename_prefix.k63.build.time.log ./sbwt_build/bin/sbwt build -i /mnt/hd2/pibiri/DNA/eulertigs/kestrel.k63.eulertigs.fa.gz -k 63 -m 16 -t 64 -d /mnt/hd2/pibiri/DNA/tmp_dir/ --verbose -o /mnt/hd2/pibiri/DNA/sbwt-indexes/kestrel.k63.sbwt
/usr/bin/time -v -a -o $results_filename_prefix.k63.build.time.log ./sbwt_build/bin/sbwt build -i /mnt/hd2/pibiri/DNA/eulertigs/kestrel.k63.eulertigs.fa.gz -k 63 -m 16 -t 64 -d /mnt/hd2/pibiri/DNA/tmp_dir/ --add-reverse-complements --verbose -o /mnt/hd2/pibiri/DNA/sbwt-indexes/kestrel.k63.rc.sbwt

/usr/bin/time -v -a -o $results_filename_prefix.k63.build.time.log ./sbwt_build/bin/sbwt build -i /mnt/hd2/pibiri/DNA/eulertigs/human.k63.eulertigs.fa.gz -k 63 -m 16 -t 64 -d /mnt/hd2/pibiri/DNA/tmp_dir/ --verbose -o /mnt/hd2/pibiri/DNA/sbwt-indexes/human.k63.sbwt
/usr/bin/time -v -a -o $results_filename_prefix.k63.build.time.log ./sbwt_build/bin/sbwt build -i /mnt/hd2/pibiri/DNA/eulertigs/human.k63.eulertigs.fa.gz -k 63 -m 16 -t 64 -d /mnt/hd2/pibiri/DNA/tmp_dir/ --add-reverse-complements --verbose -o /mnt/hd2/pibiri/DNA/sbwt-indexes/human.k63.rc.sbwt

/usr/bin/time -v -a -o $results_filename_prefix.k63.build.time.log ./sbwt_build/bin/sbwt build -i /mnt/hd2/pibiri/DNA/eulertigs/ncbi-virus.k63.eulertigs.fa.gz -k 63 -m 16 -t 64 -d /mnt/hd2/pibiri/DNA/tmp_dir/ --verbose -o /mnt/hd2/pibiri/DNA/sbwt-indexes/ncbi-virus.k63.sbwt
/usr/bin/time -v -a -o $results_filename_prefix.k63.build.time.log ./sbwt_build/bin/sbwt build -i /mnt/hd2/pibiri/DNA/eulertigs/ncbi-virus.k63.eulertigs.fa.gz -k 63 -m 16 -t 64 -d /mnt/hd2/pibiri/DNA/tmp_dir/ --add-reverse-complements --verbose -o /mnt/hd2/pibiri/DNA/sbwt-indexes/ncbi-virus.k63.rc.sbwt

/usr/bin/time -v -a -o $results_filename_prefix.k63.build.time.log ./sbwt_build/bin/sbwt build -i /mnt/hd2/pibiri/DNA/eulertigs/se.k63.eulertigs.fa.gz -k 63 -m 16 -t 64 -d /mnt/hd2/pibiri/DNA/tmp_dir/ --verbose -o /mnt/hd2/pibiri/DNA/sbwt-indexes/se.k63.sbwt
/usr/bin/time -v -a -o $results_filename_prefix.k63.build.time.log ./sbwt_build/bin/sbwt build -i /mnt/hd2/pibiri/DNA/eulertigs/se.k63.eulertigs.fa.gz -k 63 -m 16 -t 64 -d /mnt/hd2/pibiri/DNA/tmp_dir/ --add-reverse-complements --verbose -o /mnt/hd2/pibiri/DNA/sbwt-indexes/se.k63.rc.sbwt

/usr/bin/time -v -a -o $results_filename_prefix.k63.build.time.log ./sbwt_build/bin/sbwt build -i /mnt/hd2/pibiri/DNA/eulertigs/hprc.k63.eulertigs.fa.gz -k 63 -m 16 -t 64 -d /mnt/hd2/pibiri/DNA/tmp_dir/ --verbose -o /mnt/hd2/pibiri/DNA/sbwt-indexes/hprc.k63.sbwt
/usr/bin/time -v -a -o $results_filename_prefix.k63.build.time.log ./sbwt_build/bin/sbwt build -i /mnt/hd2/pibiri/DNA/eulertigs/hprc.k63.eulertigs.fa.gz -k 63 -m 16 -t 64 -d /mnt/hd2/pibiri/DNA/tmp_dir/ --add-reverse-complements --verbose -o /mnt/hd2/pibiri/DNA/sbwt-indexes/hprc.k63.rc.sbwt


cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_COMPILER=/usr/bin/g++ -DUSE_MAX_KMER_LENGTH_63=Off
make -j

tar cf archive.tar file1.txt file2.txt file3.txt

tar tf archive.tar

mkdir extractedTar
cd extractedTar
tar xpf ../archive.tar

cd ../
tar czf archive.tar.gz archive.tar
tar czf archive.tar.bz2 archive.tar
tar czf archive.tar.xz archive.tar

cd extractedTar
tar xzf ../archive.tar.gz
tar xjf ../archive.tar.bz2
tar xJf ../archive.tar.xz

#Makefile
 
.PHONY: all clean
  
all:    write read 
 
clean:
	rm -f write 
	
 

write: write.cc 
	pkg-config --cflags protobuf  # fails if protobuf is not installed
	c++ write.cc addressbook.pb.cc -o writedata `pkg-config --cflags --libs protobuf`
	
read: read.cc 
	pkg-config --cflags protobuf  # fails if protobuf is not installed
	c++ read.cc addressbook.pb.cc -o readdata `pkg-config --cflags --libs protobuf`
 

 

 
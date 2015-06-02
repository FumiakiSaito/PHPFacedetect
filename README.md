#OpenCVとPHP facedetect拡張モジュールをインストール  


##cmake2.8インストール

```
# cd /usr/local/src
# wget http://www.cmake.org/files/v2.8/cmake-2.8.3.tar.gz
# tar xvzf cmake-2.8.3.tar.gz
# cd cmake-2.8.3
# .configure
# gmake
# gmake install
```

##OpenCVインストール  

```
# cd /usr/local/src
#
# wget http://sourceforge.net/projects/opencvlibrary/files/opencv-unix/2.3/OpenCV-2.3.0.tar.bz2/download
# tar jxvf OpenCV-2.3.0.tar.bz2
# cd OpenCV-2.3.0
#
# mkdir release
# cd release
#
# cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D BUILD_NEW_PYTHON_SUPPORT=NO ..
# make
# make install
```



##facedetect extensionインストール  

```
# cd ../..
#
# wget https://github.com/infusion/PHP-Facedetect/archive/master.zip
# unzip master
# cd PHP-Facedetect-master/
# phpize
# ./configure
# make
# make test 
# make install
Installing shared extensions:     /usr/lib64/php/modules/
```


##PHP設定ファイル  

```
# cd /etc/php.d
# vi facedetect.ini
--------------------------------------------------------
extension=facedetect.so
--------------------------------------------------------
# php -i | grep facedetect
/etc/php.d/facedetect.ini,
facedetect
facedetect support => enabled
facedetect version => 1.1
```

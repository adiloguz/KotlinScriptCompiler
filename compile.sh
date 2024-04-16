#!/bin/bash

# Betik parametresi olarak alınan Kotlin dosyasının adı.
# Name of the Kotlin file received as a script parameter.

kotlin_file=$1

# Eğer parametre olarak dosya adı verilmediyse hata mesajı göster ve çık.
# If no filename is given as parameter, show error message and exit.

if [ -z "$kotlin_file" ]; then
    echo "Kullanım: $0 <kotlin_dosyası>"
    exit 1
fi

# Kotlin dosyasını derle ve çalıştır.
# Compile and run Kotlin file.

kotlinc $kotlin_file -include-runtime -d app.jar && java -jar app.jar

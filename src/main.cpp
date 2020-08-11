#include <stdio.h> 
#include <unistd.h>
#include <sys/stat.h>
#include <libgen.h>
#include <iostream>
#include <sstream>
#include <string>
#include <vector>
#include <fstream>
#include "json/json.h"

void printLog()
{
    std::string c = "  __ _ \n"                
" / _(_)                \n"
"| |_ _ ___  ___  _ __  \n"
"|  _| / __|/ _ \\| '_ \\ \n"
"| | | \\__ \\ (_) | | | |\n"
"|_| | |___/\\___/|_| |_|\n"
"   _/ |                \n"
"  |__/  ";
    printf("%s\n", c.data());
}

int main(int argc, const char* argv[])
{
    std::string jsonRaw = std::string();
    std::string paramPath = "test.json";
    if (argc == 2) {
        paramPath = std::string(argv[1]);

        std::ifstream t(paramPath.data());
        std::stringstream buffer;
        buffer << t.rdbuf();
        jsonRaw = buffer.str();
    } else {
        int size = 1024;
        char* buff = (char*)malloc(size);
     
        // read lines
        while(NULL != fgets(buff, size, stdin)){
            if (!strcmp(buff, "\n")) {
                break;
            }
            //printf("%s", buff);
            jsonRaw += std::string(buff);
        }   
        // free buff
        free(buff);
    }

    if (jsonRaw.length() == 0) {
        printLog();
        printf("\n");
        printf("Usage:\n");
        printf("$ fjson file.json\n");
        printf("$ cat file.json | fjson\n");
        return 1;
    }
    
    Json::Value paramObj = Json::Value();
    JSONCPP_STRING err;
    const auto rawJsonLength = static_cast<int>(jsonRaw.length());
    Json::CharReaderBuilder builder;
    const std::unique_ptr<Json::CharReader> reader(builder.newCharReader());
    if (!reader->parse(jsonRaw.c_str(), jsonRaw.c_str() + rawJsonLength, &paramObj, &err)) {
        std::cout << "error" << std::endl;
        return 1;
    }

    std::string json = paramObj.toStyledString();
    printf("%s\n", json.data());

    return 0;
}
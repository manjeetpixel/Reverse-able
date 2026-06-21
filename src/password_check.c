#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void usercheck(){
system("whoami");
puts("Congrates to me for exploiting it");
}

void password_check(char* password){
    printf("Enter Password: ");
    scanf("%s",password);
    if(strcmp(password,"supersecurepassword") == 0){
       usercheck();
    }

}

int main(){
char password[32];
password_check(password);
printf("Program runs Normally");
return 0;
}
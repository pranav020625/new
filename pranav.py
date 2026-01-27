t=int(input())
for _ in range(t):
    s=input().strip()
    result=""
    for i in range(len(s)):
        if s[i].isupper():
            if i!=0:
                result+='_'
            result+=s[i].lower()
        else:
            result+=s[i]
    print(result)

    
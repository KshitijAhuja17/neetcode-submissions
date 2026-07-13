def concatenate(s1: str, s2: str) -> str:
    x = s1 + s2

    if len(x) > 10:
        return "Too long!"
    else:
        return x




# do not modify below this line
print(concatenate("He", "llo"))
print(concatenate("Hello ", "world!"))
print(concatenate("Length", "of10"))

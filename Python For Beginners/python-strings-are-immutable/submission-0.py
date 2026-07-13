def remove_fourth_character(word: str) -> str:
    start = word[:3]

    end = word[4:]
    return start + end


# do not modify below this line
print(remove_fourth_character("NeetCode"))
print(remove_fourth_character("Hello"))

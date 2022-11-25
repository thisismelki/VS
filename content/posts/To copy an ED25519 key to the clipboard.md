# To copy an ED25519 key to the clipboard


```bash
tr -d '\n' < ~/.ssh/id_ed25519.eub | pbcopy
```

     tr -- translate characters
     -d      Delete characters in string1 from the input.
     < 
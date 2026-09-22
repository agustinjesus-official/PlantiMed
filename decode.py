import re, base64
content = open('Planti med logo vector.svg', 'r').read()
match = re.search(r'base64,([^"<]+)', content)
if match:
    b64 = match.group(1).strip()
    b64 += '=' * (-len(b64) % 4)
    open('test.png', 'wb').write(base64.b64decode(b64))
    print('Success')
else:
    print('No match')

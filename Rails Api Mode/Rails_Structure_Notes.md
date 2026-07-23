.kamal
Deployment (server par app deploy karne) ki configuration.

app
Application ka main code hota hai (Controllers, Models, Jobs, etc.).

jobs/
Background tasks ke liye use hota hai jo baad me ya alag process me run karni hon.
Example: Email bhejna, report generate karna, image process karna.

mailers/
Emails send karne ke liye use hota hai.
Example: Welcome email, password reset email, OTP email.



bin
Project ki executable commands (rails, rake, etc.).

config
Project ki sari configuration files aur routes.

db
Database configuration, migrations aur seeds.

lib
Custom Ruby code ya helper libraries.

log
Application ke logs store hote hain.

public
Public files (404 page, robots.txt, icons, etc.).

script
Custom scripts rakhne ke liye.

storage
Uploaded files (Active Storage) store hoti hain.

test
Application ke test cases.

tmp
Temporary files aur cache.

vendor
Third-party code/dependencies agar manually add karo.


Root Files------
.gitignore
Batata hai kaunsi files GitHub par push nahi karni.

.gitattributes
Git ke file handling rules.


config.ru
Rack server ki entry file.

Dockerfile
Docker container banane ki instructions.

Gemfile
Project ki gems (packages/dependencies) ki list.

Gemfile.lock
Installed gems ke exact versions.

Rakefile
Custom tasks run karne ke liye.


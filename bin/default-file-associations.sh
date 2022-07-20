#!/usr/bin/env bash

duti -s com.microsoft.VSCode .conf all
duti -s com.microsoft.VSCode .css all
duti -s com.microsoft.VSCode .csv all
duti -s com.microsoft.VSCode .env all
duti -s com.microsoft.VSCode .env.example all
duti -s com.microsoft.VSCode .gitignore all
duti -s com.microsoft.VSCode .htaccess all
duti -s com.microsoft.VSCode .js all
duti -s com.microsoft.VSCode .jsx all
duti -s com.microsoft.VSCode .less all
duti -s com.microsoft.VSCode .lock all
duti -s com.microsoft.VSCode .md all
duti -s com.microsoft.VSCode .mdx all
duti -s com.microsoft.VSCode .php all
duti -s com.microsoft.VSCode .rb all
duti -s com.microsoft.VSCode .sass all
duti -s com.microsoft.VSCode .scss all
duti -s com.microsoft.VSCode .sh all
duti -s com.microsoft.VSCode .sql all
duti -s com.microsoft.VSCode .tf all
duti -s com.microsoft.VSCode .ts all
duti -s com.microsoft.VSCode .tsx all
duti -s com.microsoft.VSCode .txt all
duti -s com.microsoft.VSCode .vue all
duti -s com.microsoft.VSCode .xml all
duti -s com.microsoft.VSCode .yaml all
duti -s com.microsoft.VSCode .yml all

duti -s com.microsoft.VSCode public.json all
duti -s com.microsoft.VSCode public.plain-text all
duti -s com.microsoft.VSCode public.python-script all
duti -s com.microsoft.VSCode public.shell-script all
duti -s com.microsoft.VSCode public.source-code all

echo "✅ Default file associations"

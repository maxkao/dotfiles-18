compiler pyunit

" Allows to call :make in any python file that has something like
" if __name__ == "__main__":
"     from unittest import main
"     main()
"
" in it.
" It will then run the tests in the file and populate the quickfix windows
" with which it is possible to navigate to the failing tests
setlocal makeprg=python\ %

lua require('ft.python').attach()

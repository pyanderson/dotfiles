@echo off
set "PATH=%PATH%;%USERPROFILE%\Documents\python;%USERPROFILE%\Documents\python\Scripts;%USERPROFILE%\Documents\python2;%USERPROFILE%\Documents\vim\vim80"

REM system alias
doskey clear=cls
doskey ls=dir $*
doskey cp=copy $*
doskey mv=move $*
doskey rm=del $*
doskey :q=exit
doskey :q!=exit
doskey send=pscp -r $1 $2@$3:$4

REM environment
doskey p=python $*
doskey wo=workon $*
doskey pipt=pip install --trusted-host pypi.python.org  $*
doskey pipit=pip install --index-url=http://pypi.python.org/simple/ --trusted-host pypi.python.org  $*

REM django alias
doskey pm=python manage.py $*
doskey dr=python manage.py runserver 0.0.0.0:8000
doskey pms=python manage.py shell
doskey pmm=python manage.py migrate $*
doskey pmmk=python manage.py makemigrations $*
doskey pmcs=python manage.py createsuperuser

REM git alias
doskey g=git $*
doskey gs=git status
doskey ga=git add $*
doskey gd=git diff $*
doskey gb=git branch $*
doskey gc=git commit -m $*
doskey gps=git push origin $*
doskey gpl=git pull origin $*

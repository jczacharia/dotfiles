git init #--bare


#A bare repository is nothing but the .git folder itself i.e. the contents of a bare repository is same as the contents of .git folder inside your local working repository.

#Use bare repository on a remote server to allow multiple contributors to push their work.
#Non-bare - The one which has working tree makes sense on the local machine of each contributor of your project.



git clone <html>

git add .

git push

git status

git checkout <branch>

git log --all --decorate --oneline --graph

#rename branch
git branch -m <oldname> <newname>

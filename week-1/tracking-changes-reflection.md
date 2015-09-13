#1.5 Tracking Changes

###How does tracking and adding changes make developers' lives easier?

Having the ability to keep track changes allows for developers to organize team projects more easily, as well as see what changes others have made to a project. They can also add their own changes without effecting the work done by others. 

###What is a commit?

A commit is a save state that you look back on to see what changes have been made, or return to like a check point.

###What are the best practices for commit messages?

Write a short summary followed by  more detailed text if needed, don't go over 72 characters. Name and date your changes.

###What does the HEAD^ argument mean?

HEAD^ is the previous commit.

###What are the 3 stages of a git change and how do you move a file from one stage to the other?

The three stages are committed, modified, and staged. A modified piece is moved to being staged when it has been marked to be committed, a staged piece becomes committed when you commit the branch so that it becomes stored, a committed piece becomes modified when changes are made to it.

###Write a handy cheatsheet of the commands you need to commit your changes?

-git checkout (branch): navigate to another branch, such as master.
-git checkout -b new-name: creates a new branch.
-git merge master: merge changes from master onto feature branch.
-git pull: takes changes from remote repo and merges them.
-git push origin branch-name: pushes changes from local to remote repo.
-git branch -d branch-name: deletes a branch.
-git add .: adds changes to be committed.
-git commit -m "Message": commits changes.

###What is a pull request and how do you create and merge one?

A pull request is a request from the remote repository to pull changes from the local repository. You can make the request and merge it from GitHub.

###Why are pull requests preferred when working with teams?

They are useful so that one person can decide to merge requests, and many people can pull request without hindering anyone else.
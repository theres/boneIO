# Jak pracować z github

- Pierwszy krok to założenie konta na stronie [GitHub](http://www.github.com/)

![Github](https://github.com/maciejk1984/boneIO/blob/main/.resources/github.png?raw=true)

- Po zalogwaniu się na swoje konto tworzymy tzw. **Fork** repozytorium z którym chcemy pracować. Fork oznacza naszą prywatną kopie danego repozytorium na którym możemy dokonywać swoich poprawek. Tworzenie forka jest banalnie prosta - wystarczy wcisnąć przycisk w prawym górnym rogu ekranu

![Github](https://github.com/maciejk1984/boneIO/blob/main/.resources/fork.png?raw=true)

- Po przejściu na swojego forka widzimy że jesteśmy już na naszej kopii **[1]**. Możemy pobrać ją do lokalnej edycji wciskając przycisk **Code** **[2]** i pobierając link **[3]**

- Następnie należy zainstalować [Git for Windows](https://gitforwindows.org/) dzięki któremu będziemy mogli pobrać repozytorium na dysk komputera

- Z linii poleceń (cmd, [PowerShell](https://github.com/PowerShell/PowerShell/releases), [Windows Terminal](https://github.com/microsoft/terminal/releases)) możemy pobrać repozytorium. Pamiętajmy o założeniu folderu na dysku zanim wpiszemy poniższe polecenie. Wykonując polecenie `git clone` wraz ze skopiowanym adresem

![Github](https://github.com/maciejk1984/boneIO/blob/main/.resources/clone.png?raw=true)

- Teraz dokonujemy zmian które chcemy zaproponować. W każdym momencie używając polecenia `git status` możemy zobaczyć jakie pliki zostały zmienione.

- Jeśli chcemy zachować swoje zmiany wykonujemy polecenie `git add .` które spowoduje że wszystkie zmienione pliki staną się kandydatami do tzw. **commita** czyli paczce ze zmianami które wyślemy do repozytorium. Następnie używając polecenia `git commit -m "Opis naszych zmian"` tworzymy naszego commita. 

![Github](https://github.com/maciejk1984/boneIO/blob/main/.resources/commit.png?raw=true)

- Takich commitów możemy robić więcej jeśli chcemy naszą pracę podzielić na osobne części. Po zakończeniu pracy możemy nasze zmiany wysłać na serwer poleceniem `git push`

![Github](https://github.com/maciejk1984/boneIO/blob/main/.resources/push.png?raw=true)

- Po wykonaniu operacji **push** będzie ona widoczna na serwerze **jednak tylko na naszym forku**
  
![Github](https://github.com/maciejk1984/boneIO/blob/main/.resources/after_push.png?raw=true)

- W celu przeniesienia zmian na **główne repozytorium** z którego stworzyliśmy naszego forka musimy stworzyć tzw. **Pull Request** a więc prośbę o wgranie naszych zmian do repozytorium głównego. Możemy to zrobić w zakłądce `Pull Requests` wybierając opcje `New pull request`

![Github](https://github.com/maciejk1984/boneIO/blob/main/.resources/pr_create.png?raw=true)

- Po wciśnięciu przycisku widzimy informacje z jakiego forka tworzony jest nasz pull request oraz widizmy listę zmian które wykonaliśmy. Pamiętajmy, że jeśli ktoś inny wykonał zmiany w tych samych plikach i ubiegł nas przed wgraniem naszych to mogą wystąpić konflikty które będzie trzeba rozwiązać. Po wciśnięciu przycisku `Create new pull reqest' przenosimy się do ekranu koentarza

![Github](https://github.com/maciejk1984/boneIO/blob/main/.resources/pr.png?raw=true)

- Możemy dodać komentarz do naszych zmian i po wniśnięciu przycisku `Create pull request' nasz PR będzie gotowy

![Github](https://github.com/maciejk1984/boneIO/blob/main/.resources/pr_comment.png?raw=true)

- Nasz **Pull Request** jest gotowy i czeka na akceptację przez administratorów repozytorium. Możliwe, że dostaniemy komentarz i będziemy musieli coś poprawić lub administrator stwierdzi, że nie zgadza się na nasze zmiany. 

![Github](https://github.com/maciejk1984/boneIO/blob/main/.resources/pr_final.png?raw=true)

- Jeśli ostatecznie wszystko będzie ok i dostaniemy akceptację wtedy będziemy mogli wykonać tzw. **Merge** czyli wgranie naszych zmian do głównego repozytorium

![Github](https://github.com/maciejk1984/boneIO/blob/main/.resources/merge.png?raw=true)

# Back End for Birds of Aotearoa
[Assignment Two](cosc203.cspages.otago.ac.nz/assignments/a2/)
## Setting Up
Used Docker, 
- Run the command ```npm run start``` on terminal.
- At least for me, press window key + r ```services.msc``` and stop mysql (if running otherwise port errors)
- Open docker and run the commands:
    ```cd sql```
    ```docker compose up -d```
    ```docker exec -it cosc203mysql mysql -u root -p --default-character-set=utf8mb4```
- Enter Password (password)
- Enter ```source sql/db_setup.sql```
- Then ```source sql/db_populate.sql```
## Routes and Uses
Lets quickly outline all the the routes and what they're used for as they are shown in ```path_router.js```
### /birds
The homepage that displays all the birds in the database.
> Location:
> ```views/index.ejs```
### /
>Redirects to:
> /birds
### /birds/reset
Resets the database to the birds that are in ```sql/db_populate.sql```
>Redirects to:
> /birds
### /birds/create
Allows user to add information and photos to a bird and to add it to the database.
>Location:
> ```/views/create.ejs```
### /birds/:bird_id
Page that shows the single bird in question on the whole page.
>Location:
> ```/views/bird_page.ejs```
### /birds/:bird_id/delete
Deletes the bird with the corresponding bird_id.
>Redirects to:
> /birds
### /birds/:bird_id/edit
Brings up a page where you can edit the data on a bird with the corresponding bird_id.
>Location:
> ```views/edit.ejs```
### other links
Are redirected to the 404 page
>Location:
> ```views/404.ejs```
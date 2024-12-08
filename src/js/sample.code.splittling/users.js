const validateUser = (username, password) => {

    if (username && password){
        fetch(`${restURL}/validuser/`, {
        method: "POST",
        body: JSON.stringify({
            userdata: {
            username: username,
            password: password
            }
        })})
        .then(response => response.json())
        .then(data => {
            console.log(data);
        })
        .catch((err) => {
            console.log(err);
        })  
    } else {
        alert("User name & Pwd requried");
    }

};
const getUsers = () => {
    fetch(`${restURL}/getuserlist/`, {
            method: "GET",
        })
        .then(response => response.json())
        .then(data => {
            let users = '';
            data.forEach(user => {
                console.log(user.username);
        });
        })
        .catch((err) => {
            console.log(err);
        })     
}
export {validateUser, getUsers};
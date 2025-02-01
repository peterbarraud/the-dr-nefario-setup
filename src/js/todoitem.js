class TodoItem extends HTMLElement {
    constructor() {
        super();
        this.innerHTML = "Hi I'm here";
    }
}
customElements.define("todo-item", TodoItem);
const UIdivMainMenu = document.querySelector('#main-menu');
const UIbtnChangeView = document.querySelector('#btn-view');

UIdivMainMenu.addEventListener('click', e => {
        UIdivMainMenu.classList.toggle('show');
});

UIbtnChangeView.addEventListener('click', e=>{
	e.preventDefault();
	const UIlistaLivros = document.querySelector('#lista-livros');
	UIlistaLivros.classList.toggle('show-cover');
})
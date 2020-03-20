const UIdivMainMenu = document.querySelector('#main-menu');
const UIbtnChangeView = document.querySelector('#btn-view');

UIdivMainMenu.addEventListener('click', e => {
	UIdivMainMenu.classList.toggle('show');
});

UIbtnChangeView.addEventListener('click', e => {
	e.preventDefault();
	const UIlistaLivros = document.querySelector('#lista-livros');
	UIlistaLivros.classList.toggle('show-cover');
})

// Filtrar a lista de livros

const UIsearchField = document.querySelector('#pesquisa');
UIsearchField.addEventListener('keyup', e => {
	const searchBy = UIsearchField.value;
	const UIlistaLivros = document.querySelector('#lista-livros');

	if (livros === null) {
		livros = [];
		const li = UIlistaLivros.querySelectorAll('li');
		let id, titulo, autor, paginas, paginaAtual, url;
		// Caso não exista, gera um array de objetos de todos os livros visíveis
		li.forEach(li => {
			id = li.querySelector('.id').value;
			url = li.querySelector('.url').value;
			titulo = li.querySelector('.titulo').innerText;
			autor = li.querySelector('.autor').innerText;
			paginas = li.querySelector('.paginas').innerText;
			paginaAtual = li.querySelector('.pagina-atual').innerText;
			livros.push({
				id,
				url,
				titulo,
				autor,
				paginas,
				paginaAtual
			})
		});
	}

	if (searchBy.length > 0) {

		UIlistaLivros.innerHTML = '';
		let output = '';
		let percent = 0;

		livros.forEach(l => {
			if (l.titulo.toLowerCase().includes(searchBy.toLowerCase())) {
				// Calcule para saber o quanto foi lido
			percent = l.paginaAtual * 100 / l.paginas;
				output += `
							<li style="background-image: url('${l.url}');">
							<input type="hidden" class="id" value="${l.id}">
							<input type="hidden" class="url" value="${l.url}">
							<div class="title">
								<span class="titulo">${l.titulo}</span>
								<span class="autor">${l.autor}</span>
							</div>
							<div class="pages">
								<span class="pagina-atual">${l.paginaAtual}</span> / 
								<span class="paginas">${l.paginas}</span>
							</div>
							<div class="progress">
								<div style="width: ${percent}%;"></div>
							</div>
							<div class="edit-remove">
								<i class="fas fa-pen edit-livro"></i>
								<i class="fas fa-trash remove-livro"></i>
							</div>
						</li>
						`;
			}
		})
		UIlistaLivros.innerHTML = output;
	} else {
		UIlistaLivros.innerHTML = '';
		let output = '';
		let percent = 0;

		livros.forEach(l => {
			// Calcule para saber o quanto foi lido
			percent = l.paginaAtual * 100 / l.paginas;
			output += `
							<li style="background-image: url('${l.url}');">
							<input type="hidden" class="id" value="${l.id}">
							<input type="hidden" class="url" value="${l.url}">
							<div class="title">
								<span class="titulo">${l.titulo}</span>
								<span class="autor">${l.autor}</span>
							</div>
							<div class="pages">
								<span class="pagina-atual">${l.paginaAtual}</span> / 
								<span class="paginas">${l.paginas}</span>
							</div>
							<div class="progress">
								<div style="width: ${percent}%;"></div>
							</div>
							<div class="edit-remove">
								<i class="fas fa-pen edit-livro"></i>
								<i class="fas fa-trash remove-livro"></i>
							</div>
						</li>
						`;
		})
		UIlistaLivros.innerHTML = output;
	}

})
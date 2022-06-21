var index = 1;
slide(index);

function nextslide(n) {
    slide(index += n);
}

function slide(n) {
    var x;
    slides = document.getElementsByClassName("main_container");
    pointers = document.getElementsByClassName("pointer");
    if (n > slides.length) {
        index = 1;
    }
    if (n < 1) {
        index = slides.length;
    }
    for (x = 0; x < slides.length; x++) {
        slides[x].style.display = "none";
        pointers[x].classList.remove("pointer_active")
    }
    slides[index - 1].style.display = "block";
    pointers[index - 1].classList.add("pointer_active");
}

const tabs = document.querySelectorAll('[data-target]'),
    tabContents = document.querySelectorAll('[data-content]')

tabs.forEach(tab => {
    tab.addEventListener('click', () => {
        const target = document.querySelector(tab.dataset.target)


        tabContents.forEach(tabContent => {
            tabContent.classList.remove('menu_active')
        })
        target.classList.add('menu_active')



        tabs.forEach(tab => {
            tab.classList.remove('menu_active')
        })
        tab.classList.add('menu_active')


    })
})
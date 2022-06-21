const tabs = document.querySelectorAll('[data-target]'),
    tabContents = document.querySelectorAll('[data-content]')

tabs.forEach(tab => {
    tab.addEventListener('click', () => {
        const target = document.querySelector(tab.dataset.target)


        tabContents.forEach(tabContent => {
            tabContent.classList.remove('form_active')
        })
        target.classList.add('form_active')



        tabs.forEach(tab => {
            tab.classList.remove('form_active')
        })
        tab.classList.add('form_active')


    })
})
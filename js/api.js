// import components first
import HeroThumb from './components/TheHeroThumbnail.js';
import LightBox from './components/TheLightbox.js';


(() => {
    
    // create vue instance here
    const { createApp } = Vue
  

    createApp({
        created() {
            // always get your remote data here
            fetch('./data.json')
                .then(res => res.json())
                .then(data => this.heroData = data)
            .catch(error => console.error(error));
        },

        data() {
            return {
                heroData: {},
                lightboxData: {},
                showLB: false

            }
        },

        components: {
            theherothumb: HeroThumb, //add theherothumb to the html and grab HeroThumb from the top of this js file
            thelightbox: LightBox
        },

        methods: {
            loadLightbox(hero){
                console.log("It's working when you click, woot woot."); //shows in the console
                //set the lightbox data / render it
               this.lightboxData = hero;

               //show the lightbox
                this.showLB = true;

            }

        }
    }).mount('#app')
})()




export default {
    name: 'TheLightboxComponent',

    props: ['hero'],

    //emits: ['closelightbox'],

    template: `
    <section class="lightbox"  :style="{ 'background-image': 'url(../images/' + hero.lbBG + ')' }">
   
        <img @click="closeLB" src="images/closeIcon.png" class="lightbox_close">
         <!-- hero image on the left, text on the right -->
         
         
        <!-- her image is a background image -->
    
        <video class="vid" controls :src='"../images/" + hero.video'/>
        
        <article>
        <h3 class="lb_heading">
        {{hero.name}}
       </h3>
            <p class="lb_text">
                {{hero.desc}}
            </p>
           
          
        </article>
    </section>
    `,

    methods: {
        closeLB() {
            this.$emit('closelb');
        }
    }
}
export default{
    name: "TheHeroThumb",

    emits: ['loadlbdata'], // all lowercase

    props: {
        hero: Object
    },

    template: `
    <li @click="loadLBData">
        <img :src='"images/" + hero.biopic' alt="hero image" style="width: 450px" class="img">
        
        <h5>{{hero.name}}</h5>
        
      
       
       
    </li>
    ` ,

   

    methods: {
        loadLBData() {
            this.$emit('loadlbdata', this.hero); // all lowercase

        }
    },


}

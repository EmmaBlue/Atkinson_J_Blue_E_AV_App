// Define a new component called home

const home = Vue.component('home-vue', {
    data: function() {

        return {

        
        }

    },

    methods: {
        
        showMedia: function(event){
        // `this` inside methods points to the Vue instance
        // `event` is the native DOM event
        console.log('showMedia working!')

        },
        showAccount: function(event){
            // `this` inside methods points to the Vue instance
            // `event` is the native DOM event
            console.log('Parents or Kids working!')
    
         },

         showEra: function(event){
            // `this` inside methods points to the Vue instance
            // `event` is the native DOM event
            console.log('showEra working!')
    
         }

    },
    template: `<section id="main-home">
        <section id="intro">
            <h2 class="hidden">Intro Explanation</h2>
            <div v-on:click="showMedia">Movies</div>
            <div v-on:click="showMedia">TV</div>
            <div v-on:click="showMedia">Music</div>
        </section>
        <section id="select-profile">
            <h2 class="hidden">Profile Section</h2>
            <div v-on:click="showAccount">Parents</div>
            <div v-on:click="showAccount">Kids</div>
        </section>
        <section id="select-year">
            <h2 class="Pick Era"</h2>
            <div v-on:click="showEra"><p>1950</p></div>
            <div v-on:click="showEra"><p>1960</p></div>
            <div v-on:click="showEra"><p>1970</p></div>
            <div v-on:click="showEra"><p>1980</p></div>
            <div v-on:click="showEra"><p>1990</p></div>
        </section>
    </section>`

  });

  const parents = Vue.component('parents-vue', {
    data: function() {

        return {

        
        }

    },

    methods: {

        trendSlide: function(event){
            // `this` inside methods points to the Vue instance
            // `event` is the native DOM event
            console.log('trending working!')
    
        },

        parentMedia: function(event){
            // `this` inside methods points to the Vue instance
            // `event` is the native DOM event
            console.log('parent media working!')
    
        },

        faveSlide: function(event){
            // `this` inside methods points to the Vue instance
            // `event` is the native DOM event
            console.log('fave slide working!')
    
        }
        

    },
    template: `<section id="main-parents">
        <section v-on:click="trendSlide" id="trending">
         <p>Trending</p>
        </section>
        <section id="parent-media-options">
            <h2 class="hidden">Media Options</h2>
            <button v-on:click="parentMedia">Movies</button>
            <button v-on:click="parentMedia">TV</button>
            <button v-on:click="parentMedia">Music</button>
        </section>
        <section id="parent-media-grid">
            <h2 class="hidden">Media Grid</h2>
            <section>
            </section>
            <section>
            </section>
            <section>
            </section>
            <section>
            </section>
            <section>
            </section>
            <section>
            </section>
        </section>
        <section id="favourites-sect">
            <h2 class="hidden">Favourites Section</h2>
            <div class="slider" v-on:click="faveSlide"><p>Slider</p></div>
            <div id="favourite-view"><p>Main View</p></div>
            <div class="slider" v-on:click="faveSlide"><p>Slider</p></div>
        </section>
    </section>`

  });

  const kids = Vue.component('kids-vue', {
    data: function() {

        return {

        
        }

    },

    methods: {

        trendSlide: function(event){
            // `this` inside methods points to the Vue instance
            // `event` is the native DOM event
            console.log('trending working!')
    
        },

        parentMedia: function(event){
            // `this` inside methods points to the Vue instance
            // `event` is the native DOM event
            console.log('parent media working!')
    
        },

        faveSlide: function(event){
            // `this` inside methods points to the Vue instance
            // `event` is the native DOM event
            console.log('fave slide working!')
    
        }
        

    },
    template: `<section id="main-kids">
        <section v-on:click="trendSlide" id="trending">
        <h2 class="hidden">Trending Section</h2>
         <p>Trending</p>
        </section>
        <section id="kid-media-options">
            <h2 class="hidden">Kid Media Options</h2>
            <button v-on:click="parentMedia">Movies</button>
            <button v-on:click="parentMedia">TV</button>
            <button v-on:click="parentMedia">Music</button>
        </section>
        <section id="kid-media-grid">
            <h2 class="hidden">Kid Media Section</h2>
            <section>
            </section>
            <section>
            </section>
            <section>
            </section>
            <section>
            </section>
            <section>
            </section>
            <section>
            </section>
        </section>
        <section id="favourites-sect">
            <h2 class="hidden">Favourites Section</h2>
            <div class="slider" v-on:click="faveSlide"><p>Slider</p></div>
            <div id="favourite-view"><p>Main View</p></div>
            <div class="slider" v-on:click="faveSlide"><p>Slider</p></div>
        </section>
    </section>`

  });
    
    const routes = [{path: '/', component: home},
    {path: '/parents', component: parents},
    {path: '/kids', component: kids}
      /*{path: '/movies', component: movies},
      {path: '/tv', component: tv},
      {path: '/music', component: music},
      {path: '/kids', component: kids},
      {path: '/accounts', component: accounts},
{path: '/settings', component: settings}*/]

    
      //{path: '/community', component: Community}
      //each route is an object in an array with a defined path and component to be loaded
      //{path: '/users', component: Users},
      //{path: '/users/:userid', component: Users} //:userid is dynamic data from link
      //{{ $this.route.params.userid }} will output :userid from url
      //watch:{ '$route' (to, from){method with changing data} } in export default
  
    
    const router = new VueRouter({
       //pass routes into vue router
       routes,
       //mode: history //removes hashtag from url
     });
  
  

    const app = new Vue({
       el: '#app',
       router,
       data: {
        socItems: [

            {link:"http://www.twitter.com", id: "twitter", class: "fab fa-twitter"},
            {link:"http://www.facebook.com", id: "facebook", class: "fab fa-facebook-square"},
            {link:"http://www.instagram.com", id: "instagram", class: "fab fa-instagram"},
            {link:"https://www.youtube.com/", id: "instagram", class: "fab fa-youtube"},

          ]
      }, 
  
      mounted : function() {
          // listen for when Vue is done building itself 
          console.log('mounted');
  
      },
  
      updated : function() {
          // listen for when Vue completes its render cycle
          console.log('updated');
  
      },
      methods : {
  
      }
    });
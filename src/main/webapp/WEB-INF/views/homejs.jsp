
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/gsap.min.js"></script>
<script>
    document.addEventListener("DOMContentLoaded", function () {
        let cards = document.querySelectorAll(".ad-card");

        // Sab templates pehle invisible rahenge
        gsap.set(cards, { opacity: 0, y: 50 });

        // Stagger effect for simultaneous animation
        gsap.to(cards, {
            opacity: 1, // Visible honge
            y: 0, // Slide-up effect
            duration: 1.5, // Animation speed
            ease: "power2.out",
            stagger: 0.4 // Har template ke beech 0.2s ka gap
        });

        // Hover Effect
        cards.forEach(card => {
            card.addEventListener("mouseenter", function () {
                gsap.to(this, { scale: 1.05, duration: 0.3 });
            });
            card.addEventListener("mouseleave", function () {
                gsap.to(this, { scale: 1, duration: 0.3 });
            });
        });
    });
</script>

 <script>
        $(document).ready(function(){
            $(".owl-carousel").owlCarousel({
                loop:true,
                margin:10,
                nav:true,
                responsive:{
                    0:{ items:1 },
                    600:{ items:3 },
                    1000:{ items:3 }
                }
            });
        });
    </script>
    

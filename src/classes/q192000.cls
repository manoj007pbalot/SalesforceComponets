public class q192000 {
public class Wrapper {
        public Boolean checkbox1 { get; set; }
        public Boolean checkbox2 { get; set; }
        public Boolean checkbox2disabled { get; set; }
        public Wrapper() {
            checkbox1 = checkbox2 = checkbox2disabled = false;
        }
        // Called to update checkbox2's status
        public void updateStatus() {
            checkbox2disabled = checkbox1;
            if(checkbox1) {
                checkbox2 = true;
            }
        }
    }
    // Items to show on the page
    public Wrapper[] items { get; set; }
    // Page's initialization
    public q192000() {
        items = new Wrapper[0];
        for(Integer i = 0; i < 5; i++) {
            items.add(new Wrapper());
        }
    }
}
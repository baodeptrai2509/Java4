package servlet;

/**
 * @author MY PC
 *
 */
public class Itemweb {
	private int id;
     
    private String image;
    private String sanpham;
    private String item1;
    private String item2;
    private String item3;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getSanpham() {
		return sanpham;
	}
	public void setSanpham(String sanpham) {
		this.sanpham = sanpham;
	}
	public String getItem1() {
		return item1;
	}
	public void setItem1(String item1) {
		this.item1 = item1;
	}
	public String getItem2() {
		return item2;
	}
	public void setItem2(String item2) {
		this.item2 = item2;
	}
	public String getItem3() {
		return item3;
	}
	public void setItem3(String item3) {
		this.item3 = item3;
	}
	public Itemweb(int id, String image, String sanpham, String item1, String item2, String item3) {
		super();
		this.id = id;
		this.image = image;
		this.sanpham = sanpham;
		this.item1 = item1;
		this.item2 = item2;
		this.item3 = item3;
	}
	public Itemweb() {
		super();
	}
    
    
    
    
}

package entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="LoaiTours")
public class LoaiTour implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 7859777024031257181L;
	@Id
	private String maLoaiTour ;
	
	@Column(columnDefinition = "nvarchar(255)" ,nullable = false)
	private String tenLoaiTour;
	
	@OneToMany(mappedBy = "loaiTour")
	private List<Tour> tours;
	
	public LoaiTour(String maLoaiTour) {
		super();
		this.maLoaiTour = maLoaiTour;
	}
	
	public LoaiTour() {
		// TODO Auto-generated constructor stub
	}
	
	public String getMaLoaiTour() {
		return maLoaiTour;
	}

	

	public void setMaLoaiTour(String maLoaiTour) {
		this.maLoaiTour = maLoaiTour;
	}

	public String getTenLoaiTour() {
		return tenLoaiTour;
	}

	public void setTenLoaiTour(String tenLoaiTour) {
		this.tenLoaiTour = tenLoaiTour;
	}

	
	public List<Tour> getTours() {
		return tours;
	}

	public void setTours(List<Tour> tours) {
		this.tours = tours;
	}

	public LoaiTour(String maLoaiTour, String tenLoaiTour) {
		super();
		this.maLoaiTour = maLoaiTour;
		this.tenLoaiTour = tenLoaiTour;
	}

	@Override
	public String toString() {
		return "LoaiTour [maLoaiTour=" + maLoaiTour + ", tenLoaiTour=" + tenLoaiTour + "]";
	}
	
}

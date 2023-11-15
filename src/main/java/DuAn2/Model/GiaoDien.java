package DuAn2.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "giaodien")
public class GiaoDien {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int maGiaoDien;
	private String tenToChuc;
	private String diaChi;
	private String soDienThoai;
	
	
	public String getDiaChi() {
		return diaChi;
	}
	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}
	public String getSoDienThoai() {
		return soDienThoai;
	}
	public void setSoDienThoai(String soDienThoai) {
		this.soDienThoai = soDienThoai;
	}
	public int getMaGiaoDien() {
		return maGiaoDien;
	}
	public void setMaGiaoDien(int maGiaoDien) {
		this.maGiaoDien = maGiaoDien;
	}
	public String getTenToChuc() {
		return tenToChuc;
	}
	public void setTenToChuc(String tenToChuc) {
		this.tenToChuc = tenToChuc;
	}
	
	
}

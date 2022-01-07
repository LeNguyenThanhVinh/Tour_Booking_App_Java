package dao;

import java.rmi.Remote;
import java.rmi.RemoteException;
import java.util.ArrayList;
import java.util.List;

import entity.Tour;

public interface ThongKe_DAO extends Remote{
	public int tongSoLuongVeTheoNgayChon(String tuNgay, String denNgay) throws RemoteException; 
	
	public double TongDTtheoNgayChon(String tuNgay, String denNgay) throws RemoteException; 
	
	public int  SoLuongVeTheoQuy(String nam, String thang1, String thang2, String thang3) throws RemoteException; 
	
	public double  DoanhThuTheoQuy(String nam, String thang1, String thang2, String thang3) throws RemoteException; 
	
	//Load
	public List<Tour> thongKeTheoNgay(String tuNgay,String denNgay) throws RemoteException; 
	
	public List<Tour> thongKeSanPhamTheoQuy4(String nam, String thang1, String thang2, String thang3) throws RemoteException; 
	
}

package ui;

import java.awt.BorderLayout;

import java.awt.Color;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.HeadlessException;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;
import java.net.MalformedURLException;
import java.rmi.Naming;
import java.rmi.NotBoundException;
import java.rmi.RemoteException;
import java.sql.Date;
import java.time.LocalDate;
import java.util.List;

import javax.swing.BoxLayout;
import javax.swing.ButtonGroup;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JRadioButton;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;

import config.config;
import dao.DiaDanh_DAO;
import dao.HuongDanVien_DAO;
import entity.DiaDanh;
import entity.HuongDanVien;
import entity.NhanVien;

public class UI_HuongDanVien extends JFrame implements ActionListener{
	String conf = config.conf;
	private JLabel lblMaDiaDanh, lblTenDiaDanh, lblMoTa, lblTinhThanh;
	private JTextField txtMaDiaDanh, txtTenDiaDanh, txtMess;
	private JTextArea txtMoTa;
	private JComboBox cbxTinhThanh;
	private JButton btnLamMoi, btnLuu, btnThoat;
	private JPanel pnNorth;
	private DiaDanh_DAO diaDanh_DAO;
	private QuanLiDiaDanh qldd;
	private DiaDanh diadanh;
	boolean flag = true;

	public UI_HuongDanVien(DiaDanh dd,boolean flag) throws MalformedURLException, RemoteException, NotBoundException  {
		SecurityManager securityManager = System.getSecurityManager();
		if(securityManager == null) {
			
			System.setProperty("java.security.policy", "policy/policy.policy");
			System.setSecurityManager(new SecurityManager());
			
		}
		diaDanh_DAO = (DiaDanh_DAO) Naming.lookup(conf+"/diaDanh_DAO");

		diadanh = dd;		  
		qldd = new QuanLiDiaDanh();

		setTitle("TTKH");
		setDefaultCloseOperation(this.DISPOSE_ON_CLOSE);	
		setSize(600,400);
		setLocationRelativeTo(null);

		pnNorth = new JPanel() { };
		JLabel lblTieuDe = new JLabel("Th??ng Tin ?????a Danh");
		Font font =new Font("Arial",Font.BOLD,15);
		lblTieuDe.setFont(font);
		lblTieuDe.setForeground(Color.RED);
		pnNorth.add(lblTieuDe);
		add(pnNorth,BorderLayout.NORTH);
		
		JPanel pnCenter = new JPanel();
		pnCenter.setLayout(new BoxLayout(pnCenter, BoxLayout.Y_AXIS));
		JPanel pnThongTin = new JPanel();
		JPanel pnChucNang = new JPanel();
		pnChucNang.setLayout(new FlowLayout(FlowLayout.RIGHT));
		pnThongTin.setLayout(new BoxLayout(pnThongTin, BoxLayout.Y_AXIS));
		pnCenter.add(pnThongTin);
		pnCenter.add(pnChucNang);
		add(pnCenter,BorderLayout.CENTER);
			//Ma
		JPanel pnMaDiaDanh = new JPanel();
		lblMaDiaDanh = new JLabel("M?? ?????a danh");
		txtMaDiaDanh = new JTextField(40);
		txtMaDiaDanh.setEditable(false);
		pnMaDiaDanh.add(lblMaDiaDanh);
		pnMaDiaDanh.add(txtMaDiaDanh);
		pnThongTin.add(pnMaDiaDanh);
			//Ten
		JPanel pnTenDiaDanh = new JPanel();
		lblTenDiaDanh = new JLabel("T??n ?????a danh");
		txtTenDiaDanh = new JTextField(40);
		pnTenDiaDanh.add(lblTenDiaDanh);
		pnTenDiaDanh.add(txtTenDiaDanh);
		pnThongTin.add(pnTenDiaDanh);				
			//Mota
		JPanel pnMoTa = new JPanel();
		lblMoTa = new JLabel("M?? t???");
		txtMoTa = new JTextArea(10,40);
		txtMoTa.setWrapStyleWord(true);
		txtMoTa.setLineWrap(true);
		JScrollPane sc = new JScrollPane(txtMoTa);
		pnMoTa.add(lblMoTa);
		pnMoTa.add(sc);
		pnThongTin.add(pnMoTa);
			//TinhThanh
		JPanel pnTinhThanh = new JPanel();
		lblTinhThanh = new JLabel("T???nh th??nh");
		cbxTinhThanh = new JComboBox();
		cbxTinhThanh.setPreferredSize(new Dimension(400, 25));
		cbxTinhThanh.addItem("An Giang ");cbxTinhThanh.addItem("B?? r???a ??? V??ng t??u");cbxTinhThanh.addItem("B???c Giang");
		cbxTinhThanh.addItem("B???c K???n");cbxTinhThanh.addItem("B???c Li??u");cbxTinhThanh.addItem("B???c Ninh");
		cbxTinhThanh.addItem("B???n Tre");cbxTinhThanh.addItem("B??nh ?????nh");cbxTinhThanh.addItem("B??nh D????ng");cbxTinhThanh.addItem("B??nh Ph?????c");
		cbxTinhThanh.addItem("B??nh Thu???n");cbxTinhThanh.addItem("C?? Mau");cbxTinhThanh.addItem("C???n Th??");cbxTinhThanh.addItem("Cao B???ng ");
		cbxTinhThanh.addItem("???? N???ng");cbxTinhThanh.addItem("?????k L???k");cbxTinhThanh.addItem("?????k N??ng");cbxTinhThanh.addItem("??i???n Bi??n");
		cbxTinhThanh.addItem("?????ng Nai");cbxTinhThanh.addItem("?????ng Th??p");cbxTinhThanh.addItem("Gia Lai");cbxTinhThanh.addItem("H?? Giang");
		cbxTinhThanh.addItem("H?? Nam");cbxTinhThanh.addItem("H?? N???i ");cbxTinhThanh.addItem("H?? T??nh");cbxTinhThanh.addItem("H???i D????ng ");
		cbxTinhThanh.addItem("H???i Ph??ng");cbxTinhThanh.addItem("H???u Giang");cbxTinhThanh.addItem("H??a B??nh");cbxTinhThanh.addItem("H??ng Y??n");
		cbxTinhThanh.addItem("Kh??nh H??a");cbxTinhThanh.addItem("Ki??n Giang");cbxTinhThanh.addItem("Kon Tum");cbxTinhThanh.addItem("Lai Ch??u");
		cbxTinhThanh.addItem("L??m ?????ng");cbxTinhThanh.addItem("L???ng S??n");cbxTinhThanh.addItem("L??o Cai");cbxTinhThanh.addItem("Long An");
		cbxTinhThanh.addItem("Nam ?????nh");cbxTinhThanh.addItem("Ngh??? An");cbxTinhThanh.addItem("Ninh B??nh");cbxTinhThanh.addItem("Ninh Thu???n");
		cbxTinhThanh.addItem("Ph?? Th???");cbxTinhThanh.addItem("Ph?? Y??n");cbxTinhThanh.addItem("Qu???ng B??nh");cbxTinhThanh.addItem("Qu???ng Nam");
		cbxTinhThanh.addItem("Qu???ng Ng??i");cbxTinhThanh.addItem("Qu???ng Ninh");cbxTinhThanh.addItem("Qu???ng Tr???");cbxTinhThanh.addItem("S??c Tr??ng");
		cbxTinhThanh.addItem("S??n La");cbxTinhThanh.addItem("T??y Ninh");cbxTinhThanh.addItem("Th??i B??nh");cbxTinhThanh.addItem("Th??i Nguy??n");
		cbxTinhThanh.addItem("Thanh H??a");cbxTinhThanh.addItem("Th???a Thi??n Hu???");cbxTinhThanh.addItem("Ti???n Giang");cbxTinhThanh.addItem("Th??nh ph??? H??? Ch?? Minh");
		cbxTinhThanh.addItem("Tr?? Vinh");cbxTinhThanh.addItem("Tuy??n Quang");cbxTinhThanh.addItem("V??nh Long");cbxTinhThanh.addItem("V??nh Ph??c");
		cbxTinhThanh.addItem("Y??n B??i");
		
		pnTinhThanh.add(lblTinhThanh);
		pnTinhThanh.add(cbxTinhThanh);
		pnThongTin.add(pnTinhThanh);
		
		JPanel pnMess = new JPanel();
		txtMess = new JTextField(32);
		txtMess.setEditable(false);
		txtMess.setBorder(null);
		txtMess.setForeground(Color.red);
		txtMess.setFont(new Font("Arial", Font.ITALIC, 12));
		pnMess.add(txtMess);
		pnThongTin.add(pnMess);
		
			
		lblMaDiaDanh.setPreferredSize(lblTenDiaDanh.getPreferredSize());
		lblMoTa.setPreferredSize(lblTenDiaDanh.getPreferredSize());
		lblTinhThanh.setPreferredSize(lblTenDiaDanh.getPreferredSize());
		
		btnLamMoi = new JButton("L??m m???i");
		btnLamMoi.setIcon(new ImageIcon("Icon/xoarong.png"));
		btnLuu = new JButton("L??u");
		btnLuu.setIcon(new ImageIcon("Icon/save.png"));
		btnThoat = new JButton("Tho??t");
		btnThoat.setIcon(new ImageIcon("Icon/thoat.png"));
		
		pnChucNang.add(btnLamMoi);
		pnChucNang.add(btnLuu);
		pnChucNang.add(btnThoat);
		
		btnLuu.addActionListener(this);
		btnLamMoi.addActionListener(this);
		btnThoat.addActionListener(this);
		
		if (flag == true) {
			dinhDangMaDiaDanh();
			txtTenDiaDanh.setText("");
			txtMoTa.setText("");
			cbxTinhThanh.setSelectedItem("An Giang");
		}
		else {
			txtMaDiaDanh.setText(diadanh.getMaDiaDanh());
			txtTenDiaDanh.setText(diadanh.getTenDiaDanh());
			txtMoTa.setText(diadanh.getMoTa());
			cbxTinhThanh.setSelectedItem(diadanh.getTinhThanh());
		}
		btnLuu.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				// TODO Auto-generated method stub
				if(flag == true) {
					if(validData()) {
						String maDiaDanh = txtMaDiaDanh.getText().trim();
						String tenDiaDanh = txtTenDiaDanh.getText().trim();
						String moTa = txtMoTa.getText().trim();
						String tinhThanh = (String) cbxTinhThanh.getSelectedItem();
						diadanh = new DiaDanh(maDiaDanh,tenDiaDanh,moTa,tinhThanh);
						try {
							if(diaDanh_DAO.themDiaDanh(diadanh))
							{
								JOptionPane.showMessageDialog(null , "Th??m th??nh c??ng","Th??ng b??o",JOptionPane.INFORMATION_MESSAGE);
								qldd.modeltable.addRow(new Object[] {
										maDiaDanh,tenDiaDanh,moTa,tinhThanh
								});
							}
						} catch (HeadlessException | RemoteException e1) {
							// TODO Auto-generated catch block
							e1.printStackTrace();
						}
						dispose();
					}			
				}
				else if (flag == false ) {
					if(qldd.row>=0) {
						String maDiaDanh = txtMaDiaDanh.getText().toString();
						String tenDiaDanh = txtTenDiaDanh.getText().toString();
						String moTa = txtMoTa.getText().toString();
						String tinhThanh = (String) cbxTinhThanh.getSelectedItem();
						diadanh = new DiaDanh(maDiaDanh,tenDiaDanh,moTa,tinhThanh);
						try {
							if(diaDanh_DAO.update(diadanh)) {
								qldd.table.setValueAt(txtTenDiaDanh.getText(), qldd.row, 1);
								qldd.table.setValueAt(txtMoTa.getText(),qldd.row,2);
								qldd.table.setValueAt(cbxTinhThanh.getSelectedItem().toString(), qldd.row, 3);	
							}
						} catch (RemoteException e1) {
							// TODO Auto-generated catch block
							e1.printStackTrace();
						}
					}
					JOptionPane.showMessageDialog(null , "S???a th??nh c??ng","Th??ng b??o",JOptionPane.INFORMATION_MESSAGE);
					dispose();
				}	
			}
		});
	}
	
	public static void main(String[] args) {
		
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub
		Object o = e.getSource();
		if (o.equals(btnLamMoi)) {
			txtTenDiaDanh.setText("");
			txtMoTa.setText("");
			txtMaDiaDanh.requestFocus();
		}
		else if (o.equals(btnThoat)) {
			int kt = JOptionPane.showConfirmDialog(this, "B???n c?? ch???c ch???n mu???n tho??t kh??ng","Th??ng b??o",JOptionPane.YES_NO_OPTION);
			if(kt == JOptionPane.YES_OPTION) {
				dispose();
			}
		}
	}
	private void showMessage(String message, JTextField txt) {
		txt.requestFocus();
		txtMess.setText(message);
	}
	private boolean validData() {
		String tenDiaDanh = txtTenDiaDanh.getText().trim();
		if(!(tenDiaDanh.length() > 0))
		{
			showMessage("Error: T??n ?????a danh kh??ng ???????c r???ng", txtTenDiaDanh);
			return false;
		}
		return true;
	}
	private void dinhDangMaDiaDanh() throws RemoteException {
		String maDD = "";
		maDD += "DD";
		if(String.valueOf(diaDanh_DAO.layMaDiaDanhLonNhat()).length() == 2) {
			maDD += "00";
		}
		else if(String.valueOf(diaDanh_DAO.layMaDiaDanhLonNhat()).length() == 3) {
			maDD += "0";
		}
		else if(String.valueOf(diaDanh_DAO.layMaDiaDanhLonNhat()).length() == 1) {
			maDD += "";
		}
		maDD += String.valueOf(diaDanh_DAO.layMaDiaDanhLonNhat()+1);
		txtMaDiaDanh.setText(maDD);
	}

}

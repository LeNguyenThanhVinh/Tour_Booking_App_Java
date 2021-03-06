package ui;
import java.awt.BorderLayout;

import java.awt.Color;
import java.awt.Container;
import java.awt.Dimension;
import java.awt.EventQueue;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.net.MalformedURLException;
import java.rmi.Naming;
import java.rmi.NotBoundException;
import java.rmi.RemoteException;
import java.sql.SQLException;
import java.util.List;

import javax.swing.BorderFactory;
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
import javax.swing.JSplitPane;
import javax.swing.JTabbedPane;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.border.Border;
import javax.swing.border.TitledBorder;
import javax.swing.table.DefaultTableModel;

import config.config;
import dao.DiaDanh_DAO;
import dao.KhachHang_DAO;
import entity.DiaDanh;
import entity.KhachHang;

public class UI_ThongTinKhachHang extends JPanel  implements ActionListener,MouseListener{
	String conf = config.conf;
	DefaultTableModel modeltable;
	JTable table;
	JButton  btnThem, btnSua, btnLoad, btnThoat;
	JComboBox cbxTimKiem;
	DiaDanh_DAO diaDanh_DAO;
	KhachHang_DAO khachHang_DAO;
	List<DiaDanh> listDD;
	List<KhachHang> listKH;
	DiaDanh diadanh;
	KhachHang khachHang;
	JPanel pnCenter;
	boolean flag;
	int row;
	DefaultTableCellDiaDanh cellDiaDanh;
	public UI_ThongTinKhachHang() throws MalformedURLException, RemoteException, NotBoundException {
		SecurityManager securityManager = System.getSecurityManager();
		if(securityManager == null) {
			
			System.setProperty("java.security.policy", "policy/policy.policy");
			System.setSecurityManager(new SecurityManager());
			
		}
		diaDanh_DAO = (DiaDanh_DAO) Naming.lookup(conf+"/diaDanh_DAO");
		khachHang_DAO = (KhachHang_DAO) Naming.lookup(conf+"/khachHang_DAO");
		
		Border backline = BorderFactory.createLineBorder(Color.BLACK);
		setBorder(backline);
		setLayout(new BorderLayout());
		JPanel pnNorth = new JPanel();
		pnNorth.setBackground(new Color(230, 247, 255));
		JLabel lblTieuDe = new JLabel("Qu???n L?? Kh??ch H??ng");
		Font font =new Font("Arial",Font.BOLD,25);
		lblTieuDe.setFont(font);
		lblTieuDe.setForeground(Color.RED);
		pnNorth.add(lblTieuDe);
		add(pnNorth,BorderLayout.NORTH);
		
		Font font2 =new Font("Arial",Font.PLAIN,17);
		JPanel pnBorderThongTin = new JPanel();
		pnBorderThongTin.setBackground(new Color(230, 247, 255));
		pnBorderThongTin.setLayout(new BoxLayout(pnBorderThongTin, BoxLayout.Y_AXIS)); 
		Border borderThongtin = BorderFactory.createLineBorder(new Color(51, 51, 0));
		TitledBorder borderTitleThongtin = new TitledBorder(borderThongtin, "Th??ng tin: ");
		borderTitleThongtin.setTitleColor(new Color(0, 102, 255));
		borderTitleThongtin.setTitleFont(font2);
		Font font3 =new Font("Arial",Font.PLAIN,15);
		String[] chuoi = {"M?? kh??ch h??ng","T??n kh??ch h??ng","S??? ??i???n tho???i","Email","CMND","?????a ch???","Gi???i t??nh"};
		modeltable = new DefaultTableModel(chuoi,0);
		table = new JTable(modeltable);
		table.getTableHeader().setBackground(new Color(230, 247, 255));
		table.setFillsViewportHeight(true);
        table.setBackground(new Color(255, 255, 255));
		
		JScrollPane sc = new JScrollPane(table);
		sc.setBackground(new Color(230, 247, 255));
		table.getTableHeader().setFont(font3);
		sc.setBorder(borderTitleThongtin);
		add(sc,BorderLayout.CENTER);

			//SOUTH
		JPanel pnSouth = new JPanel();
		pnSouth.setBackground(new Color(230, 247, 255));
		pnSouth.setLayout(new BoxLayout(pnSouth, BoxLayout.Y_AXIS));
		pnSouth.setPreferredSize(new Dimension(200,70));
		add(pnSouth,BorderLayout.SOUTH);
	
		JPanel pnBorderTacVu = new JPanel();
		pnBorderTacVu.setBackground(new Color(230, 247, 255));
		pnBorderTacVu.setLayout(new BoxLayout(pnBorderTacVu, BoxLayout.Y_AXIS)); 
		Border borderTacVu = BorderFactory.createLineBorder(new Color(51, 51, 0));
		TitledBorder titleborderTacVu = new TitledBorder(borderTacVu, "Ch???n t??c v???: ");
		titleborderTacVu.setTitleColor(new Color(0, 102, 255));
		titleborderTacVu.setTitleFont(font2);
		pnBorderTacVu.setBorder(titleborderTacVu);
		pnSouth.add(pnBorderTacVu);
	       
		JPanel pnLeft = new JPanel();
		pnLeft.setBackground(new Color(230, 247, 255));
		JPanel pnRight = new JPanel();
		pnRight.setBackground(new Color(230, 247, 255));
		JSplitPane sp = new JSplitPane(JSplitPane.HORIZONTAL_SPLIT,pnLeft,pnRight);
			
			//LEFT
		JLabel lblTimKiem = new JLabel("T??m ki???m theo t???nh: ");
		lblTimKiem.setForeground(Color.BLACK);
		lblTimKiem.setIcon(new ImageIcon("Icon/search2.png"));		//???? S???A
		cbxTimKiem = new JComboBox();
		cbxTimKiem.setForeground(Color.BLACK);
		//cbxTimKiem.setBackground(Color.cyan);				//???? S???A
		cbxTimKiem.addItem("An Giang ");cbxTimKiem.addItem("B?? r???a ??? V??ng t??u");cbxTimKiem.addItem("B???c Giang");
		cbxTimKiem.addItem("B???c K???n");cbxTimKiem.addItem("B???c Li??u");cbxTimKiem.addItem("B???c Ninh");
		cbxTimKiem.addItem("B???n Tre");cbxTimKiem.addItem("B??nh ?????nh");cbxTimKiem.addItem("B??nh D????ng");cbxTimKiem.addItem("B??nh Ph?????c");
		cbxTimKiem.addItem("B??nh Thu???n");cbxTimKiem.addItem("C?? Mau");cbxTimKiem.addItem("C???n Th??");cbxTimKiem.addItem("Cao B???ng ");
		cbxTimKiem.addItem("???? N???ng");cbxTimKiem.addItem("?????k L???k");cbxTimKiem.addItem("?????k N??ng");cbxTimKiem.addItem("??i???n Bi??n");
		cbxTimKiem.addItem("?????ng Nai");cbxTimKiem.addItem("?????ng Th??p");cbxTimKiem.addItem("Gia Lai");cbxTimKiem.addItem("H?? Giang");
		cbxTimKiem.addItem("H?? Nam");cbxTimKiem.addItem("H?? N???i ");cbxTimKiem.addItem("H?? T??nh");cbxTimKiem.addItem("H???i D????ng ");
		cbxTimKiem.addItem("H???i Ph??ng");cbxTimKiem.addItem("H???u Giang");cbxTimKiem.addItem("H??a B??nh");cbxTimKiem.addItem("H??ng Y??n");
		cbxTimKiem.addItem("Kh??nh H??a");cbxTimKiem.addItem("Ki??n Giang");cbxTimKiem.addItem("Kon Tum");cbxTimKiem.addItem("Lai Ch??u");
		cbxTimKiem.addItem("L??m ?????ng");cbxTimKiem.addItem("L???ng S??n");cbxTimKiem.addItem("L??o Cai");cbxTimKiem.addItem("Long An");
		cbxTimKiem.addItem("Nam ?????nh");cbxTimKiem.addItem("Ngh??? An");cbxTimKiem.addItem("Ninh B??nh");cbxTimKiem.addItem("Ninh Thu???n");
		cbxTimKiem.addItem("Ph?? Th???");cbxTimKiem.addItem("Ph?? Y??n");cbxTimKiem.addItem("Qu???ng B??nh");cbxTimKiem.addItem("Qu???ng Nam");
		cbxTimKiem.addItem("Qu???ng Ng??i");cbxTimKiem.addItem("Qu???ng Ninh");cbxTimKiem.addItem("Qu???ng Tr???");cbxTimKiem.addItem("S??c Tr??ng");
		cbxTimKiem.addItem("S??n La");cbxTimKiem.addItem("T??y Ninh");cbxTimKiem.addItem("Th??i B??nh");cbxTimKiem.addItem("Th??i Nguy??n");
		cbxTimKiem.addItem("Thanh H??a");cbxTimKiem.addItem("Th???a Thi??n Hu???");cbxTimKiem.addItem("Ti???n Giang");cbxTimKiem.addItem("Th??nh ph??? H??? Ch?? Minh");
		cbxTimKiem.addItem("Tr?? Vinh");cbxTimKiem.addItem("Tuy??n Quang");cbxTimKiem.addItem("V??nh Long");cbxTimKiem.addItem("V??nh Ph??c");
		cbxTimKiem.addItem("Y??n B??i");
		cbxTimKiem.setPreferredSize(new Dimension(200, 32));
		cbxTimKiem.setBackground(new Color(230, 247, 255));
		pnLeft.add(lblTimKiem);
		pnLeft.add(cbxTimKiem);
			//RIGHT
		Font font1 =new Font("Arial",Font.PLAIN,17);
		btnThem = new JButton("Th??m");
		btnThem.setIcon(new ImageIcon("Icon/them1.png"));
		btnThem.setForeground(Color.BLACK);
		btnThem.setBackground(new Color(230, 247, 255));
		btnThem.setPreferredSize(new Dimension(120,32));
		btnThem.setFont(font1);
		//btnThem.setBackground(Color.cyan);				//???? S???A
		btnSua = new JButton("S???a");
		btnSua.setIcon(new ImageIcon("Icon/sua.png"));
		btnSua.setForeground(Color.BLACK);
		btnSua.setBackground(new Color(230, 247, 255));
		btnSua.setPreferredSize(new Dimension(120,32));
		btnSua.setFont(font1);
		//btnSua.setBackground(Color.cyan);					//???? S???A
		btnLoad = new JButton("Hi???n th??? l???i th??ng tin");
		btnLoad.setIcon(new ImageIcon("Icon/load.png"));
		btnLoad.setForeground(Color.BLACK);
		btnLoad.setBackground(new Color(230, 247, 255));
		btnLoad.setPreferredSize(new Dimension(210,32));
		btnLoad.setFont(font1);
		//btnLoad.setBackground(Color.cyan);				//???? S???A
		btnThoat = new JButton("Tho??t");
		btnThoat.setIcon(new ImageIcon("Icon/thoat1.png"));
		btnThoat.setBackground(new Color(230, 247, 255));
		btnThoat.setForeground(Color.BLACK);
		btnThoat.setPreferredSize(new Dimension(120,32));
		//btnThoat.setBackground(Color.cyan);				//???? S???A
		pnRight.add(btnThem);
		pnRight.add(btnSua);
		pnRight.add(btnLoad);
		pnRight.add(btnThoat);
		pnBorderTacVu.add(sp);
		
		//JSplitPane sp1 = new JSplitPane(JSplitPane.VERTICAL_SPLIT,sc,pnSouth);
		//add(sp1,BorderLayout.CENTER);
		
		btnThem.addActionListener(this);
		btnSua.addActionListener(this);
		cbxTimKiem.addActionListener(this);
		btnLoad.addActionListener(this);
		btnThoat.addActionListener(this);
		
		khachHang = new KhachHang();
		table.addMouseListener(this);
		modeltable.setRowCount(0);
		listKH	= khachHang_DAO.LayHetKhachHang();
		for(KhachHang kh : listKH) {
			modeltable.addRow(new Object[] {
					kh.getMaKH(), kh.getTenKH(), kh.getSoDT(), kh.getEmail(), kh.getCmnd(), kh.getDiaChi(), kh.isGioiTinh()
			});
		}
//		cellDiaDanh = new DefaultTableCellDiaDanh();
		
//		diadanh = new DiaDanh();
//		table.addMouseListener(this);
//		
//		modeltable.setRowCount(0);
//		listDD	= diaDanh_DAO.getalltbDiaDanh();
//		for(DiaDanh dd : listDD) {
//			modeltable.addRow(new Object[] {
//					dd.getMaDiaDanh(),dd.getTenDiaDanh(),dd.getMoTa(),dd.getTinhThanh()
//			});
//		}
//		cellDiaDanh = new DefaultTableCellDiaDanh();
		
		//cellDiaDanh.getTableCellRendererComponent(table, "", true, true, 1, 5);
	}
	public void hienThiThongTin() throws RemoteException {
		modeltable.setRowCount(0);
		table.removeAll();
		listKH	= khachHang_DAO.LayHetKhachHang();
		for(KhachHang kh : listKH) {
			modeltable.addRow(new Object[] {
					kh.getMaKH(), kh.getTenKH(), kh.getSoDT(), kh.getEmail(), kh.getCmnd(), kh.getDiaChi(), kh.isGioiTinh()
			});	
		}
		JOptionPane.showMessageDialog(this, "Hi???n th??? th??nh c??ng");
	}
	@Override
	public void actionPerformed(ActionEvent e) {
		Object o = e.getSource();
		if(o.equals(btnThem)) {
			btnThem.setBackground(new Color(153, 255, 153));				//???? S???A
			btnThem.setForeground(Color.BLACK);
			btnLoad.setBackground(null);				//???? S???A
			btnSua.setBackground(null);					//???? S???A
			btnThoat.setBackground(null);
			try {
				new ThongTinDiaDanh(diadanh,true).setVisible(true);
			} catch (MalformedURLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} catch (RemoteException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} catch (NotBoundException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			
		}
		else if(o.equals(btnSua)) {
			btnSua.setBackground(new Color(153, 255, 153));			//???? S???A
			btnLoad.setBackground(null);				//???? S???A
			btnThem.setBackground(null);				//???? S???A
			btnThoat.setBackground(null);
			try {
				new ThongTinDiaDanh(diadanh,false).setVisible(true);
			} catch (MalformedURLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} catch (RemoteException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} catch (NotBoundException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			
		}
		else if(o.equals(btnLoad)) {
			btnLoad.setBackground(new Color(153, 255, 153));				//???? S???A
			btnSua.setBackground(null);					//???? S???A
			btnThem.setBackground(null);				//???? S???A
			btnThoat.setBackground(null);
			try {
				hienThiThongTin();
			} catch (RemoteException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}		
			btnLoad.setBackground(null);				//???? S???A
			btnSua.setBackground(null);					//???? S???A
			btnThem.setBackground(null);				//???? S???A
			btnThoat.setBackground(null);
		}
		else if(o.equals(btnThoat)) {
			btnThoat.setBackground(new Color(153, 255, 153));
			int kt = JOptionPane.showConfirmDialog(this, "B???n c?? ch???c ch???n mu???n tho??t kh??ng","Th??ng b??o",JOptionPane.YES_NO_OPTION);
			if(kt == JOptionPane.YES_OPTION) {				//???? S???A
				System.exit(0);
			}
		}
		else if(o.equals(cbxTimKiem)) {
			try {
				listDD	= diaDanh_DAO.timKiem((String) cbxTimKiem.getSelectedItem());
			} catch (RemoteException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}	
			if(listDD.size() == 0) {
				JOptionPane.showMessageDialog(this, "Kh??ng t??m th???y");
				modeltable.setRowCount(0);
				try {
					listDD	= diaDanh_DAO.getalltbDiaDanh();
				} catch (RemoteException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				for(DiaDanh dd : listDD) {
					modeltable.addRow(new Object[] {
							dd.getMaDiaDanh(),dd.getTenDiaDanh(),dd.getMoTa(),dd.getTinhThanh()
					});
				}
			}
			else {
				modeltable.setRowCount(0);
				for(DiaDanh diadanh : listDD) {
					modeltable.addRow(new Object[] {
							diadanh.getMaDiaDanh(),diadanh.getTenDiaDanh(),diadanh.getMoTa(),diadanh.getTinhThanh()
					});	
				}
			}
		}
	}
	@Override
	public void mouseClicked(MouseEvent e) {
		// TODO Auto-generated method stub
		row = table.getSelectedRow();
		diadanh.setMaDiaDanh(table.getValueAt(row, 0).toString());
		diadanh.setTenDiaDanh(table.getValueAt(row, 1).toString());
		diadanh.setMoTa(table.getValueAt(row, 2).toString());
		diadanh.setTinhThanh(table.getValueAt(row, 3).toString());
	}
	@Override
	public void mousePressed(MouseEvent e) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void mouseReleased(MouseEvent e) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void mouseEntered(MouseEvent e) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void mouseExited(MouseEvent e) {
		// TODO Auto-generated method stub
		
	}
}

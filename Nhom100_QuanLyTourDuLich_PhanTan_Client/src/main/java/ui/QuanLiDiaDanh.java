package ui;
//THÁI ĐÃ SỬA
import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Container;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.net.MalformedURLException;
import java.rmi.Naming;
import java.rmi.NotBoundException;
import java.rmi.RemoteException;
import java.util.ArrayList;
import java.util.List;

import javax.swing.BorderFactory;
import javax.swing.BoxLayout;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JSplitPane;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.border.Border;
import javax.swing.border.TitledBorder;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.JTableHeader;

import config.config;
import dao.DiaDanh_DAO;
import dao.Tour_DAO;
import entity.DiaDanh;
import entity.Tour;



public class QuanLiDiaDanh extends JPanel  implements ActionListener,MouseListener{
	String conf = config.conf;
	DefaultTableModel modeltable;
	JTable table;
	JButton  btnThem, btnSua, btnLoad, btnThoat;
	JComboBox cbxTimKiem;
	DiaDanh_DAO diaDanh_DAO;
	List<DiaDanh> listDD;
	DiaDanh diadanh;
	JPanel pnCenter;
	boolean flag;
	int row;
	DefaultTableCellDiaDanh cellDiaDanh;
	public QuanLiDiaDanh() throws MalformedURLException, RemoteException, NotBoundException {
		SecurityManager securityManager = System.getSecurityManager();
		if(securityManager == null) {
			
			System.setProperty("java.security.policy", "policy/policy.policy");
			System.setSecurityManager(new SecurityManager());
			
		}
		diaDanh_DAO =  (DiaDanh_DAO) Naming.lookup(conf+"/diaDanh_DAO");
		Border backline = BorderFactory.createLineBorder(Color.BLACK);
		setBorder(backline);
		setLayout(new BorderLayout());
		JPanel pnNorth = new JPanel();
		pnNorth.setBackground(new Color(230, 247, 255));
		JLabel lblTieuDe = new JLabel("Quáº£n LÃ½ Ä�á»‹a Danh");
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
		TitledBorder borderTitleThongtin = new TitledBorder(borderThongtin, "ThÃ´ng tin: ");
		borderTitleThongtin.setTitleColor(new Color(0, 102, 255));
		borderTitleThongtin.setTitleFont(font2);
		Font font3 =new Font("Arial",Font.PLAIN,15);
		String[] chuoi = {"MÃ£ Ä‘á»‹a danh","TÃªn Ä‘á»‹a danh","MÃ´ táº£","Tá»‰nh thÃ nh"};
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
		TitledBorder titleborderTacVu = new TitledBorder(borderTacVu, "Chá»�n tÃ¡c vá»¥: ");
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
		JLabel lblTimKiem = new JLabel("TÃ¬m kiáº¿m theo tá»‰nh: ");
		lblTimKiem.setForeground(Color.BLACK);
		lblTimKiem.setIcon(new ImageIcon("Icon/search2.png"));		//Ä�Ãƒ Sá»¬A
		cbxTimKiem = new JComboBox();
		cbxTimKiem.setForeground(Color.BLACK);
		//cbxTimKiem.setBackground(Color.cyan);				//Ä�Ãƒ Sá»¬A
		cbxTimKiem.addItem("An Giang ");cbxTimKiem.addItem("BÃ  rá»‹a â€“ VÅ©ng tÃ u");cbxTimKiem.addItem("Báº¯c Giang");
		cbxTimKiem.addItem("Báº¯c Káº¡n");cbxTimKiem.addItem("Báº¡c LiÃªu");cbxTimKiem.addItem("Báº¯c Ninh");
		cbxTimKiem.addItem("Báº¿n Tre");cbxTimKiem.addItem("BÃ¬nh Ä�á»‹nh");cbxTimKiem.addItem("BÃ¬nh DÆ°Æ¡ng");cbxTimKiem.addItem("BÃ¬nh PhÆ°á»›c");
		cbxTimKiem.addItem("BÃ¬nh Thuáº­n");cbxTimKiem.addItem("CÃ  Mau");cbxTimKiem.addItem("Cáº§n ThÆ¡");cbxTimKiem.addItem("Cao Báº±ng ");
		cbxTimKiem.addItem("Ä�Ã  Náºµng");cbxTimKiem.addItem("Ä�áº¯k Láº¯k");cbxTimKiem.addItem("Ä�áº¯k NÃ´ng");cbxTimKiem.addItem("Ä�iá»‡n BiÃªn");
		cbxTimKiem.addItem("Ä�á»“ng Nai");cbxTimKiem.addItem("Ä�á»“ng ThÃ¡p");cbxTimKiem.addItem("Gia Lai");cbxTimKiem.addItem("HÃ  Giang");
		cbxTimKiem.addItem("HÃ  Nam");cbxTimKiem.addItem("HÃ  Ná»™i ");cbxTimKiem.addItem("HÃ  TÄ©nh");cbxTimKiem.addItem("Háº£i DÆ°Æ¡ng ");
		cbxTimKiem.addItem("Háº£i PhÃ²ng");cbxTimKiem.addItem("Háº­u Giang");cbxTimKiem.addItem("HÃ²a BÃ¬nh");cbxTimKiem.addItem("HÆ°ng YÃªn");
		cbxTimKiem.addItem("KhÃ¡nh HÃ²a");cbxTimKiem.addItem("KiÃªn Giang");cbxTimKiem.addItem("Kon Tum");cbxTimKiem.addItem("Lai ChÃ¢u");
		cbxTimKiem.addItem("LÃ¢m Ä�á»“ng");cbxTimKiem.addItem("Láº¡ng SÆ¡n");cbxTimKiem.addItem("LÃ o Cai");cbxTimKiem.addItem("Long An");
		cbxTimKiem.addItem("Nam Ä�á»‹nh");cbxTimKiem.addItem("Nghá»‡ An");cbxTimKiem.addItem("Ninh BÃ¬nh");cbxTimKiem.addItem("Ninh Thuáº­n");
		cbxTimKiem.addItem("PhÃº Thá»�");cbxTimKiem.addItem("PhÃº YÃªn");cbxTimKiem.addItem("Quáº£ng BÃ¬nh");cbxTimKiem.addItem("Quáº£ng Nam");
		cbxTimKiem.addItem("Quáº£ng NgÃ£i");cbxTimKiem.addItem("Quáº£ng Ninh");cbxTimKiem.addItem("Quáº£ng Trá»‹");cbxTimKiem.addItem("SÃ³c TrÄƒng");
		cbxTimKiem.addItem("SÆ¡n La");cbxTimKiem.addItem("TÃ¢y Ninh");cbxTimKiem.addItem("ThÃ¡i BÃ¬nh");cbxTimKiem.addItem("ThÃ¡i NguyÃªn");
		cbxTimKiem.addItem("Thanh HÃ³a");cbxTimKiem.addItem("Thá»«a ThiÃªn Huáº¿");cbxTimKiem.addItem("Tiá»�n Giang");cbxTimKiem.addItem("ThÃ nh phá»‘ Há»“ ChÃ­ Minh");
		cbxTimKiem.addItem("TrÃ  Vinh");cbxTimKiem.addItem("TuyÃªn Quang");cbxTimKiem.addItem("VÄ©nh Long");cbxTimKiem.addItem("VÄ©nh PhÃºc");
		cbxTimKiem.addItem("YÃªn BÃ¡i");
		cbxTimKiem.setPreferredSize(new Dimension(200, 32));
		cbxTimKiem.setBackground(new Color(230, 247, 255));
		pnLeft.add(lblTimKiem);
		pnLeft.add(cbxTimKiem);
			//RIGHT
		Font font1 =new Font("Arial",Font.PLAIN,17);
		btnThem = new JButton("ThÃªm");
		btnThem.setIcon(new ImageIcon("Icon/them1.png"));
		btnThem.setForeground(Color.BLACK);
		btnThem.setBackground(new Color(230, 247, 255));
		btnThem.setPreferredSize(new Dimension(120,32));
		btnThem.setFont(font1);
		//btnThem.setBackground(Color.cyan);				//Ä�Ãƒ Sá»¬A
		btnSua = new JButton("Sá»­a");
		btnSua.setIcon(new ImageIcon("Icon/sua.png"));
		btnSua.setForeground(Color.BLACK);
		btnSua.setBackground(new Color(230, 247, 255));
		btnSua.setPreferredSize(new Dimension(120,32));
		btnSua.setFont(font1);
		//btnSua.setBackground(Color.cyan);					//Ä�Ãƒ Sá»¬A
		btnLoad = new JButton("Hiá»ƒn thá»‹ láº¡i thÃ´ng tin");
		btnLoad.setIcon(new ImageIcon("Icon/load.png"));
		btnLoad.setForeground(Color.BLACK);
		btnLoad.setBackground(new Color(230, 247, 255));
		btnLoad.setPreferredSize(new Dimension(210,32));
		btnLoad.setFont(font1);
		//btnLoad.setBackground(Color.cyan);				//Ä�Ãƒ Sá»¬A
		btnThoat = new JButton("ThoÃ¡t");
		btnThoat.setIcon(new ImageIcon("Icon/thoat1.png"));
		btnThoat.setBackground(new Color(230, 247, 255));
		btnThoat.setForeground(Color.BLACK);
		btnThoat.setPreferredSize(new Dimension(120,32));
		//btnThoat.setBackground(Color.cyan);				//Ä�Ãƒ Sá»¬A
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
		
		
		
		diadanh = new DiaDanh();
		table.addMouseListener(this);
		
		modeltable.setRowCount(0);
		listDD	= diaDanh_DAO.getalltbDiaDanh();
		for(DiaDanh dd : listDD) {
			modeltable.addRow(new Object[] {
					dd.getMaDiaDanh(),dd.getTenDiaDanh(),dd.getMoTa(),dd.getTinhThanh()
			});
		}
		cellDiaDanh = new DefaultTableCellDiaDanh();
		//cellDiaDanh.getTableCellRendererComponent(table, "", true, true, 1, 5);
	}
	public void hienThiThongTin() throws RemoteException {
		modeltable.setRowCount(0);
		table.removeAll();
		listDD	= diaDanh_DAO.getalltbDiaDanh();
		for(DiaDanh dd : listDD) {
			modeltable.addRow(new Object[] {
					dd.getMaDiaDanh(),dd.getTenDiaDanh(),dd.getMoTa(),dd.getTinhThanh()
			});	
		}
		JOptionPane.showMessageDialog(this, "Hiá»ƒn thá»‹ thÃ nh cÃ´ng");
	}
	@Override
	public void actionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub
		Object o = e.getSource();
		if(o.equals(btnThem)) {
			btnThem.setBackground(new Color(153, 255, 153));				//Ä�Ãƒ Sá»¬A
			btnThem.setForeground(Color.BLACK);
			btnLoad.setBackground(null);				//Ä�Ãƒ Sá»¬A
			btnSua.setBackground(null);					//Ä�Ãƒ Sá»¬A
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
			btnSua.setBackground(new Color(153, 255, 153));			//Ä�Ãƒ Sá»¬A
			btnLoad.setBackground(null);				//Ä�Ãƒ Sá»¬A
			btnThem.setBackground(null);				//Ä�Ãƒ Sá»¬A
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
			btnLoad.setBackground(new Color(153, 255, 153));				//Ä�Ãƒ Sá»¬A
			btnSua.setBackground(null);					//Ä�Ãƒ Sá»¬A
			btnThem.setBackground(null);				//Ä�Ãƒ Sá»¬A
			btnThoat.setBackground(null);
			try {
				hienThiThongTin();
			} catch (RemoteException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}		
			btnLoad.setBackground(null);				//Ä�Ãƒ Sá»¬A
			btnSua.setBackground(null);					//Ä�Ãƒ Sá»¬A
			btnThem.setBackground(null);				//Ä�Ãƒ Sá»¬A
			btnThoat.setBackground(null);
		}
		else if(o.equals(btnThoat)) {
			btnThoat.setBackground(new Color(153, 255, 153));
			int kt = JOptionPane.showConfirmDialog(this, "Báº¡n cÃ³ cháº¯c cháº¯n muá»‘n thoÃ¡t khÃ´ng","ThÃ´ng bÃ¡o",JOptionPane.YES_NO_OPTION);
			if(kt == JOptionPane.YES_OPTION) {				//Ä�Ãƒ Sá»¬A
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
				JOptionPane.showMessageDialog(this, "KhÃ´ng tÃ¬m tháº¥y");
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

//package ui;
//import java.awt.BorderLayout;
//
//
//
//import java.awt.Color;
//import java.awt.Container;
//import java.awt.Dimension;
//import java.awt.FlowLayout;
//import java.awt.Font;
//import java.awt.GridLayout;
//import java.awt.event.ActionEvent;
//import java.awt.event.ActionListener;
//import java.awt.event.KeyAdapter;
//import java.awt.event.KeyEvent;
//import java.sql.Date;
//import java.sql.SQLException;
//import java.time.LocalDate;
//import java.util.List;
//
//import javax.swing.BoxLayout;
//import javax.swing.ButtonGroup;
//import javax.swing.ImageIcon;
//import javax.swing.JButton;
//import javax.swing.JComboBox;
//import javax.swing.JFrame;
//import javax.swing.JLabel;
//import javax.swing.JOptionPane;
//import javax.swing.JPanel;
//import javax.swing.JRadioButton;
//import javax.swing.JScrollPane;
//import javax.swing.JSplitPane;
//import javax.swing.JTable;
//import javax.swing.JTextField;
//import javax.swing.table.DefaultTableModel;
//
//import dao.DAO_NhanVien;
//import entity.NhanVien;
//public class UI_NhanVien extends JFrame implements ActionListener{
//	//sao m bảo nhập đại chưa set
//	JLabel lblMaNV, lblTenNV, lblEmail, lblDiaChi, lblSDT, lblCMND, lblNVL, lblUser, lblPass, lblGioiTinh, lblTinhTrang,lblChuThich1,lblChuThich2;
//	JTextField txtMaNV, txtTenNV, txtEmail, txtDiaChi, txtSDT, txtCMND,txtNVL;
//	ButtonGroup btnGroup;
//	JRadioButton radNam, radNu,radDangLam,radNghi;
//	JButton btnThem, btnXoa, btnUpdate,btnThoat;
//	JPanel pnNorth;
//	JPanel pnMain;
//	JComboBox<NhanVien> cbxTinhTrang,cbGioiTinh;
//	ImageIcon background;
//	private DAO_NhanVien dao_nv = new DAO_NhanVien();	
//	private UI_ThongTinNhanVien ttnv = new UI_ThongTinNhanVien();
//	//private JDateChooser dateNgayVaoLam;
//	/*
//	@Override
//	public void paint(Graphics g) {
//        super.paint(g);
//        g.drawImage(new ImageIcon("Icon/1767.jpg").getImage(), 0, 30, getWidth(), getHeight(), null);
//	}
//	public void setBackground(ImageIcon img)
//	{
//		this.background=img;
//	}*/
//	public UI_NhanVien()  {
//		setTitle("TTKH");
//		setDefaultCloseOperation(this.DISPOSE_ON_CLOSE);	
//		setSize(500,500);
//		setLocationRelativeTo(null);
//		List<String> list_MaNV = dao_nv.getListMaNV();
//		/*
//		//Container con = getContentPane();
//		//background=null;
//		pnMain = new JPanel()
//		{
//			@Override
//			public void paintComponent(Graphics g) {
//				super.paintComponent(g);
//				if(background!=null)
//				{
//					g.drawImage(background.getImage(),
//							0,0,getWidth(),getHeight(),null);
//				}
//			}
//		};
//		pnMain.setLayout(new BorderLayout());
//		add(pnMain,BorderLayout.CENTER);*/
//		
//		
//		
//		
//		
//		 pnNorth = new JPanel() { };
//		JLabel lblTieuDe = new JLabel("Thông Tin Nhân Viên");
//		Font font =new Font("Arial",Font.BOLD,15);
//		lblTieuDe.setFont(font);
//		lblTieuDe.setForeground(Color.RED);
//		pnNorth.add(lblTieuDe);
//		add(pnNorth,BorderLayout.NORTH);
//		
//		JPanel pnCenter = new JPanel();
//		pnCenter.setLayout(new BoxLayout(pnCenter, BoxLayout.Y_AXIS));
//		JPanel pnThongTin = new JPanel();
//		JPanel pnChucNang = new JPanel();
//		pnChucNang.setLayout(new FlowLayout(FlowLayout.RIGHT));
//		pnThongTin.setLayout(new BoxLayout(pnThongTin, BoxLayout.Y_AXIS));
//		pnCenter.add(pnThongTin);
//		pnCenter.add(pnChucNang);
//		add(pnCenter,BorderLayout.CENTER);
//			//Ma
//		JPanel pnMaNV = new JPanel();
//		lblMaNV = new JLabel("Mã nhân viên");
//		txtMaNV = new JTextField(18);
//		pnMaNV.add(lblMaNV);
//		pnMaNV.add(txtMaNV);
//		pnThongTin.add(pnMaNV);
//		
//			//Ten
//		JPanel pnTenNV = new JPanel();
//		lblTenNV = new JLabel("Tên nhân viên");
//		txtTenNV = new JTextField(18);
//		pnTenNV.add(lblTenNV);
//		pnTenNV.add(txtTenNV);
//		pnThongTin.add(pnTenNV);
//		//Email
//		JPanel pnEmail = new JPanel();
//		lblEmail = new JLabel("Email");
//		txtEmail = new JTextField(18);
//		pnEmail.add(lblEmail);
//		pnEmail.add(txtEmail);
//		pnThongTin.add(pnEmail);
//		//DiaChi
//		JPanel pnDiaCHi = new JPanel();
//		lblDiaChi = new JLabel("Địa Chỉ");
//		txtDiaChi = new JTextField(18);
//		pnDiaCHi.add(lblDiaChi);
//		pnDiaCHi.add(txtDiaChi);
//		pnThongTin.add(pnDiaCHi);
//		
//		//SDT
//		JPanel pnSDT = new JPanel();
//		lblSDT = new JLabel("Số Điện Thoại");
//		txtSDT = new JTextField(18);
//		pnSDT.add(lblSDT);
//		pnSDT.add(txtSDT);
//		pnThongTin.add(pnSDT);
//		
//		//CMND
//		JPanel pnCMND = new JPanel();
//		lblCMND = new JLabel("CMND");
//		txtCMND = new JTextField(18);
//		pnCMND.add(lblCMND);
//		pnCMND.add(txtCMND);
//		pnThongTin.add(pnCMND);
//
//		
//			//NgayVaoLam
//		JPanel pnNVL = new JPanel();
//		lblNVL = new JLabel("Ngày vào làm");
//		txtNVL = new JTextField(18);
//		pnNVL.add(lblNVL);
//		pnNVL.add(txtNVL);
//		pnThongTin.add(pnNVL);
//		//GioiTinh
//	
//
////			//GioiTinh
////		String GT[] = {"Nam","Nữ"};
////		JPanel pnGioiTinh = new JPanel();
////		lblGioiTinh = new JLabel("Giới Tính:");
////		cbGioiTinh = new JComboBox(GT);
////
////		pnGioiTinh.add(lblGioiTinh);
////		pnGioiTinh.add(cbGioiTinh);
////		pnThongTin.add(pnGioiTinh);
//		//GioiTinh
//		JPanel pnGioiTinh = new JPanel();
//		lblGioiTinh = new JLabel("Giới Tính:");
//		radNam = new JRadioButton("Nam");
//		radNu = new JRadioButton("Nữ");
//		ButtonGroup groupGioitinh = new ButtonGroup();
//		groupGioitinh.add(radNam);
//		groupGioitinh.add(radNu);
//		pnGioiTinh.add(lblGioiTinh);
//		pnGioiTinh.add(radNam);pnGioiTinh.add(radNu);
//		pnThongTin.add(pnGioiTinh);	
//		
//		
//		JPanel pnTinhTrang = new JPanel();
//		lblTinhTrang = new JLabel("TinhTrang:");
//		radDangLam = new JRadioButton("Đang Làm");
//		radNghi = new JRadioButton("Nghỉ");
//		ButtonGroup groupTinhTrang = new ButtonGroup();
//		groupTinhTrang.add(radDangLam);
//		groupTinhTrang.add(radNghi);
//		pnTinhTrang.add(lblTinhTrang);
//		pnTinhTrang.add(radDangLam);
//		pnTinhTrang.add(radNghi);
//		pnThongTin.add(pnTinhTrang);	
//		
//		
//		
////		//TinhTrang
////		String TT[] = {"Đang làm","Nghỉ"};
////		JPanel pnTinhTrang = new JPanel();
////		lblTinhTrang = new JLabel("Tình Trạng:");
////		cbxTinhTrang = new JComboBox(TT);
////		pnTinhTrang.add(lblTinhTrang);
////		pnTinhTrang.add(cbxTinhTrang);
////		pnThongTin.add(pnTinhTrang);
//
//		
//
//
//		
////		
//		lblGioiTinh.setPreferredSize(lblSDT.getPreferredSize());
//		radNam.setPreferredSize(lblSDT.getPreferredSize());
//		radNu.setPreferredSize(lblSDT.getPreferredSize());
//		
//		lblMaNV.setPreferredSize(lblSDT.getPreferredSize());
//		lblEmail.setPreferredSize(lblSDT.getPreferredSize());
//		lblSDT.setPreferredSize(lblSDT.getPreferredSize());
//		lblCMND.setPreferredSize(lblSDT.getPreferredSize());
//		lblDiaChi.setPreferredSize(lblSDT.getPreferredSize());
//		lblNVL.setPreferredSize(lblSDT.getPreferredSize());
//		lblGioiTinh.setPreferredSize(lblSDT.getPreferredSize());
//		
//		lblTinhTrang.setPreferredSize(lblSDT.getPreferredSize());
//		radDangLam.setPreferredSize(lblSDT.getPreferredSize());
//		radNghi.setPreferredSize(lblCMND.getPreferredSize());
//		
//		
//		btnThem = new JButton("Them");
//		btnThem.setIcon(new ImageIcon("Icon/them.png"));
//		btnXoa = new JButton("Xoa Rong");
//		btnXoa.setIcon(new ImageIcon("Icon/xoa.png"));
//		btnUpdate = new JButton("Sua");
//		btnUpdate.setIcon(new ImageIcon("Icon/save.png"));
//		btnThoat = new JButton("Thoat");
//		btnThoat.setIcon(new ImageIcon("Icon/thoat.png"));
//		
//		
//		pnChucNang.add(btnThem);
//		pnChucNang.add(btnXoa);
//		pnChucNang.add(btnUpdate);
//		pnChucNang.add(btnThoat);
//		
//		btnThem.addActionListener(this);
//		btnXoa.addActionListener(this);
//		btnUpdate.addActionListener(this);
//		btnThoat.addActionListener(this);
//
//		txtMaNV.addKeyListener(new KeyAdapter() {
//			@Override
//			public void keyReleased(KeyEvent e) {
//				
//
//		        
//			NhanVien nv = dao_nv.getNhanVienbyHDId("maNV", txtMaNV.getText());
//			if(nv!=null) {
//			
//				txtTenNV.setText(nv.getTenNV());
//				txtEmail.setText(nv.getEmail());
//				txtCMND.setText(nv.getCmnd());
//				txtDiaChi.setText(nv.getDiaChi());
//				txtNVL.setText(nv.getNgayVaoLam().toString());
//				txtSDT.setText(nv.getSoDienThoai());
//			
//			}
//			else {
//		
//				txtTenNV.setText("");
//				txtEmail.setText("");
//				txtCMND.setText("");
//				txtDiaChi.setText("");
//				txtNVL.setText("");
//				txtSDT.setText("");
//			
//			}
//			
//			}
//		});
//	
//
//
//	}
//
//	public static void main(String[] args) {
//		UI_NhanVien ttnv = new UI_NhanVien();
//		//ttnv.setBackground(new ImageIcon("Icon/1767.jpg"));
//		ttnv.setVisible(true);
//
//	}
//
//	@Override
//	public void actionPerformed(ActionEvent e) {
//		// TODO Auto-generated method stub
//		Object o = e.getSource();
//		if(o.equals(btnThem)) {
//			if(validData()) {
//			int row = ttnv.table.getSelectedRow();
//			String maNV= txtMaNV.getText();
//			String tenNV= txtTenNV.getText();
//			String email = txtEmail.getText();
//			String diaChi = txtDiaChi.getText();
//			String soDT = txtSDT.getText();
//			String cmnd = txtCMND.getText();
//			Date ngayVaoLam =Date.valueOf(LocalDate.now());
//			boolean tinhTrang =false;
//			if(radDangLam.isSelected())
//				tinhTrang =true;
//			
//			boolean gioiTinh = false;
//			if(radNam.isSelected())
//				gioiTinh = true;
//			
//
//			
//			NhanVien nv = new NhanVien(maNV, tenNV,cmnd, email, soDT, diaChi,gioiTinh,tinhTrang, ngayVaoLam);
//	
//			dao_nv.themNV(nv);
//			ttnv.modeltable.addRow(new Object [] {nv.getMaNV(),nv.getTenNV(),nv.getEmail(),nv.getDiaChi(),nv.getCmnd(),nv.getSoDienThoai(),nv.getNgayVaoLam(),nv.isGioiTinh(),nv.isTinhTrang()});
//			JOptionPane.showMessageDialog(this, "Thêm thành công");
//			}		
//		
//		//	}		
//		}
//		else if(o.equals(btnUpdate)) {
//			
//			try {
//				
//			
//				if(validData()) {
//					JFrame f= new JFrame();
//					int hoi=JOptionPane.showConfirmDialog(f, "Nhân viên này sẽ được cập nhật","Chú ý",JOptionPane.YES_NO_OPTION);
//					if(hoi==JOptionPane.YES_OPTION) {
//						String ma= txtMaNV.getText();
//						String cmnd = txtCMND.getText();
//						String ten=txtTenNV.getText();
//						String diachi=txtDiaChi.getText();
//						String email= txtEmail.getText();
//						String sodt= txtSDT.getText();
//						Date ngayVaoLam = Date.valueOf(txtNVL.getText());
//						boolean tinhTrang =false;
//						if(radDangLam.isSelected())
//							tinhTrang =true;
//						
//						boolean gioiTinh = false;
//						if(radNam.isSelected())
//							gioiTinh = true;
//						NhanVien nv= new NhanVien(ma, ten,cmnd, email, sodt, diachi,gioiTinh,tinhTrang, ngayVaoLam);
//						dao_nv.update(nv);
//						JOptionPane.showMessageDialog(null, "Cập nhật nhân viên thành công");
//					}
//				}
//			
//			} catch (Exception e2) {
//				e2.printStackTrace();
//			}
//		}
//		else if(o.equals(btnXoa)) {
//			txtMaNV.setText("");
//			txtTenNV.setText("");
//			txtEmail.setText("");
//			txtCMND.setText("");
//			txtDiaChi.setText("");
//			txtNVL.setText("");
//			txtSDT.setText("");
//			radNam.setSelected(true);
//			
//			
//		}
//		else if(o.equals(btnThoat)) {
//			setVisible(false);
//			dispose();
//		}
//		
//		
//		
//	}
//	private boolean validData() {
//		String tenNV = txtTenNV.getText();
//		String cmnd = txtCMND.getText();
//		String diaChi = txtDiaChi.getText();
//		String email = txtEmail.getText();
//		String sdt = txtSDT.getText();
//		if(!(tenNV.length()>0)){
//
//			JOptionPane.showMessageDialog(null, "Tên nhân viên không trống " );
//		
//			return false;
//		}
////		}
//		if(!(cmnd.length()>0 && cmnd.matches("\\d{9}"))) {
//			JOptionPane.showMessageDialog(null, "Chứng minh nhân dân gồm  9 số");
//			return false;
//		}
//		if(!(diaChi.length()>0)) {
//			JOptionPane.showMessageDialog(null, "Địa chỉ không được để trống " );
//			return false;
//		}
//		if(! diaChi.matches("^[0-9a-zA-Z_ÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶ\" +\r\n" + 
//				"	            \"ẸẺẼỀỀỂưăạảấầẩẫậắằẳẵặẹẻẽềềểỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợ\" +\r\n" + 
//				"	            \"ụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ\\\\s/\\\\.,]+$")){
//			JOptionPane.showMessageDialog(null, "Địa chỉ không hợp lệ " );
//			return false;
//	            }
//		if(!(email.length()>0 )) {
//			JOptionPane.showMessageDialog(null, "Email không được để trống");
//			return false;
//		}
//		if( !email.matches("^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
//				+ "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$")) {
//			JOptionPane.showMessageDialog(null, "Email sai cú pháp");
//			return false;
//		}
//		if(!(sdt.length()>0 )) {
//			JOptionPane.showMessageDialog(null, "Số điện thoại không được bỏ trống");
//			return false;
//		}
//		if(!(sdt.matches("^[0][1-9][0-9]{8}$"))) {
//			JOptionPane.showMessageDialog(null, "Số điện thoại gồm 10 kí tự số và bắt đầu từ kí tự 0");
//			return false;
//		}
//		return rootPaneCheckingEnabled;
//		
//	}
//
//	public void SearchNV(String properties) throws SQLException {
//		DAO_NhanVien dao_nv = new DAO_NhanVien();
//		UI_NhanVien nv1 = new UI_NhanVien();
//		
//
//	}
//}
//========================================================CỦA THÁI
//========================================================CỦA THÁI
//========================================================CỦA THÁI
//========================================================CỦA THÁI
//========================================================CỦA THÁI
//========================================================CỦA THÁI FORM THÊM  VÀ SỬA
package ui;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.HeadlessException;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.net.MalformedURLException;
import java.rmi.Naming;
import java.rmi.NotBoundException;
import java.rmi.RemoteException;

import javax.swing.BoxLayout;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;

import config.config;
import dao.DiaDanh_DAO;
import entity.DiaDanh;



public class UI_NhanVien extends JFrame implements ActionListener{
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

	public UI_NhanVien(DiaDanh dd,boolean flag) throws MalformedURLException, RemoteException, NotBoundException  {
		SecurityManager securityManager = System.getSecurityManager();
		if(securityManager == null) {
			
			System.setProperty("java.security.policy", "policy/policy.policy");
			System.setSecurityManager(new SecurityManager());
			
		}
		diaDanh_DAO =  (DiaDanh_DAO) Naming.lookup(conf+"/diaDanh_DAO");
		diadanh = dd;		  
		qldd = new QuanLiDiaDanh();

		setTitle("TTKH");
		setDefaultCloseOperation(this.DISPOSE_ON_CLOSE);	
		setSize(600,400);
		setLocationRelativeTo(null);

		pnNorth = new JPanel() { };
		JLabel lblTieuDe = new JLabel("Thông Tin Địa Danh");
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
		lblMaDiaDanh = new JLabel("Mã địa danh");
		txtMaDiaDanh = new JTextField(40);
		txtMaDiaDanh.setEditable(false);
		pnMaDiaDanh.add(lblMaDiaDanh);
		pnMaDiaDanh.add(txtMaDiaDanh);
		pnThongTin.add(pnMaDiaDanh);
			//Ten
		JPanel pnTenDiaDanh = new JPanel();
		lblTenDiaDanh = new JLabel("Tên địa danh");
		txtTenDiaDanh = new JTextField(40);
		pnTenDiaDanh.add(lblTenDiaDanh);
		pnTenDiaDanh.add(txtTenDiaDanh);
		pnThongTin.add(pnTenDiaDanh);				
			//Mota
		JPanel pnMoTa = new JPanel();
		lblMoTa = new JLabel("Mô tả");
		txtMoTa = new JTextArea(10,40);
		txtMoTa.setWrapStyleWord(true);
		txtMoTa.setLineWrap(true);
		JScrollPane sc = new JScrollPane(txtMoTa);
		pnMoTa.add(lblMoTa);
		pnMoTa.add(sc);
		pnThongTin.add(pnMoTa);
			//TinhThanh
		JPanel pnTinhThanh = new JPanel();
		lblTinhThanh = new JLabel("Tỉnh thành");
		cbxTinhThanh = new JComboBox();
		cbxTinhThanh.setPreferredSize(new Dimension(400, 25));
		cbxTinhThanh.addItem("An Giang ");cbxTinhThanh.addItem("Bà rịa – Vũng tàu");cbxTinhThanh.addItem("Bắc Giang");
		cbxTinhThanh.addItem("Bắc Kạn");cbxTinhThanh.addItem("Bạc Liêu");cbxTinhThanh.addItem("Bắc Ninh");
		cbxTinhThanh.addItem("Bến Tre");cbxTinhThanh.addItem("Bình Định");cbxTinhThanh.addItem("Bình Dương");cbxTinhThanh.addItem("Bình Phước");
		cbxTinhThanh.addItem("Bình Thuận");cbxTinhThanh.addItem("Cà Mau");cbxTinhThanh.addItem("Cần Thơ");cbxTinhThanh.addItem("Cao Bằng ");
		cbxTinhThanh.addItem("Đà Nẵng");cbxTinhThanh.addItem("Đắk Lắk");cbxTinhThanh.addItem("Đắk Nông");cbxTinhThanh.addItem("Điện Biên");
		cbxTinhThanh.addItem("Đồng Nai");cbxTinhThanh.addItem("Đồng Tháp");cbxTinhThanh.addItem("Gia Lai");cbxTinhThanh.addItem("Hà Giang");
		cbxTinhThanh.addItem("Hà Nam");cbxTinhThanh.addItem("Hà Nội ");cbxTinhThanh.addItem("Hà Tĩnh");cbxTinhThanh.addItem("Hải Dương ");
		cbxTinhThanh.addItem("Hải Phòng");cbxTinhThanh.addItem("Hậu Giang");cbxTinhThanh.addItem("Hòa Bình");cbxTinhThanh.addItem("Hưng Yên");
		cbxTinhThanh.addItem("Khánh Hòa");cbxTinhThanh.addItem("Kiên Giang");cbxTinhThanh.addItem("Kon Tum");cbxTinhThanh.addItem("Lai Châu");
		cbxTinhThanh.addItem("Lâm Đồng");cbxTinhThanh.addItem("Lạng Sơn");cbxTinhThanh.addItem("Lào Cai");cbxTinhThanh.addItem("Long An");
		cbxTinhThanh.addItem("Nam Định");cbxTinhThanh.addItem("Nghệ An");cbxTinhThanh.addItem("Ninh Bình");cbxTinhThanh.addItem("Ninh Thuận");
		cbxTinhThanh.addItem("Phú Thọ");cbxTinhThanh.addItem("Phú Yên");cbxTinhThanh.addItem("Quảng Bình");cbxTinhThanh.addItem("Quảng Nam");
		cbxTinhThanh.addItem("Quảng Ngãi");cbxTinhThanh.addItem("Quảng Ninh");cbxTinhThanh.addItem("Quảng Trị");cbxTinhThanh.addItem("Sóc Trăng");
		cbxTinhThanh.addItem("Sơn La");cbxTinhThanh.addItem("Tây Ninh");cbxTinhThanh.addItem("Thái Bình");cbxTinhThanh.addItem("Thái Nguyên");
		cbxTinhThanh.addItem("Thanh Hóa");cbxTinhThanh.addItem("Thừa Thiên Huế");cbxTinhThanh.addItem("Tiền Giang");cbxTinhThanh.addItem("Thành phố Hồ Chí Minh");
		cbxTinhThanh.addItem("Trà Vinh");cbxTinhThanh.addItem("Tuyên Quang");cbxTinhThanh.addItem("Vĩnh Long");cbxTinhThanh.addItem("Vĩnh Phúc");
		cbxTinhThanh.addItem("Yên Bái");
		
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
		
		btnLamMoi = new JButton("Làm mới");
		btnLamMoi.setIcon(new ImageIcon("Icon/xoarong.png"));
		btnLuu = new JButton("Lưu");
		btnLuu.setIcon(new ImageIcon("Icon/save.png"));
		btnThoat = new JButton("Thoát");
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
								JOptionPane.showMessageDialog(null , "Thêm thành công","Thông báo",JOptionPane.INFORMATION_MESSAGE);
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
					JOptionPane.showMessageDialog(null , "Sửa thành công","Thông báo",JOptionPane.INFORMATION_MESSAGE);
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
			int kt = JOptionPane.showConfirmDialog(this, "Bạn có chắc chắn muốn thoát không","Thông báo",JOptionPane.YES_NO_OPTION);
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
			showMessage("Error: Tên địa danh không được rỗng", txtTenDiaDanh);
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

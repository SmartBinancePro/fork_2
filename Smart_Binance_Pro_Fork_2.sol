// SPDX-License-Identifier: Unlicensed

pragma solidity >=0.4.22 <0.9.0;
contract Smart_Binance_Pro_Fork_2 is Context {
    using SafeERC20 for IERC20; struct Node {
        uint32 id;
        uint32 SA;
        uint32 SB;
        uint24 SC;
        uint24 SD;
        uint24 QZ3;
        uint8 QZ2;
        uint8 Won;
        bool SE;
        address UP;
        address SF;
        address SG; }
    mapping(address => Node) internal _U;
    mapping(uint32 => uint32) internal QF;
    mapping(uint32 => uint32) internal QL;
    mapping(uint32 => uint32) internal QL2;
    mapping(uint32 => address) internal QD;
    mapping(uint256 => address) internal QY;
    mapping(uint24 => address) internal QZ;
    mapping(uint24 => address) internal QZ1;
    mapping(uint16 => address) internal QX;
    mapping(uint16 => address) internal QZ9;
    mapping(uint16 => address) internal QZ14;
    address internal QE;
    address internal SBTF;
    address internal OP;
    address internal SV;
    IERC20 internal Tether;
    uint32 internal SW;
    uint32 internal CS;
    uint24 internal SR;
    uint24 internal SO;
    uint24 internal SK;
    uint16 internal QZ8;
    uint16 internal QZ13;
    uint256 internal _T_S;
    uint256 internal SN;
    uint256 internal QG;
    uint256 internal QZ7;
    bool internal _LOCK;
    bool internal Set_Bank;
    bool QZ11;
    string internal IPFS;
    Smart_Binance_Pro_Fork2 internal NBJ;
    constructor() { QE = _msgSender();
        Tether = IERC20(0x55d398326f99059fF775485246999027B3197955);
        SBTF = 0x54600b71b33eE0188e0dA4a5a5159A76da8F8C6e;
        OP = 0xF9B29B8853c98B68c19f53F5b39e69eF6eAF1e2c;
        SV = 0xe317DE453861E071D88823EF4531C58d4a765F7f;
        NBJ = Smart_Binance_Pro_Fork2 (0x3e1be6eC80D6D17d423C285bAE068b9bA8942eB9);
       _T_S = block.timestamp; }
    function Reward_4() external { QJ(); }
    function QJ() private {
        require(QH(_msgSender()), "User Not Exist");
        require(_LOCK == false, "Proccesing");
        require(block.timestamp > _T_S + 4 hours, "Reward_4 Time Has Not Come");
        QC(); uint24 TMP = QT();
        require(TMP > 0, "Total Point Is 0"); _LOCK = true;  SK = TMP; uint256 CZ = QZ5(); SN = CZ;
        for (uint24 i = 0; i < SR; i = QA(i)) {
            Node memory T_N = _U[QZ[i]]; uint24 RST = QS(QZ[i]);
            if (T_N.SC == RST) { T_N.SC = 0;  T_N.SD -= RST;
            } else if (T_N.SD == RST) { T_N.SC -= RST; T_N.SD = 0;
            } else { if (T_N.SC < T_N.SD) {T_N.SD -= T_N.SC; T_N.SC = 0;
            } else { T_N.SC -= T_N.SD; T_N.SD = 0; } } _U[QZ[i]] = T_N;
            if (QZ6(QZ[i]) < 100) { if (RST * CZ > Tether.balanceOf(address(this))) { Tether.safeTransfer(QZ[i], Tether.balanceOf(address(this)));
            } else { Tether.safeTransfer(QZ[i], RST * CZ); }
            } else { if (((RST * CZ * 9) / 10) > Tether.balanceOf(address(this))) {
            Tether.safeTransfer(QZ[i], Tether.balanceOf(address(this)));
            } else { Tether.safeTransfer(QZ[i], ((RST * CZ * 9) / 10)); } } }
        if ((QZ7 * QG * 10**18) > Tether.balanceOf(address(this))) { Tether.safeTransfer(_msgSender(), Tether.balanceOf(address(this)));
        } else {Tether.safeTransfer(_msgSender(), (QZ7 * QG * 10**18)); }
        Tether.safeTransfer(SV, Tether.balanceOf(address(this)));
        IERC20(SBTF).safeTransfer(QE, TMP * 10**18);  _T_S = block.timestamp; QG = 0; SR = 0; SO = 0; QZ8 = 0; _LOCK = false; }
    function QC() private { address U_P;  address C_N;
        for (uint256 USER = 0; USER < QG; USER = QB(USER)) { U_P = _U[_U[QY[USER]].UP].UP; C_N = _U[QY[USER]].UP;
            if (QW(C_N) == true) { QZ[SR] = C_N; SR++; }   while (U_P != address(0)) { if (_U[C_N].SE == false) {_U[U_P].SC++; _U[U_P].SA++;
            } else { _U[U_P].SD++; _U[U_P].SB++; }  if (QW(U_P) == true) {QZ[SR] = U_P; SR++; } C_N = U_P; U_P = _U[U_P].UP; } } }
    function Register(address Up) external { QI(Up); }
    function QI(address Up) private {
        require(_LOCK == false, "Proccesing");
        require(_U[Up].QZ2 != 2, "Upline Has 2 Directs");
        require(_msgSender() != Up, "Its Your Address");
        require(!QH(_msgSender()), "You Are Registered");
        require(QH(Up), "Upline Is Not Exist");  _LOCK = true; Tether.safeTransferFrom(_msgSender(), address(this), 100 * 10**18);  QD[SW] = _msgSender(); SW++; Node memory user = Node({ id: SW,  SA: 0, SB: 0, SC: 0,  SD: 0, QZ3: _U[Up].QZ3 + 1, QZ2: 0,  Won: 0,
        SE: _U[Up].QZ2 == 0 ? false : true,  UP: Up, SF: address(0), SG: address(0) }); _U[_msgSender()] = user; QY[QG] = _msgSender(); QG++; if (_U[Up].QZ2 == 0) { _U[Up].SC++; _U[Up].SA++; _U[Up].SF = _msgSender(); } else { _U[Up].SD++; _U[Up].SB++; _U[Up].SG = _msgSender(); } _U[Up].QZ2++; _LOCK = false; }
    function Smart_Gift(uint8 X) external {
        require(_LOCK == false, "Proccesing");
        require(Just_Gift_Balance() > 4, "Smart_Gift Balance Is 0");
        require(QH(_msgSender()), "User Is Not Exist");
        require(QZ6(_msgSender()) < 1, "Just Point 0");
        require(QM(_msgSender()) < 31, "Just Big Side < 30");
        require(QU(_msgSender()), "You Did Smart_Gift Today");
        require(_U[_msgSender()].Won < 31, "You Won 30 Times");
        require(X < 6 && X > 0, "Just 1-2-3-4-5");  _LOCK = true;  QZ1[SO] = _msgSender(); SO++;  if (X == random(4)) { Tether.safeTransfer(_msgSender(), 5 * 10**18); IERC20(SBTF).safeTransfer(_msgSender(), 1 * 10**18); _U[_msgSender()].Won++; QZ9[QZ8] = _msgSender(); QZ8++;} _LOCK = false; }
    function _Write_IPFS(string memory I) public { require(_msgSender() == OP, "Just Operator"); IPFS = I;}
    function _Set_Reward_Fee(uint256 X) external { require(_msgSender() == OP, "Just Operator"); require(X <= 5 && X > 0, "Just 1-5"); QZ7 = X; }
    function Smart_Buy_Over() public {
        require(_LOCK == false, "Proccesing");
        require(QL[_U[_msgSender()].id] < 1, "Just 1 Time");
        require(QH(_msgSender()), "User Is Not Exist");
        require(QZ6(_msgSender()) > 2, "Just Point > 3");
        require(QM(_msgSender()) > 3, "Just Big Side > 4");
        require(Tether.balanceOf(_msgSender()) >= (30 * 10**18),"You dont have enough Tether!");  _LOCK = true;  Tether.safeTransferFrom(_msgSender(), address(this), 30 * 10**18);
        Tether.safeTransfer(SV, 20 * 10**18); if (_U[QE].SC > 15) { _U[QE].SC -= 3; _U[QE].SA -= 3; } else if (_U[_U[QE].SF].SC > 15) { _U[_U[QE].SF].SC -= 3; _U[_U[QE].SF].SA -= 3;
        } else if (_U[_U[_U[QE].SF].SF].SC > 15) { _U[_U[_U[QE].SF].SF].SC -= 3; _U[_U[_U[QE].SF].SF].SA -= 3;} if (_U[_msgSender()].SC > _U[_msgSender()].SD) { _U[_msgSender()].SC += 3; _U[_msgSender()].SA += 3;
        } else { _U[_msgSender()].SD += 3; _U[_msgSender()].SB += 3;} QL[_U[_msgSender()].id]++;  _LOCK = false;}
    function _Dont_Change_Address() external {
        require(QH(_msgSender()), "User Is Not Exist" );
        require(QK(_msgSender()), "You Did Before"); QZ14[QZ13] = _msgSender(); QZ13++; }
    function _Change_My_Address(address X) external {
        require(_LOCK == false, "Proccesing");
        require(IRT(_msgSender()),"User Is Register Today");
        require(QL2[_U[_msgSender()].id] < 3, "Just 3 Times");
        require(X != address(0), "Dont Enter address 0");
        require( QH(_msgSender()),"User Is Not Exist");
        require(! QH(X), "New Address Is Exist!");
        require( QK(_msgSender()),"New Address Is In : Dont_Change_My_Address!"); _LOCK = true;
        Node memory A = _U[_msgSender()]; QD[A.id] = X;
        Node memory B = _U[A.SF]; B.UP = X; _U[A.SF] = B;
        Node memory C = _U[A.SG]; C.UP = X; _U[A.SG] = C;
        Node memory U = _U[A.UP]; if (A.SE == false) 
        {U.SF = X;} else {U.SG = X;} _U[A.UP] = U; _U[X] = A; delete _U[_msgSender()]; QL2[_U[_msgSender()].id]++; _LOCK = false;}
    function _Import (uint24 start , uint24 end) external {
        require(_msgSender() == OP, "Just Operator");
        address[] memory ZA1 = NBJ.All_User_Address(start,end);
        address User; for (uint24 i = 0; i <= (end-start); i++) { User = ZA1[i]; QD[SW] = User;  SW++;
            Node memory user = Node({ id: SW,
                SA: uint32(NBJ.User_Info(User).SA),
                SB: uint32(NBJ.User_Info(User).SB),
                SC: uint24(NBJ.User_Info(User).SC),
                SD: uint24(NBJ.User_Info(User).SD),
                QZ3: uint24(NBJ.User_Info(User).QZ3),
                QZ2: uint8(NBJ.User_Info(User).QZ2), Won: 0,
                SE: NBJ.User_Info(User).SE,
                UP: NBJ.User_Info(User).UP,
                SF: NBJ.User_Info(User).SF,
                SG: NBJ.User_Info(User).SG  }); _U[User] = user; } }
    function QK(address A) private view returns (bool) { for (uint8 i = 0; i < QZ13; i++) { if (QZ14[i] == A) { return false;}} return true; }
    function Smart_AirDrop() external {
        require(QH(_msgSender()), "User Is Not Exist");
        require(QF[_U[_msgSender()].id] < 2, "Just 2 Times"); uint32 K = QZ6(_msgSender());
               if (K >= 0 && K < 1000) { IERC20(SBTF).transfer(_msgSender(), 100 * 10**18); QF[_U[_msgSender()].id]++;
        } else if (K >= 1000 && K < 10000) { IERC20(SBTF).transfer(_msgSender(), 1000 * 10**18); QF[_U[_msgSender()].id]++;
        } else if (K >= 10000) { IERC20(SBTF).transfer(_msgSender(), 10000 * 10**18); QF[_U[_msgSender()].id]++; }}
    function _2_Days_Buy_Back() external {
        require(block.timestamp > _T_S + 48 hours, "_2_Days_Buy_Back Time Has Not Come" );
        uint256 P = 90 * 10**18; for (uint24 i = 0; i < QG; i++) { if (P <= Tether.balanceOf(address(this))) { Tether.safeTransfer(QY[i], P); } }
        Tether.safeTransfer(SV, Tether.balanceOf(address(this))); IERC20(SBTF).safeTransfer(QE, IERC20(SBTF).balanceOf(address(this)));
        _T_S = block.timestamp; QG = 0; SR = 0; SO = 0;  QZ8 = 0; _LOCK = false; }
    function QZ5() private view returns (uint256) { return (QG * 90 * 10**18) / QT(); }
    function random(uint256 Y) private view returns (uint256) { return (uint256( keccak256( abi.encodePacked( block.timestamp, block.prevrandao, msg.sender ) ) ) % Y) + 1; }
    function QH(address A) private view returns (bool) { return (_U[A].id != 0); }
    function QW(address A) private view returns (bool) { if (QS(A) > 0) { for (uint24 i = 0; i < SR; i++) { if (QZ[i] == A) { return false; } } return true; } else { return false; } }
    function QU(address A) private view returns (bool) { for (uint24 i = 0; i < SO; i++) {if (QZ1[i] == A) { return false; } } return true; }
    function IRT(address A) private view returns (bool) {for (uint256 i = 0; i < QG; i++) {if (QY[i] == A) { return false; } } return true; }
    function QA(uint24 x) private pure returns (uint24) { unchecked { return x + 1; } }
    function QB(uint256 x) private pure returns (uint256) { unchecked {return x + 1;}}
    function QS(address A) private view returns (uint24) { uint24 min = _U[A].SC <= _U[A].SD ? _U[A].SC : _U[A].SD; if (min > 10) { return 10; } else { return min; }}
    function QT() private view returns (uint24) { uint24 T_P; for (uint24 i = 0; i < SR; i++) { T_P += QS(QZ[i]); } return T_P; }
    function _Set_S_Coin(uint8 A) external { require(_msgSender() == OP, "Just Operator");  require(A >= 0 && A < 3, "Just 1-2-3"); address[3] memory C = [ 0x8AC76a51cc950d9822D68b83fE1Ad97B32Cd580d, 0x1AF3F329e8BE154074D8769D1FFa4eE058B1DBc3, 0x40af3827F39D0EAcBF4A168f8D4ee67c121D11c9 ]; Tether = IERC20(C[A]); }
    function _Set_Smart_Bank(address X) external { require(_msgSender() == OP, "Just Operator"); require(Set_Bank == false, "Just 1 Time"); SV = X; Set_Bank = true; }
    function _Smart_Bank_() external view returns (address) {return SV; }
    function QM(address X) private view returns (uint32) { return _U[X].SA >= _U[X].SB ? _U[X].SA : _U[X].SB; }
    function _IPFS_() public view returns (string memory) { return IPFS; }
    function All_Register() public view returns (uint32) { return SW; }
    function All_User_Address (uint32 start, uint32 end) public view returns (address[] memory) { uint32 index; address[] memory ret = new address[]((end - start) + 1); for (uint32 i = start; i <= end; i++) { ret[index] = QD[i]; index++; } return ret; }
    function Last_Value_Point() public view returns (uint256) {return SN / 10**18; }
    function Last_Total_Piont() public view returns (uint24) {return SK; }
    function Just_Contract_Balance() public view returns (uint256) {return Tether.balanceOf(address(this)) / 10**18; }
    function Just_Gift_Balance() public view returns (uint256) {return ((Tether.balanceOf(address(this)) / 10**18) - (QG * 95)); }
    function Today_Register_Number() public view returns (uint256) {return QG; }
    function Today_Register_Address() public view returns (address[] memory) {address[] memory ret = new address[](QG); for (uint256 i = 0; i < QG; i++) { ret[i] = QY[i]; } return ret; }
    function Today_Gift_Win_Address() public view returns (address[] memory) {address[] memory ret = new address[](QZ8); for (uint16 i = 0; i < QZ8; i++) { ret[i] = QZ9[i]; } return ret; }
    function _SBTF_() external view returns (address) { return SBTF; }
    function QZ6(address X) private view returns (uint32) { return _U[X].SA <= _U[X].SB ? _U[X].SA : _U[X].SB; }
    function _Reward_Fee_() external view returns (uint256) {return QZ7;}   
    function _Smart_Binance_pro_() external pure returns (address) { return 0xFc46B09bf98858B08C5c5DEeb5c19E609FaBD398; }
    function Add_Approve_S_Coin() external view returns (address) { return address(Tether); }
    function User_Info(address User) public view returns (Node memory) { return _U[User]; } }

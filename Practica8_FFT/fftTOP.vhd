library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity fftTOP is
	generic(
		BUS_WIDTH : natural := 8;
		SAMPLES_WIDTH : natural := 10
	);
	Port(
		clk : in std_logic;
		rst : in std_logic;
		ADCdata : in std_logic_vector(BUS_WIDTH - 1 downto 0);
		SQRTout  : out std_logic_vector(BUS_WIDTH - 1 downto 0);
		FFTstart : in std_logic;
		FFTunload : in std_logic;
		FFTfwd_inv : in std_logic;
		FFTfwd_inv_we : in std_Logic;
		FFTrfd : out std_Logic;
		FFTbusy : out std_Logic;
		FFTxk_index : out std_logic_vector(SAMPLES_WIDTH - 1 DOWNTO 0);
		FFTdone : out std_Logic;
		SQRTrdy : out std_logic;
		SQRTce  : in std_logic
	);
end fftTOP;

architecture Behavioral of fftTOP is


	signal stdXre : std_logic_vector(BUS_WIDTH - 1 downto 0);
	signal stdXim : std_logic_vector(BUS_WIDTH - 1 downto 0);
	signal xre  : integer range 0 to 2**BUS_WIDTH - 1;
	signal xim  : integer range 0 to 2**BUS_WIDTH - 1;
	signal xre2 : integer range 0 to 2**16-1; -- Xre^2
	signal xim2 : integer range 0 to 2**16-1; -- Xim^2
	signal sumOf2 : integer range 0 to 2**17-1; -- Xre^2 + Xim^2
	signal stdSum : std_logic_vector(16 downto 0);
	signal SQRTdataOut : std_logic_vector(BUS_WIDTH downto 0);

COMPONENT fft
  PORT (
    clk : IN STD_LOGIC;
    start : IN STD_LOGIC;
    unload : IN STD_LOGIC;
    xn_re : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    xn_im : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    fwd_inv : IN STD_LOGIC;
    fwd_inv_we : IN STD_LOGIC;
    scale_sch : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
    scale_sch_we : IN STD_LOGIC;
    rfd : OUT STD_LOGIC;
    xn_index : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    busy : OUT STD_LOGIC;
    edone : OUT STD_LOGIC;
    done : OUT STD_LOGIC;
    dv : OUT STD_LOGIC;
    xk_index : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    xk_re : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    xk_im : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;

COMPONENT sqrt
  PORT (
    x_in : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
    x_out : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
    rdy : OUT STD_LOGIC;
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC
  );
END COMPONENT;

begin

	xre <= to_integer(signed(stdXre));
	xim <= to_integer(signed(stdXim));

	xre2 <= xre*xre;
	xim2 <= xim*xim;
	sumOf2 <= xre2 + xim2;
	
	SQRTout <= SQRTdataOut(8 downto 1);
	
	stdSum <= std_logic_vector(to_unsigned(sumOf2, 17));
	
	fftInstance : fft
  PORT MAP (
    clk => clk,
    start => FFTstart,
    unload => FFTunload,
    xn_re => ADCdata,
    xn_im => (others => '0'),
    fwd_inv => FFTfwd_inv,
    fwd_inv_we => FFTfwd_inv_we,
    scale_sch => (others => '0'),
    scale_sch_we => '0',
    rfd => FFTrfd,
    xn_index => open,
    busy => FFTbusy,
    edone => open,
    done => FFTdone,
    dv => open,
    xk_index => FFTxk_index,
    xk_re => stdXre,
    xk_im => stdXim
  );
  
  sqrtInstance : sqrt
  PORT MAP (
    x_in => stdSum,
    x_out => SQRTdataOut,
    rdy => SQRTrdy,
    clk => clk,
    ce => SQRTce
  );
	

end Behavioral;


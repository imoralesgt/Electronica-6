library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity topFFT is

	Generic(
		BUS_WIDTH : INTEGER := 8;
		SAMPLES_WIDTH : INTEGER := 10
	);
	
	Port(
		CLK : IN STD_LOGIC;
		
		--FFT PORTS
		FFT_CE : IN STD_LOGIC;
		FFT_START : IN STD_LOGIC;
		FFT_UNLOAD : IN STD_LOGIC;
		FFT_DATA_IN : IN STD_LOGIC_VECTOR(BUS_WIDTH - 1 DOWNTO 0);
		FFT_FWD_INV : IN STD_LOGIC;
		FFT_FWD_INV_WE : IN STD_LOGIC;
		FFT_RFD : OUT STD_LOGIC;
		FFT_BUSY : OUT STD_LOGIC;
		FFT_DONE : OUT STD_LOGIC;
		FFT_DV   : OUT STD_LOGIC;
		FFT_XK_INDEX : OUT STD_LOGIC_VECTOR(SAMPLES_WIDTH - 1 DOWNTO 0);
		
		--SQRT PORTS
		SQRT_CE   : IN STD_LOGIC;
		SQRT_DOUT : OUT STD_LOGIC_VECTOR(BUS_WIDTH - 1 DOWNTO 0);
		SQRT_RDY  : OUT STD_LOGIC
	);

end topFFT;

architecture Behavioral of topFFT is

-- FFT IP Core
COMPONENT ipFFT
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
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

-- SQRT IP Core
COMPONENT ipSQRT
  PORT (
    x_in : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
    x_out : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
    rdy : OUT STD_LOGIC;
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC
  );
END COMPONENT;

	signal stdXre : std_logic_vector(BUS_WIDTH - 1 downto 0);
	signal stdXim : std_logic_vector(BUS_WIDTH - 1 downto 0);
	signal xre  : integer range -128 to 127;
	signal xim  : integer range -127 to 128;
	signal xre2 : integer range 0 to 2**16-1; -- Xre^2
	signal xim2 : integer range 0 to 2**16-1; -- Xim^2
	signal sumOf2 : integer range 0 to 2**17-1; -- Xre^2 + Xim^2
	signal stdSum : std_logic_vector(16 downto 0); -- Sum before SQRT
	signal SQRTdataOut : std_logic_vector(BUS_WIDTH downto 0); -- SQRT Result

begin

	xre <= to_integer(signed(stdXre));
	xim <= to_integer(signed(stdXim));
	
	xre2 <= xre*xre;
	xim2 <= xim*xim;
	
	sumOf2 <= xre2 + xim2;
	stdSum <= std_logic_vector(to_unsigned(sumOf2, 17));
	
	SQRT_DOUT <= SQRTdataOut(BUS_WIDTH DOWNTO 1);


fftInstantiation : ipFFT
  PORT MAP (
    clk => CLK,
    ce => FFT_CE,
    start => FFT_START,
    unload => FFT_UNLOAD,
    xn_re => FFT_DATA_IN,
    xn_im => (others => '0'),
    fwd_inv => FFT_FWD_INV,
    fwd_inv_we => FFT_FWD_INV_WE,
    scale_sch => (others => '0'),
    scale_sch_we => '0',
    rfd => FFT_RFD,
    xn_index => open,
    busy => FFT_BUSY,
    edone => open,
    done => FFT_DONE,
    dv => FFT_DV,
    xk_index => FFT_XK_INDEX,
    xk_re => stdXre,
    xk_im => stdXim
  );
  
  sqrtInstantiation: ipSQRT
  PORT MAP (
    x_in => stdSum,
    x_out => SQRTdataOut,
    rdy => SQRT_RDY,
    clk => CLK,
    ce => SQRT_CE
  );

end Behavioral;


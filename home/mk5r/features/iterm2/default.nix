{ config, lib, ... }:

{
  home.file.".config/iterm2/com.googlecode.iterm2.plist".text = ''
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
    <dict>
    	<key>AlternateMouseScroll</key>
    	<true/>
    	<key>Command</key>
    	<string></string>
    	<key>Custom Color Presets</key>
    	<dict>
    		<key>AtomOneLight</key>
    		<dict>
    			<key>Ansi 0 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.0</real>
    				<key>Green Component</key>
    				<real>0.0</real>
    				<key>Red Component</key>
    				<real>0.0</real>
    			</dict>
    			<key>Ansi 1 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.20784313725490197</real>
    				<key>Green Component</key>
    				<real>0.24313725490196078</real>
    				<key>Red Component</key>
    				<real>0.87058823529411766</real>
    			</dict>
    			<key>Ansi 10 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.22745098039215686</real>
    				<key>Green Component</key>
    				<real>0.58431372549019611</real>
    				<key>Red Component</key>
    				<real>0.24705882352941178</real>
    			</dict>
    			<key>Ansi 11 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.48627450980392156</real>
    				<key>Green Component</key>
    				<real>0.71372549019607845</real>
    				<key>Red Component</key>
    				<real>0.82352941176470584</real>
    			</dict>
    			<key>Ansi 12 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.95294117647058818</real>
    				<key>Green Component</key>
    				<real>0.35294117647058826</real>
    				<key>Red Component</key>
    				<real>0.18431372549019609</real>
    			</dict>
    			<key>Ansi 13 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.58431372549019611</real>
    				<key>Green Component</key>
    				<real>0.0</real>
    				<key>Red Component</key>
    				<real>0.62745098039215685</real>
    			</dict>
    			<key>Ansi 14 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.22745098039215686</real>
    				<key>Green Component</key>
    				<real>0.58431372549019611</real>
    				<key>Red Component</key>
    				<real>0.24705882352941178</real>
    			</dict>
    			<key>Ansi 15 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>1</real>
    				<key>Green Component</key>
    				<real>1</real>
    				<key>Red Component</key>
    				<real>1</real>
    			</dict>
    			<key>Ansi 2 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.22745098039215686</real>
    				<key>Green Component</key>
    				<real>0.58431372549019611</real>
    				<key>Red Component</key>
    				<real>0.24705882352941178</real>
    			</dict>
    			<key>Ansi 3 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.48627450980392156</real>
    				<key>Green Component</key>
    				<real>0.71372549019607845</real>
    				<key>Red Component</key>
    				<real>0.82352941176470584</real>
    			</dict>
    			<key>Ansi 4 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.95294117647058818</real>
    				<key>Green Component</key>
    				<real>0.35294117647058826</real>
    				<key>Red Component</key>
    				<real>0.18431372549019609</real>
    			</dict>
    			<key>Ansi 5 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.58431372549019611</real>
    				<key>Green Component</key>
    				<real>0.0</real>
    				<key>Red Component</key>
    				<real>0.58431372549019611</real>
    			</dict>
    			<key>Ansi 6 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.22745098039215686</real>
    				<key>Green Component</key>
    				<real>0.58431372549019611</real>
    				<key>Red Component</key>
    				<real>0.24705882352941178</real>
    			</dict>
    			<key>Ansi 7 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.73333334922790527</real>
    				<key>Green Component</key>
    				<real>0.73333334922790527</real>
    				<key>Red Component</key>
    				<real>0.73333334922790527</real>
    			</dict>
    			<key>Ansi 8 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.0</real>
    				<key>Green Component</key>
    				<real>0.0</real>
    				<key>Red Component</key>
    				<real>0.0</real>
    			</dict>
    			<key>Ansi 9 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.20784313725490197</real>
    				<key>Green Component</key>
    				<real>0.24313725490196078</real>
    				<key>Red Component</key>
    				<real>0.87058823529411766</real>
    			</dict>
    			<key>Background Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.97647058823529409</real>
    				<key>Green Component</key>
    				<real>0.97647058823529409</real>
    				<key>Red Component</key>
    				<real>0.97647058823529409</real>
    			</dict>
    			<key>Bold Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.0</real>
    				<key>Green Component</key>
    				<real>0.0</real>
    				<key>Red Component</key>
    				<real>0.0</real>
    			</dict>
    			<key>Cursor Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.73333334922790527</real>
    				<key>Green Component</key>
    				<real>0.73333334922790527</real>
    				<key>Red Component</key>
    				<real>0.73333334922790527</real>
    			</dict>
    			<key>Cursor Text Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>1</real>
    				<key>Green Component</key>
    				<real>1</real>
    				<key>Red Component</key>
    				<real>1</real>
    			</dict>
    			<key>Foreground Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.20000000000000001</real>
    				<key>Green Component</key>
    				<real>0.17254901960784313</real>
    				<key>Red Component</key>
    				<real>0.16470588235294117</real>
    			</dict>
    			<key>Selected Text Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.20000000000000001</real>
    				<key>Green Component</key>
    				<real>0.17254901960784313</real>
    				<key>Red Component</key>
    				<real>0.16470588235294117</real>
    			</dict>
    			<key>Selection Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.92941176470588238</real>
    				<key>Green Component</key>
    				<real>0.92941176470588238</real>
    				<key>Red Component</key>
    				<real>0.92941176470588238</real>
    			</dict>
    		</dict>
    		<key>Ayu Mirage</key>
    		<dict>
    			<key>Ansi 0 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.16470588743686676</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.11764705926179886</real>
    				<key>Red Component</key>
    				<real>0.098039217293262482</real>
    			</dict>
    			<key>Ansi 1 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.45490196347236633</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.50980395078659058</real>
    				<key>Red Component</key>
    				<real>0.92941176891326904</real>
    			</dict>
    			<key>Ansi 10 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.49411764740943909</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.90196079015731812</real>
    				<key>Red Component</key>
    				<real>0.729411780834198</real>
    			</dict>
    			<key>Ansi 11 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.50196081399917603</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.83529412746429443</real>
    				<key>Red Component</key>
    				<real>1</real>
    			</dict>
    			<key>Ansi 12 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>1</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.81568628549575806</real>
    				<key>Red Component</key>
    				<real>0.45098039507865906</real>
    			</dict>
    			<key>Ansi 13 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>1</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.74901962280273438</real>
    				<key>Red Component</key>
    				<real>0.83137255907058716</real>
    			</dict>
    			<key>Ansi 14 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.79607844352722168</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.90196079015731812</real>
    				<key>Red Component</key>
    				<real>0.58431375026702881</real>
    			</dict>
    			<key>Ansi 15 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>1</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>1</real>
    				<key>Red Component</key>
    				<real>0.99999600648880005</real>
    			</dict>
    			<key>Ansi 2 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.43921568989753723</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.80000001192092896</real>
    				<key>Red Component</key>
    				<real>0.65098041296005249</real>
    			</dict>
    			<key>Ansi 3 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.48235294222831726</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.81568628549575806</real>
    				<key>Red Component</key>
    				<real>0.98039215803146362</real>
    			</dict>
    			<key>Ansi 4 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.98039215803146362</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.79607844352722168</real>
    				<key>Red Component</key>
    				<real>0.42745098471641541</real>
    			</dict>
    			<key>Ansi 5 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.98039215803146362</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.729411780834198</real>
    				<key>Red Component</key>
    				<real>0.81176471710205078</real>
    			</dict>
    			<key>Ansi 6 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.7764706015586853</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.88235294818878174</real>
    				<key>Red Component</key>
    				<real>0.56470590829849243</real>
    			</dict>
    			<key>Ansi 7 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.78039216995239258</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.78039216995239258</real>
    				<key>Red Component</key>
    				<real>0.78039216995239258</real>
    			</dict>
    			<key>Ansi 8 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.40784314274787903</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.40784314274787903</real>
    				<key>Red Component</key>
    				<real>0.40784314274787903</real>
    			</dict>
    			<key>Ansi 9 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.47450980544090271</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.52941179275512695</real>
    				<key>Red Component</key>
    				<real>0.94901961088180542</real>
    			</dict>
    			<key>Background Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.18823529779911041</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.14117647707462311</real>
    				<key>Red Component</key>
    				<real>0.12156862765550613</real>
    			</dict>
    			<key>Badge Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>0.5</real>
    				<key>Blue Component</key>
    				<real>0.0</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.1491314172744751</real>
    				<key>Red Component</key>
    				<real>1</real>
    			</dict>
    			<key>Bold Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>1</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>1</real>
    				<key>Red Component</key>
    				<real>0.99999600648880005</real>
    			</dict>
    			<key>Cursor Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.40000000596046448</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.80000001192092896</real>
    				<key>Red Component</key>
    				<real>1</real>
    			</dict>
    			<key>Cursor Guide Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>0.25</real>
    				<key>Blue Component</key>
    				<real>1</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.9268307089805603</real>
    				<key>Red Component</key>
    				<real>0.70213186740875244</real>
    			</dict>
    			<key>Cursor Text Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.18823529779911041</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.14117647707462311</real>
    				<key>Red Component</key>
    				<real>0.12156862765550613</real>
    			</dict>
    			<key>Foreground Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.7764706015586853</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.80000001192092896</real>
    				<key>Red Component</key>
    				<real>0.79607844352722168</real>
    			</dict>
    			<key>Link Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.73423302173614502</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.35916060209274292</real>
    				<key>Red Component</key>
    				<real>0.0</real>
    			</dict>
    			<key>Selected Text Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.7764706015586853</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.80000001192092896</real>
    				<key>Red Component</key>
    				<real>0.79607844352722168</real>
    			</dict>
    			<key>Selection Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.36862745881080627</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.25490197539329529</real>
    				<key>Red Component</key>
    				<real>0.20000000298023224</real>
    			</dict>
    		</dict>
    		<key>Chalk</key>
    		<dict>
    			<key>Ansi 0 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.56232324660633481</real>
    				<key>Green Component</key>
    				<real>0.54379904995920658</real>
    				<key>Red Component</key>
    				<real>0.48946561629468649</real>
    			</dict>
    			<key>Ansi 1 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.32056234871547967</real>
    				<key>Green Component</key>
    				<real>0.22880050174078803</real>
    				<key>Red Component</key>
    				<real>0.69980203619909509</real>
    			</dict>
    			<key>Ansi 10 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.4380863119291733</real>
    				<key>Green Component</key>
    				<real>0.77022058823529416</real>
    				<key>Red Component</key>
    				<real>0.50210547698154084</real>
    			</dict>
    			<key>Ansi 11 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.38433974981307983</real>
    				<key>Green Component</key>
    				<real>0.92321735620498657</real>
    				<key>Red Component</key>
    				<real>1</real>
    			</dict>
    			<key>Ansi 12 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>1</real>
    				<key>Green Component</key>
    				<real>0.58658880481119824</real>
    				<key>Red Component</key>
    				<real>0.25301916229341825</real>
    			</dict>
    			<key>Ansi 13 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.46070275624792595</real>
    				<key>Green Component</key>
    				<real>0.32033414432100477</real>
    				<key>Red Component</key>
    				<real>0.98699095022624439</real>
    			</dict>
    			<key>Ansi 14 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.74187815387757039</real>
    				<key>Green Component</key>
    				<real>0.8030613687782806</real>
    				<key>Red Component</key>
    				<real>0.32424480209917289</real>
    			</dict>
    			<key>Ansi 15 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.85098040103912354</real>
    				<key>Green Component</key>
    				<real>0.84705883264541626</real>
    				<key>Red Component</key>
    				<real>0.82352942228317261</real>
    			</dict>
    			<key>Ansi 2 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.41532100759933388</real>
    				<key>Green Component</key>
    				<real>0.60644089366515841</real>
    				<key>Red Component</key>
    				<real>0.47089726353294475</real>
    			</dict>
    			<key>Ansi 3 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.29084579493154233</real>
    				<key>Green Component</key>
    				<real>0.674033910034048</real>
    				<key>Red Component</key>
    				<real>0.72714578619909509</real>
    			</dict>
    			<key>Ansi 4 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.67496818438914019</real>
    				<key>Green Component</key>
    				<real>0.49827707227415013</real>
    				<key>Red Component</key>
    				<real>0.1650784426346574</real>
    			</dict>
    			<key>Ansi 5 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.35376425577116455</real>
    				<key>Green Component</key>
    				<real>0.31030611240647216</real>
    				<key>Red Component</key>
    				<real>0.73992505656108598</real>
    			</dict>
    			<key>Ansi 6 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.6001695990562439</real>
    				<key>Green Component</key>
    				<real>0.6554722785949707</real>
    				<key>Red Component</key>
    				<real>0.26824772357940674</real>
    			</dict>
    			<key>Ansi 7 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.85098040103912354</real>
    				<key>Green Component</key>
    				<real>0.84705883264541626</real>
    				<key>Red Component</key>
    				<real>0.82352942228317261</real>
    			</dict>
    			<key>Ansi 8 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.53333336114883423</real>
    				<key>Green Component</key>
    				<real>0.53333336114883423</real>
    				<key>Red Component</key>
    				<real>0.53333336114883423</real>
    			</dict>
    			<key>Ansi 9 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.25098040699958801</real>
    				<key>Green Component</key>
    				<real>0.28235295414924622</real>
    				<key>Red Component</key>
    				<real>0.94901961088180542</real>
    			</dict>
    			<key>Background Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.18184389173984528</real>
    				<key>Green Component</key>
    				<real>0.17562578618526459</real>
    				<key>Red Component</key>
    				<real>0.16979476809501648</real>
    			</dict>
    			<key>Bold Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.92621010541915894</real>
    				<key>Green Component</key>
    				<real>0.9264177680015564</real>
    				<key>Red Component</key>
    				<real>0.92623984813690186</real>
    			</dict>
    			<key>Cursor Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.51685798168182373</real>
    				<key>Green Component</key>
    				<real>0.50962930917739868</real>
    				<key>Red Component</key>
    				<real>0.44058024883270264</real>
    			</dict>
    			<key>Cursor Text Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.19370138645172119</real>
    				<key>Green Component</key>
    				<real>0.15575926005840302</real>
    				<key>Red Component</key>
    				<real>0.0</real>
    			</dict>
    			<key>Foreground Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.85098040103912354</real>
    				<key>Green Component</key>
    				<real>0.84705883264541626</real>
    				<key>Red Component</key>
    				<real>0.82352942228317261</real>
    			</dict>
    			<key>Selected Text Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.25668647885322571</real>
    				<key>Green Component</key>
    				<real>0.24950546026229858</real>
    				<key>Red Component</key>
    				<real>0.24626246094703674</real>
    			</dict>
    			<key>Selection Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.93112045526504517</real>
    				<key>Green Component</key>
    				<real>0.91148865222930908</real>
    				<key>Red Component</key>
    				<real>0.8929295539855957</real>
    			</dict>
    		</dict>
    		<key>Monokai Remastered</key>
    		<dict>
    			<key>Ansi 0 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.10051459074020386</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.10051288455724716</real>
    				<key>Red Component</key>
    				<real>0.10051589459180832</real>
    			</dict>
    			<key>Ansi 1 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.3728577196598053</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.0</real>
    				<key>Red Component</key>
    				<real>0.95683503150939941</real>
    			</dict>
    			<key>Ansi 10 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.14004382491111755</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.87921047210693359</real>
    				<key>Red Component</key>
    				<real>0.59473341703414917</real>
    			</dict>
    			<key>Ansi 11 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.38154411315917969</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.83635991811752319</real>
    				<key>Red Component</key>
    				<real>0.87748134136199951</real>
    			</dict>
    			<key>Ansi 12 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.99877572059631348</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.39599207043647766</real>
    				<key>Red Component</key>
    				<real>0.61468899250030518</real>
    			</dict>
    			<key>Ansi 13 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.3728577196598053</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.0</real>
    				<key>Red Component</key>
    				<real>0.95683503150939941</real>
    			</dict>
    			<key>Ansi 14 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.92060363292694092</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.81977206468582153</real>
    				<key>Red Component</key>
    				<real>0.34416967630386353</real>
    			</dict>
    			<key>Ansi 15 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.9359474778175354</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.96549534797668457</real>
    				<key>Red Component</key>
    				<real>0.96537256240844727</real>
    			</dict>
    			<key>Ansi 2 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.14004382491111755</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.87921047210693359</real>
    				<key>Red Component</key>
    				<real>0.59473341703414917</real>
    			</dict>
    			<key>Ansi 3 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.12156862765550613</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.59215688705444336</real>
    				<key>Red Component</key>
    				<real>0.99215686321258545</real>
    			</dict>
    			<key>Ansi 4 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.99877572059631348</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.39599207043647766</real>
    				<key>Red Component</key>
    				<real>0.61468899250030518</real>
    			</dict>
    			<key>Ansi 5 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.3728577196598053</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.0</real>
    				<key>Red Component</key>
    				<real>0.95683503150939941</real>
    			</dict>
    			<key>Ansi 6 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.92060363292694092</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.81977206468582153</real>
    				<key>Red Component</key>
    				<real>0.34416967630386353</real>
    			</dict>
    			<key>Ansi 7 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.70993047952651978</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.77144092321395874</real>
    				<key>Red Component</key>
    				<real>0.76960963010787964</real>
    			</dict>
    			<key>Ansi 8 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.29652142524719238</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.36959609389305115</real>
    				<key>Red Component</key>
    				<real>0.3829454779624939</real>
    			</dict>
    			<key>Ansi 9 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.3728577196598053</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.0</real>
    				<key>Red Component</key>
    				<real>0.95683503150939941</real>
    			</dict>
    			<key>Background Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.046697486191987991</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.046696696430444717</real>
    				<key>Red Component</key>
    				<real>0.046698093414306641</real>
    			</dict>
    			<key>Badge Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>0.5</real>
    				<key>Blue Component</key>
    				<real>0.0</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.0</real>
    				<key>Red Component</key>
    				<real>1</real>
    			</dict>
    			<key>Bold Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.92148995399475098</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.92147433757781982</real>
    				<key>Red Component</key>
    				<real>0.92150187492370605</real>
    			</dict>
    			<key>Cursor Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.12078898400068283</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.59354037046432495</real>
    				<key>Red Component</key>
    				<real>0.99016290903091431</real>
    			</dict>
    			<key>Cursor Guide Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>0.25</real>
    				<key>Blue Component</key>
    				<real>1</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.9100000262260437</real>
    				<key>Red Component</key>
    				<real>0.64999997615814209</real>
    			</dict>
    			<key>Cursor Text Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.0</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.0</real>
    				<key>Red Component</key>
    				<real>0.0</real>
    			</dict>
    			<key>Foreground Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.84938156604766846</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.84936714172363281</real>
    				<key>Red Component</key>
    				<real>0.8493925929069519</real>
    			</dict>
    			<key>Link Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.67799997329711914</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.27000001072883606</real>
    				<key>Red Component</key>
    				<real>0.023000000044703484</real>
    			</dict>
    			<key>Selected Text Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.99999129772186279</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.99997437000274658</real>
    				<key>Red Component</key>
    				<real>1</real>
    			</dict>
    			<key>Selection Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.20521116256713867</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.20520767569541931</real>
    				<key>Red Component</key>
    				<real>0.20521381497383118</real>
    			</dict>
    		</dict>
    		<key>Monokai Soda</key>
    		<dict>
    			<key>Ansi 0 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.10051459074020386</real>
    				<key>Green Component</key>
    				<real>0.10051288455724716</real>
    				<key>Red Component</key>
    				<real>0.10051589459180832</real>
    			</dict>
    			<key>Ansi 1 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.3728577196598053</real>
    				<key>Green Component</key>
    				<real>0.0</real>
    				<key>Red Component</key>
    				<real>0.95683503150939941</real>
    			</dict>
    			<key>Ansi 10 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.14004382491111755</real>
    				<key>Green Component</key>
    				<real>0.87921047210693359</real>
    				<key>Red Component</key>
    				<real>0.59473341703414917</real>
    			</dict>
    			<key>Ansi 11 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.38154411315917969</real>
    				<key>Green Component</key>
    				<real>0.83635991811752319</real>
    				<key>Red Component</key>
    				<real>0.87748134136199951</real>
    			</dict>
    			<key>Ansi 12 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.99877572059631348</real>
    				<key>Green Component</key>
    				<real>0.39599207043647766</real>
    				<key>Red Component</key>
    				<real>0.61468899250030518</real>
    			</dict>
    			<key>Ansi 13 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.3728577196598053</real>
    				<key>Green Component</key>
    				<real>0.0</real>
    				<key>Red Component</key>
    				<real>0.95683503150939941</real>
    			</dict>
    			<key>Ansi 14 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.92060363292694092</real>
    				<key>Green Component</key>
    				<real>0.81977206468582153</real>
    				<key>Red Component</key>
    				<real>0.34416967630386353</real>
    			</dict>
    			<key>Ansi 15 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.9359474778175354</real>
    				<key>Green Component</key>
    				<real>0.96549534797668457</real>
    				<key>Red Component</key>
    				<real>0.96537256240844727</real>
    			</dict>
    			<key>Ansi 2 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.14004382491111755</real>
    				<key>Green Component</key>
    				<real>0.87921047210693359</real>
    				<key>Red Component</key>
    				<real>0.59473341703414917</real>
    			</dict>
    			<key>Ansi 3 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.099807053804397583</real>
    				<key>Green Component</key>
    				<real>0.51805692911148071</real>
    				<key>Red Component</key>
    				<real>0.98094809055328369</real>
    			</dict>
    			<key>Ansi 4 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.99877572059631348</real>
    				<key>Green Component</key>
    				<real>0.39599207043647766</real>
    				<key>Red Component</key>
    				<real>0.61468899250030518</real>
    			</dict>
    			<key>Ansi 5 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.3728577196598053</real>
    				<key>Green Component</key>
    				<real>0.0</real>
    				<key>Red Component</key>
    				<real>0.95683503150939941</real>
    			</dict>
    			<key>Ansi 6 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.92060363292694092</real>
    				<key>Green Component</key>
    				<real>0.81977206468582153</real>
    				<key>Red Component</key>
    				<real>0.34416967630386353</real>
    			</dict>
    			<key>Ansi 7 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.70993047952651978</real>
    				<key>Green Component</key>
    				<real>0.77144092321395874</real>
    				<key>Red Component</key>
    				<real>0.76960963010787964</real>
    			</dict>
    			<key>Ansi 8 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.29652142524719238</real>
    				<key>Green Component</key>
    				<real>0.36959609389305115</real>
    				<key>Red Component</key>
    				<real>0.3829454779624939</real>
    			</dict>
    			<key>Ansi 9 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.3728577196598053</real>
    				<key>Green Component</key>
    				<real>0.0</real>
    				<key>Red Component</key>
    				<real>0.95683503150939941</real>
    			</dict>
    			<key>Background Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.10051459074020386</real>
    				<key>Green Component</key>
    				<real>0.10051288455724716</real>
    				<key>Red Component</key>
    				<real>0.10051589459180832</real>
    			</dict>
    			<key>Bold Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.70993047952651978</real>
    				<key>Green Component</key>
    				<real>0.77144092321395874</real>
    				<key>Red Component</key>
    				<real>0.76960963010787964</real>
    			</dict>
    			<key>Cursor Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.92647796869277954</real>
    				<key>Green Component</key>
    				<real>0.96674919128417969</real>
    				<key>Red Component</key>
    				<real>0.96554505825042725</real>
    			</dict>
    			<key>Cursor Text Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.70993047952651978</real>
    				<key>Green Component</key>
    				<real>0.77144092321395874</real>
    				<key>Red Component</key>
    				<real>0.76960963010787964</real>
    			</dict>
    			<key>Foreground Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.70993047952651978</real>
    				<key>Green Component</key>
    				<real>0.77144092321395874</real>
    				<key>Red Component</key>
    				<real>0.76960963010787964</real>
    			</dict>
    			<key>Selected Text Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.70993047952651978</real>
    				<key>Green Component</key>
    				<real>0.77144092321395874</real>
    				<key>Red Component</key>
    				<real>0.76960963010787964</real>
    			</dict>
    			<key>Selection Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.20521116256713867</real>
    				<key>Green Component</key>
    				<real>0.20520767569541931</real>
    				<key>Red Component</key>
    				<real>0.20521381497383118</real>
    			</dict>
    		</dict>
    		<key>OneHalfDark</key>
    		<dict>
    			<key>Ansi 0 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.203921568627</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.17254901960800001</real>
    				<key>Red Component</key>
    				<real>0.15686274509799999</real>
    			</dict>
    			<key>Ansi 1 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.458823529412</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.42352941176499997</real>
    				<key>Red Component</key>
    				<real>0.87843137254899994</real>
    			</dict>
    			<key>Ansi 10 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.47450980392199998</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.76470588235299997</real>
    				<key>Red Component</key>
    				<real>0.59607843137299998</real>
    			</dict>
    			<key>Ansi 11 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.48235294117600003</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.75294117647100001</real>
    				<key>Red Component</key>
    				<real>0.89803921568599998</real>
    			</dict>
    			<key>Ansi 12 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.93725490196100003</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.68627450980399995</real>
    				<key>Red Component</key>
    				<real>0.38039215686299999</real>
    			</dict>
    			<key>Ansi 13 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.86666666666699999</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.47058823529400001</real>
    				<key>Red Component</key>
    				<real>0.77647058823500004</real>
    			</dict>
    			<key>Ansi 14 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.76078431372499999</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.71372549019599996</real>
    				<key>Red Component</key>
    				<real>0.337254901961</real>
    			</dict>
    			<key>Ansi 15 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.89411764705899999</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.87450980392199995</real>
    				<key>Red Component</key>
    				<real>0.86274509803900001</real>
    			</dict>
    			<key>Ansi 2 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.47450980392199998</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.76470588235299997</real>
    				<key>Red Component</key>
    				<real>0.59607843137299998</real>
    			</dict>
    			<key>Ansi 3 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.48235294117600003</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.75294117647100001</real>
    				<key>Red Component</key>
    				<real>0.89803921568599998</real>
    			</dict>
    			<key>Ansi 4 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.93725490196100003</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.68627450980399995</real>
    				<key>Red Component</key>
    				<real>0.38039215686299999</real>
    			</dict>
    			<key>Ansi 5 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.86666666666699999</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.47058823529400001</real>
    				<key>Red Component</key>
    				<real>0.77647058823500004</real>
    			</dict>
    			<key>Ansi 6 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.76078431372499999</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.71372549019599996</real>
    				<key>Red Component</key>
    				<real>0.337254901961</real>
    			</dict>
    			<key>Ansi 7 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.89411764705899999</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.87450980392199995</real>
    				<key>Red Component</key>
    				<real>0.86274509803900001</real>
    			</dict>
    			<key>Ansi 8 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.203921568627</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.17254901960800001</real>
    				<key>Red Component</key>
    				<real>0.15686274509799999</real>
    			</dict>
    			<key>Ansi 9 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.458823529412</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.42352941176499997</real>
    				<key>Red Component</key>
    				<real>0.87843137254899994</real>
    			</dict>
    			<key>Background Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.203921568627</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.17254901960800001</real>
    				<key>Red Component</key>
    				<real>0.15686274509799999</real>
    			</dict>
    			<key>Badge Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>0.5</real>
    				<key>Blue Component</key>
    				<real>0.0</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.0</real>
    				<key>Red Component</key>
    				<real>1</real>
    			</dict>
    			<key>Bold Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.74901962280273438</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.69803923368453979</real>
    				<key>Red Component</key>
    				<real>0.67058825492858887</real>
    			</dict>
    			<key>Cursor Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.80000000000000004</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.701960784314</real>
    				<key>Red Component</key>
    				<real>0.63921568627500003</real>
    			</dict>
    			<key>Cursor Guide Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>0.25</real>
    				<key>Blue Component</key>
    				<real>0.25098039215700002</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.211764705882</real>
    				<key>Red Component</key>
    				<real>0.19215686274499999</real>
    			</dict>
    			<key>Cursor Text Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.89411764705899999</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.87450980392199995</real>
    				<key>Red Component</key>
    				<real>0.86274509803900001</real>
    			</dict>
    			<key>Foreground Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.89411764705899999</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.87450980392199995</real>
    				<key>Red Component</key>
    				<real>0.86274509803900001</real>
    			</dict>
    			<key>Link Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.93725490196100003</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.68627450980399995</real>
    				<key>Red Component</key>
    				<real>0.38039215686299999</real>
    			</dict>
    			<key>Selected Text Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.89411764705899999</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.87450980392199995</real>
    				<key>Red Component</key>
    				<real>0.86274509803900001</real>
    			</dict>
    			<key>Selection Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.364705882353</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.30588235294100002</real>
    				<key>Red Component</key>
    				<real>0.27843137254900002</real>
    			</dict>
    		</dict>
    		<key>OneHalfLight</key>
    		<dict>
    			<key>Ansi 0 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.25882352941199999</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.22745098039200001</real>
    				<key>Red Component</key>
    				<real>0.21960784313699999</real>
    			</dict>
    			<key>Ansi 1 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.28627450980399999</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.337254901961</real>
    				<key>Red Component</key>
    				<real>0.89411764705899999</real>
    			</dict>
    			<key>Ansi 10 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.47450980392199998</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.76470588235299997</real>
    				<key>Red Component</key>
    				<real>0.59607843137299998</real>
    			</dict>
    			<key>Ansi 11 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.48235294117600003</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.75294117647100001</real>
    				<key>Red Component</key>
    				<real>0.89803921568599998</real>
    			</dict>
    			<key>Ansi 12 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.93725490196100003</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.68627450980399995</real>
    				<key>Red Component</key>
    				<real>0.38039215686299999</real>
    			</dict>
    			<key>Ansi 13 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.86666666666699999</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.47058823529400001</real>
    				<key>Red Component</key>
    				<real>0.77647058823500004</real>
    			</dict>
    			<key>Ansi 14 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.76078431372499999</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.71372549019599996</real>
    				<key>Red Component</key>
    				<real>0.337254901961</real>
    			</dict>
    			<key>Ansi 15 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>1</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>1</real>
    				<key>Red Component</key>
    				<real>1</real>
    			</dict>
    			<key>Ansi 2 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.309803921569</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.63137254901999995</real>
    				<key>Red Component</key>
    				<real>0.31372549019599999</real>
    			</dict>
    			<key>Ansi 3 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.0039215686274500002</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.51764705882399997</real>
    				<key>Red Component</key>
    				<real>0.756862745098</real>
    			</dict>
    			<key>Ansi 4 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.73725490196099996</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.51764705882399997</real>
    				<key>Red Component</key>
    				<real>0.0039215686274500002</real>
    			</dict>
    			<key>Ansi 5 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.64313725490200002</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.149019607843</real>
    				<key>Red Component</key>
    				<real>0.65098039215699999</real>
    			</dict>
    			<key>Ansi 6 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.701960784314</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.59215686274500001</real>
    				<key>Red Component</key>
    				<real>0.035294117647099998</real>
    			</dict>
    			<key>Ansi 7 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.98039215686299996</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.98039215686299996</real>
    				<key>Red Component</key>
    				<real>0.98039215686299996</real>
    			</dict>
    			<key>Ansi 8 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.36862745097999999</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.32156862745100001</real>
    				<key>Red Component</key>
    				<real>0.309803921569</real>
    			</dict>
    			<key>Ansi 9 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.458823529412</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.42352941176499997</real>
    				<key>Red Component</key>
    				<real>0.87843137254899994</real>
    			</dict>
    			<key>Background Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.98039215686299996</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.98039215686299996</real>
    				<key>Red Component</key>
    				<real>0.98039215686299996</real>
    			</dict>
    			<key>Badge Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>0.5</real>
    				<key>Blue Component</key>
    				<real>0.0</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.0</real>
    				<key>Red Component</key>
    				<real>1</real>
    			</dict>
    			<key>Bold Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.74901962280273438</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.69803923368453979</real>
    				<key>Red Component</key>
    				<real>0.67058825492858887</real>
    			</dict>
    			<key>Cursor Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>1</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.80784313725500001</real>
    				<key>Red Component</key>
    				<real>0.74901960784300003</real>
    			</dict>
    			<key>Cursor Guide Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>0.25</real>
    				<key>Blue Component</key>
    				<real>0.94117647058800002</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.94117647058800002</real>
    				<key>Red Component</key>
    				<real>0.94117647058800002</real>
    			</dict>
    			<key>Cursor Text Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.25882352941199999</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.22745098039200001</real>
    				<key>Red Component</key>
    				<real>0.21960784313699999</real>
    			</dict>
    			<key>Foreground Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.25882352941199999</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.22745098039200001</real>
    				<key>Red Component</key>
    				<real>0.21960784313699999</real>
    			</dict>
    			<key>Link Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.73725490196099996</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.51764705882399997</real>
    				<key>Red Component</key>
    				<real>0.0039215686274500002</real>
    			</dict>
    			<key>Selected Text Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.25882352941199999</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.22745098039200001</real>
    				<key>Red Component</key>
    				<real>0.21960784313699999</real>
    			</dict>
    			<key>Selection Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>1</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.80784313725500001</real>
    				<key>Red Component</key>
    				<real>0.74901960784300003</real>
    			</dict>
    		</dict>
    		<key>ayu</key>
    		<dict>
    			<key>Ansi 0 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.0</real>
    				<key>Green Component</key>
    				<real>0.0</real>
    				<key>Red Component</key>
    				<real>0.0</real>
    			</dict>
    			<key>Ansi 1 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.20000000000000001</real>
    				<key>Green Component</key>
    				<real>0.20000000000000001</real>
    				<key>Red Component</key>
    				<real>1</real>
    			</dict>
    			<key>Ansi 10 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.51764705882352946</real>
    				<key>Green Component</key>
    				<real>0.99607843137254903</real>
    				<key>Red Component</key>
    				<real>0.91764705882352937</real>
    			</dict>
    			<key>Ansi 11 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.47450980392156861</real>
    				<key>Green Component</key>
    				<real>0.96862745098039216</real>
    				<key>Red Component</key>
    				<real>1</real>
    			</dict>
    			<key>Ansi 12 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>1</real>
    				<key>Green Component</key>
    				<real>0.83529411764705885</real>
    				<key>Red Component</key>
    				<real>0.40784313725490196</real>
    			</dict>
    			<key>Ansi 13 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.66666666666666663</real>
    				<key>Green Component</key>
    				<real>0.63921568627450975</real>
    				<key>Red Component</key>
    				<real>1</real>
    			</dict>
    			<key>Ansi 14 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.99215686274509807</real>
    				<key>Green Component</key>
    				<real>1</real>
    				<key>Red Component</key>
    				<real>0.7803921568627451</real>
    			</dict>
    			<key>Ansi 15 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>1</real>
    				<key>Green Component</key>
    				<real>1</real>
    				<key>Red Component</key>
    				<real>1</real>
    			</dict>
    			<key>Ansi 2 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.32156862745098042</real>
    				<key>Green Component</key>
    				<real>0.80000000000000004</real>
    				<key>Red Component</key>
    				<real>0.72156862745098038</real>
    			</dict>
    			<key>Ansi 3 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.27843137254901962</real>
    				<key>Green Component</key>
    				<real>0.77254901960784317</real>
    				<key>Red Component</key>
    				<real>0.90588235294117647</real>
    			</dict>
    			<key>Ansi 4 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.85098039215686272</real>
    				<key>Green Component</key>
    				<real>0.63921568627450975</real>
    				<key>Red Component</key>
    				<real>0.21176470588235294</real>
    			</dict>
    			<key>Ansi 5 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.47058823529411764</real>
    				<key>Green Component</key>
    				<real>0.44313725490196076</real>
    				<key>Red Component</key>
    				<real>0.94117647058823528</real>
    			</dict>
    			<key>Ansi 6 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.79607843137254897</real>
    				<key>Green Component</key>
    				<real>0.90196078431372551</real>
    				<key>Red Component</key>
    				<real>0.58431372549019611</real>
    			</dict>
    			<key>Ansi 7 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>1</real>
    				<key>Green Component</key>
    				<real>1</real>
    				<key>Red Component</key>
    				<real>1</real>
    			</dict>
    			<key>Ansi 8 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.19607843137254902</real>
    				<key>Green Component</key>
    				<real>0.19607843137254902</real>
    				<key>Red Component</key>
    				<real>0.19607843137254902</real>
    			</dict>
    			<key>Ansi 9 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.396078431372549</real>
    				<key>Green Component</key>
    				<real>0.396078431372549</real>
    				<key>Red Component</key>
    				<real>1</real>
    			</dict>
    			<key>Background Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.098039215686274508</real>
    				<key>Green Component</key>
    				<real>0.078431372549019607</real>
    				<key>Red Component</key>
    				<real>0.058823529411764705</real>
    			</dict>
    			<key>Bold Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.81176470588235294</real>
    				<key>Green Component</key>
    				<real>0.88235294117647056</real>
    				<key>Red Component</key>
    				<real>0.90196078431372551</real>
    			</dict>
    			<key>Cursor Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.094117647058823528</real>
    				<key>Green Component</key>
    				<real>0.59215686274509804</real>
    				<key>Red Component</key>
    				<real>0.94901960784313721</real>
    			</dict>
    			<key>Cursor Text Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.81176470588235294</real>
    				<key>Green Component</key>
    				<real>0.88235294117647056</real>
    				<key>Red Component</key>
    				<real>0.90196078431372551</real>
    			</dict>
    			<key>Foreground Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.81176470588235294</real>
    				<key>Green Component</key>
    				<real>0.88235294117647056</real>
    				<key>Red Component</key>
    				<real>0.90196078431372551</real>
    			</dict>
    			<key>Selected Text Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.81176470588235294</real>
    				<key>Green Component</key>
    				<real>0.88235294117647056</real>
    				<key>Red Component</key>
    				<real>0.90196078431372551</real>
    			</dict>
    			<key>Selection Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.25098039215686274</real>
    				<key>Green Component</key>
    				<real>0.20000000000000001</real>
    				<key>Red Component</key>
    				<real>0.14509803921568629</real>
    			</dict>
    		</dict>
    		<key>ayu_light</key>
    		<dict>
    			<key>Ansi 0 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.0</real>
    				<key>Green Component</key>
    				<real>0.0</real>
    				<key>Red Component</key>
    				<real>0.0</real>
    			</dict>
    			<key>Ansi 1 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.20000000000000001</real>
    				<key>Green Component</key>
    				<real>0.20000000000000001</real>
    				<key>Red Component</key>
    				<real>1</real>
    			</dict>
    			<key>Ansi 10 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.19607843137254902</real>
    				<key>Green Component</key>
    				<real>0.89803921568627454</real>
    				<key>Red Component</key>
    				<real>0.72156862745098038</real>
    			</dict>
    			<key>Ansi 11 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.29019607843137257</real>
    				<key>Green Component</key>
    				<real>0.78823529411764703</real>
    				<key>Red Component</key>
    				<real>1</real>
    			</dict>
    			<key>Ansi 12 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>1</real>
    				<key>Green Component</key>
    				<real>0.84705882352941175</real>
    				<key>Red Component</key>
    				<real>0.45098039215686275</real>
    			</dict>
    			<key>Ansi 13 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.66666666666666663</real>
    				<key>Green Component</key>
    				<real>0.63921568627450975</real>
    				<key>Red Component</key>
    				<real>1</real>
    			</dict>
    			<key>Ansi 14 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.79607843137254897</real>
    				<key>Green Component</key>
    				<real>0.94509803921568625</real>
    				<key>Red Component</key>
    				<real>0.49803921568627452</real>
    			</dict>
    			<key>Ansi 15 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>1</real>
    				<key>Green Component</key>
    				<real>1</real>
    				<key>Red Component</key>
    				<real>1</real>
    			</dict>
    			<key>Ansi 2 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.0</real>
    				<key>Green Component</key>
    				<real>0.70196078431372544</real>
    				<key>Red Component</key>
    				<real>0.52549019607843139</real>
    			</dict>
    			<key>Ansi 3 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.094117647058823528</real>
    				<key>Green Component</key>
    				<real>0.59215686274509804</real>
    				<key>Red Component</key>
    				<real>0.94901960784313721</real>
    			</dict>
    			<key>Ansi 4 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.85098039215686272</real>
    				<key>Green Component</key>
    				<real>0.65098039215686276</real>
    				<key>Red Component</key>
    				<real>0.25490196078431371</real>
    			</dict>
    			<key>Ansi 5 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.47058823529411764</real>
    				<key>Green Component</key>
    				<real>0.44313725490196076</real>
    				<key>Red Component</key>
    				<real>0.94117647058823528</real>
    			</dict>
    			<key>Ansi 6 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.59999999999999998</real>
    				<key>Green Component</key>
    				<real>0.74901960784313726</real>
    				<key>Red Component</key>
    				<real>0.30196078431372547</real>
    			</dict>
    			<key>Ansi 7 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>1</real>
    				<key>Green Component</key>
    				<real>1</real>
    				<key>Red Component</key>
    				<real>1</real>
    			</dict>
    			<key>Ansi 8 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.19607843137254902</real>
    				<key>Green Component</key>
    				<real>0.19607843137254902</real>
    				<key>Red Component</key>
    				<real>0.19607843137254902</real>
    			</dict>
    			<key>Ansi 9 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.396078431372549</real>
    				<key>Green Component</key>
    				<real>0.396078431372549</real>
    				<key>Red Component</key>
    				<real>1</real>
    			</dict>
    			<key>Background Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.98039215686274506</real>
    				<key>Green Component</key>
    				<real>0.98039215686274506</real>
    				<key>Red Component</key>
    				<real>0.98039215686274506</real>
    			</dict>
    			<key>Bold Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.45098039215686275</real>
    				<key>Green Component</key>
    				<real>0.40392156862745099</real>
    				<key>Red Component</key>
    				<real>0.36078431372549019</real>
    			</dict>
    			<key>Cursor Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.0</real>
    				<key>Green Component</key>
    				<real>0.41568627450980394</real>
    				<key>Red Component</key>
    				<real>1</real>
    			</dict>
    			<key>Cursor Text Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.45098039215686275</real>
    				<key>Green Component</key>
    				<real>0.40392156862745099</real>
    				<key>Red Component</key>
    				<real>0.36078431372549019</real>
    			</dict>
    			<key>Foreground Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.45098039215686275</real>
    				<key>Green Component</key>
    				<real>0.40392156862745099</real>
    				<key>Red Component</key>
    				<real>0.36078431372549019</real>
    			</dict>
    			<key>Selected Text Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.45098039215686275</real>
    				<key>Green Component</key>
    				<real>0.40392156862745099</real>
    				<key>Red Component</key>
    				<real>0.36078431372549019</real>
    			</dict>
    			<key>Selection Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.89411764705882357</real>
    				<key>Green Component</key>
    				<real>0.93333333333333335</real>
    				<key>Red Component</key>
    				<real>0.94117647058823528</real>
    			</dict>
    		</dict>
    		<key>nord</key>
    		<dict>
    			<key>Ansi 0 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.32156863808631897</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.25882354378700256</real>
    				<key>Red Component</key>
    				<real>0.23137255012989044</real>
    			</dict>
    			<key>Ansi 1 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.41568627953529358</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.3803921639919281</real>
    				<key>Red Component</key>
    				<real>0.74901962280273438</real>
    			</dict>
    			<key>Ansi 10 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.54901963472366333</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.7450980544090271</real>
    				<key>Red Component</key>
    				<real>0.63921570777893066</real>
    			</dict>
    			<key>Ansi 11 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.54509806632995605</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.79607844352722168</real>
    				<key>Red Component</key>
    				<real>0.92156863212585449</real>
    			</dict>
    			<key>Ansi 12 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.75686275959014893</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.63137257099151611</real>
    				<key>Red Component</key>
    				<real>0.5058823823928833</real>
    			</dict>
    			<key>Ansi 13 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.67843139171600342</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.55686277151107788</real>
    				<key>Red Component</key>
    				<real>0.70588237047195435</real>
    			</dict>
    			<key>Ansi 14 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.73333334922790527</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.73725491762161255</real>
    				<key>Red Component</key>
    				<real>0.56078433990478516</real>
    			</dict>
    			<key>Ansi 15 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.95686274766921997</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.93725490570068359</real>
    				<key>Red Component</key>
    				<real>0.92549020051956177</real>
    			</dict>
    			<key>Ansi 2 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.54901963472366333</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.7450980544090271</real>
    				<key>Red Component</key>
    				<real>0.63921570777893066</real>
    			</dict>
    			<key>Ansi 3 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.54509806632995605</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.79607844352722168</real>
    				<key>Red Component</key>
    				<real>0.92156863212585449</real>
    			</dict>
    			<key>Ansi 4 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.75686275959014893</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.63137257099151611</real>
    				<key>Red Component</key>
    				<real>0.5058823823928833</real>
    			</dict>
    			<key>Ansi 5 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.67843139171600342</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.55686277151107788</real>
    				<key>Red Component</key>
    				<real>0.70588237047195435</real>
    			</dict>
    			<key>Ansi 6 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.81568628549575806</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.75294119119644165</real>
    				<key>Red Component</key>
    				<real>0.53333336114883423</real>
    			</dict>
    			<key>Ansi 7 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.94117647409439087</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.91372549533843994</real>
    				<key>Red Component</key>
    				<real>0.89803922176361084</real>
    			</dict>
    			<key>Ansi 8 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.41568627953529358</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.33725491166114807</real>
    				<key>Red Component</key>
    				<real>0.29803922772407532</real>
    			</dict>
    			<key>Ansi 9 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.41568627953529358</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.3803921639919281</real>
    				<key>Red Component</key>
    				<real>0.74901962280273438</real>
    			</dict>
    			<key>Background Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.25098040699958801</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.20392157137393951</real>
    				<key>Red Component</key>
    				<real>0.18039216101169586</real>
    			</dict>
    			<key>Badge Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>0.5</real>
    				<key>Blue Component</key>
    				<real>0.32156863808631897</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.25882354378700256</real>
    				<key>Red Component</key>
    				<real>0.23137255012989044</real>
    			</dict>
    			<key>Bold Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>1</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>1</real>
    				<key>Red Component</key>
    				<real>0.99999600648880005</real>
    			</dict>
    			<key>Cursor Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.95686274766921997</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.93725490570068359</real>
    				<key>Red Component</key>
    				<real>0.92549020051956177</real>
    			</dict>
    			<key>Cursor Guide Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.21176469326019287</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.21960783004760742</real>
    				<key>Red Component</key>
    				<real>0.23529419302940369</real>
    			</dict>
    			<key>Cursor Text Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.15686270594596863</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.15686270594596863</real>
    				<key>Red Component</key>
    				<real>0.15686273574829102</real>
    			</dict>
    			<key>Foreground Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.91372549533843994</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.87058824300765991</real>
    				<key>Red Component</key>
    				<real>0.84705883264541626</real>
    			</dict>
    			<key>Link Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>1</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>1</real>
    				<key>Red Component</key>
    				<real>0.99607843160629272</real>
    			</dict>
    			<key>Selected Text Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.41568627953529358</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.33725491166114807</real>
    				<key>Red Component</key>
    				<real>0.29803922772407532</real>
    			</dict>
    			<key>Selection Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.95686274766921997</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.93725490570068359</real>
    				<key>Red Component</key>
    				<real>0.92549020051956177</real>
    			</dict>
    		</dict>
    	</dict>
    	<key>Default Bookmark Guid</key>
    	<string>50C40BE0-638A-4D69-8D72-2829A51F8906</string>
    	<key>GlobalKeyMap</key>
    	<dict>
    		<key>0x19-0x60000-0x0</key>
    		<dict>
    			<key>Action</key>
    			<integer>39</integer>
    			<key>Label</key>
    			<string></string>
    			<key>Text</key>
    			<string></string>
    			<key>Version</key>
    			<integer>0</integer>
    		</dict>
    		<key>0x9-0x40000-0x0</key>
    		<dict>
    			<key>Action</key>
    			<integer>32</integer>
    			<key>Label</key>
    			<string></string>
    			<key>Text</key>
    			<string></string>
    			<key>Version</key>
    			<integer>0</integer>
    		</dict>
    		<key>0xf700-0x300000-0x0</key>
    		<dict>
    			<key>Action</key>
    			<integer>7</integer>
    			<key>Label</key>
    			<string></string>
    			<key>Text</key>
    			<string></string>
    			<key>Version</key>
    			<integer>0</integer>
    		</dict>
    		<key>0xf701-0x300000-0x0</key>
    		<dict>
    			<key>Action</key>
    			<integer>6</integer>
    			<key>Label</key>
    			<string></string>
    			<key>Text</key>
    			<string></string>
    			<key>Version</key>
    			<integer>0</integer>
    		</dict>
    		<key>0xf702-0x300000-0x0</key>
    		<dict>
    			<key>Action</key>
    			<integer>2</integer>
    			<key>Label</key>
    			<string></string>
    			<key>Text</key>
    			<string></string>
    			<key>Version</key>
    			<integer>0</integer>
    		</dict>
    		<key>0xf702-0x320000-0x0</key>
    		<dict>
    			<key>Action</key>
    			<integer>33</integer>
    			<key>Label</key>
    			<string></string>
    			<key>Text</key>
    			<string></string>
    			<key>Version</key>
    			<integer>0</integer>
    		</dict>
    		<key>0xf703-0x300000-0x0</key>
    		<dict>
    			<key>Action</key>
    			<integer>0</integer>
    			<key>Label</key>
    			<string></string>
    			<key>Text</key>
    			<string></string>
    			<key>Version</key>
    			<integer>0</integer>
    		</dict>
    		<key>0xf703-0x320000-0x0</key>
    		<dict>
    			<key>Action</key>
    			<integer>34</integer>
    			<key>Label</key>
    			<string></string>
    			<key>Text</key>
    			<string></string>
    			<key>Version</key>
    			<integer>0</integer>
    		</dict>
    		<key>0xf729-0x100000-0x0</key>
    		<dict>
    			<key>Action</key>
    			<integer>5</integer>
    			<key>Label</key>
    			<string></string>
    			<key>Text</key>
    			<string></string>
    			<key>Version</key>
    			<integer>0</integer>
    		</dict>
    		<key>0xf72b-0x100000-0x0</key>
    		<dict>
    			<key>Action</key>
    			<integer>4</integer>
    			<key>Label</key>
    			<string></string>
    			<key>Text</key>
    			<string></string>
    			<key>Version</key>
    			<integer>0</integer>
    		</dict>
    		<key>0xf72c-0x100000-0x0</key>
    		<dict>
    			<key>Action</key>
    			<integer>9</integer>
    			<key>Label</key>
    			<string></string>
    			<key>Text</key>
    			<string></string>
    			<key>Version</key>
    			<integer>0</integer>
    		</dict>
    		<key>0xf72c-0x20000-0x0</key>
    		<dict>
    			<key>Action</key>
    			<integer>9</integer>
    			<key>Label</key>
    			<string></string>
    			<key>Text</key>
    			<string></string>
    			<key>Version</key>
    			<integer>0</integer>
    		</dict>
    		<key>0xf72d-0x100000-0x0</key>
    		<dict>
    			<key>Action</key>
    			<integer>8</integer>
    			<key>Label</key>
    			<string></string>
    			<key>Text</key>
    			<string></string>
    			<key>Version</key>
    			<integer>0</integer>
    		</dict>
    		<key>0xf72d-0x20000-0x0</key>
    		<dict>
    			<key>Action</key>
    			<integer>8</integer>
    			<key>Label</key>
    			<string></string>
    			<key>Text</key>
    			<string></string>
    			<key>Version</key>
    			<integer>0</integer>
    		</dict>
    	</dict>
    	<key>HapticFeedbackForEsc</key>
    	<false/>
    	<key>HotkeyMigratedFromSingleToMulti</key>
    	<true/>
    	<key>New Bookmarks</key>
    	<array>
    		<dict>
    			<key>ASCII Anti Aliased</key>
    			<true/>
    			<key>Ambiguous Double Width</key>
    			<false/>
    			<key>Ansi 0 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.0</real>
    				<key>Green Component</key>
    				<real>0.0</real>
    				<key>Red Component</key>
    				<real>0.0</real>
    			</dict>
    			<key>Ansi 1 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.0</real>
    				<key>Green Component</key>
    				<real>0.0</real>
    				<key>Red Component</key>
    				<real>0.73333334922790527</real>
    			</dict>
    			<key>Ansi 10 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.3333333432674408</real>
    				<key>Green Component</key>
    				<real>1</real>
    				<key>Red Component</key>
    				<real>0.3333333432674408</real>
    			</dict>
    			<key>Ansi 11 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.3333333432674408</real>
    				<key>Green Component</key>
    				<real>1</real>
    				<key>Red Component</key>
    				<real>1</real>
    			</dict>
    			<key>Ansi 12 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>1</real>
    				<key>Green Component</key>
    				<real>0.3333333432674408</real>
    				<key>Red Component</key>
    				<real>0.3333333432674408</real>
    			</dict>
    			<key>Ansi 13 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>1</real>
    				<key>Green Component</key>
    				<real>0.3333333432674408</real>
    				<key>Red Component</key>
    				<real>1</real>
    			</dict>
    			<key>Ansi 14 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>1</real>
    				<key>Green Component</key>
    				<real>1</real>
    				<key>Red Component</key>
    				<real>0.3333333432674408</real>
    			</dict>
    			<key>Ansi 15 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>1</real>
    				<key>Green Component</key>
    				<real>1</real>
    				<key>Red Component</key>
    				<real>1</real>
    			</dict>
    			<key>Ansi 2 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.0</real>
    				<key>Green Component</key>
    				<real>0.73333334922790527</real>
    				<key>Red Component</key>
    				<real>0.0</real>
    			</dict>
    			<key>Ansi 3 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.0</real>
    				<key>Green Component</key>
    				<real>0.73333334922790527</real>
    				<key>Red Component</key>
    				<real>0.73333334922790527</real>
    			</dict>
    			<key>Ansi 4 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.73333334922790527</real>
    				<key>Green Component</key>
    				<real>0.0</real>
    				<key>Red Component</key>
    				<real>0.0</real>
    			</dict>
    			<key>Ansi 5 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.73333334922790527</real>
    				<key>Green Component</key>
    				<real>0.0</real>
    				<key>Red Component</key>
    				<real>0.73333334922790527</real>
    			</dict>
    			<key>Ansi 6 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.73333334922790527</real>
    				<key>Green Component</key>
    				<real>0.73333334922790527</real>
    				<key>Red Component</key>
    				<real>0.0</real>
    			</dict>
    			<key>Ansi 7 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.73333334922790527</real>
    				<key>Green Component</key>
    				<real>0.73333334922790527</real>
    				<key>Red Component</key>
    				<real>0.73333334922790527</real>
    			</dict>
    			<key>Ansi 8 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.3333333432674408</real>
    				<key>Green Component</key>
    				<real>0.3333333432674408</real>
    				<key>Red Component</key>
    				<real>0.3333333432674408</real>
    			</dict>
    			<key>Ansi 9 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.3333333432674408</real>
    				<key>Green Component</key>
    				<real>0.3333333432674408</real>
    				<key>Red Component</key>
    				<real>1</real>
    			</dict>
    			<key>BM Growl</key>
    			<true/>
    			<key>Background Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.0</real>
    				<key>Green Component</key>
    				<real>0.0</real>
    				<key>Red Component</key>
    				<real>0.0</real>
    			</dict>
    			<key>Background Image Location</key>
    			<string></string>
    			<key>Blinking Cursor</key>
    			<false/>
    			<key>Blur</key>
    			<false/>
    			<key>Bold Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>1</real>
    				<key>Green Component</key>
    				<real>1</real>
    				<key>Red Component</key>
    				<real>1</real>
    			</dict>
    			<key>Character Encoding</key>
    			<integer>4</integer>
    			<key>Close Sessions On End</key>
    			<true/>
    			<key>Columns</key>
    			<integer>80</integer>
    			<key>Command</key>
    			<string>/Users/${config.home.username}/.nix-profile/bin/fish</string>
    			<key>Cursor Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.73333334922790527</real>
    				<key>Green Component</key>
    				<real>0.73333334922790527</real>
    				<key>Red Component</key>
    				<real>0.73333334922790527</real>
    			</dict>
    			<key>Cursor Text Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>1</real>
    				<key>Green Component</key>
    				<real>1</real>
    				<key>Red Component</key>
    				<real>1</real>
    			</dict>
    			<key>Custom Command</key>
    			<string>No</string>
    			<key>Custom Directory</key>
    			<string>No</string>
    			<key>Default Bookmark</key>
    			<string>No</string>
    			<key>Description</key>
    			<string>Default</string>
    			<key>Disable Window Resizing</key>
    			<true/>
    			<key>Flashing Bell</key>
    			<false/>
    			<key>Foreground Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.73333334922790527</real>
    				<key>Green Component</key>
    				<real>0.73333334922790527</real>
    				<key>Red Component</key>
    				<real>0.73333334922790527</real>
    			</dict>
    			<key>Guid</key>
    			<string>77D0C779-415D-42DA-90FA-76BD91788D7C</string>
    			<key>Horizontal Spacing</key>
    			<real>1</real>
    			<key>Idle Code</key>
    			<integer>0</integer>
    			<key>Jobs to Ignore</key>
    			<array>
    				<string>rlogin</string>
    				<string>ssh</string>
    				<string>slogin</string>
    				<string>telnet</string>
    			</array>
    			<key>Keyboard Map</key>
    			<dict>
    				<key>0x2d-0x40000</key>
    				<dict>
    					<key>Action</key>
    					<integer>11</integer>
    					<key>Text</key>
    					<string>0x1f</string>
    				</dict>
    				<key>0x32-0x40000</key>
    				<dict>
    					<key>Action</key>
    					<integer>11</integer>
    					<key>Text</key>
    					<string>0x00</string>
    				</dict>
    				<key>0x33-0x40000</key>
    				<dict>
    					<key>Action</key>
    					<integer>11</integer>
    					<key>Text</key>
    					<string>0x1b</string>
    				</dict>
    				<key>0x34-0x40000</key>
    				<dict>
    					<key>Action</key>
    					<integer>11</integer>
    					<key>Text</key>
    					<string>0x1c</string>
    				</dict>
    				<key>0x35-0x40000</key>
    				<dict>
    					<key>Action</key>
    					<integer>11</integer>
    					<key>Text</key>
    					<string>0x1d</string>
    				</dict>
    				<key>0x36-0x40000</key>
    				<dict>
    					<key>Action</key>
    					<integer>11</integer>
    					<key>Text</key>
    					<string>0x1e</string>
    				</dict>
    				<key>0x37-0x40000</key>
    				<dict>
    					<key>Action</key>
    					<integer>11</integer>
    					<key>Text</key>
    					<string>0x1f</string>
    				</dict>
    				<key>0x38-0x40000</key>
    				<dict>
    					<key>Action</key>
    					<integer>11</integer>
    					<key>Text</key>
    					<string>0x7f</string>
    				</dict>
    				<key>0xf700-0x220000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;2A</string>
    				</dict>
    				<key>0xf700-0x240000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;5A</string>
    				</dict>
    				<key>0xf700-0x260000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;6A</string>
    				</dict>
    				<key>0xf700-0x280000</key>
    				<dict>
    					<key>Action</key>
    					<integer>11</integer>
    					<key>Text</key>
    					<string>0x1b 0x1b 0x5b 0x41</string>
    				</dict>
    				<key>0xf701-0x220000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;2B</string>
    				</dict>
    				<key>0xf701-0x240000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;5B</string>
    				</dict>
    				<key>0xf701-0x260000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;6B</string>
    				</dict>
    				<key>0xf701-0x280000</key>
    				<dict>
    					<key>Action</key>
    					<integer>11</integer>
    					<key>Text</key>
    					<string>0x1b 0x1b 0x5b 0x42</string>
    				</dict>
    				<key>0xf702-0x220000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;2D</string>
    				</dict>
    				<key>0xf702-0x240000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;5D</string>
    				</dict>
    				<key>0xf702-0x260000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;6D</string>
    				</dict>
    				<key>0xf702-0x280000</key>
    				<dict>
    					<key>Action</key>
    					<integer>11</integer>
    					<key>Text</key>
    					<string>0x1b 0x1b 0x5b 0x44</string>
    				</dict>
    				<key>0xf703-0x220000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;2C</string>
    				</dict>
    				<key>0xf703-0x240000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;5C</string>
    				</dict>
    				<key>0xf703-0x260000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;6C</string>
    				</dict>
    				<key>0xf703-0x280000</key>
    				<dict>
    					<key>Action</key>
    					<integer>11</integer>
    					<key>Text</key>
    					<string>0x1b 0x1b 0x5b 0x43</string>
    				</dict>
    				<key>0xf704-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;2P</string>
    				</dict>
    				<key>0xf705-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;2Q</string>
    				</dict>
    				<key>0xf706-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;2R</string>
    				</dict>
    				<key>0xf707-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;2S</string>
    				</dict>
    				<key>0xf708-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[15;2~</string>
    				</dict>
    				<key>0xf709-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[17;2~</string>
    				</dict>
    				<key>0xf70a-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[18;2~</string>
    				</dict>
    				<key>0xf70b-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[19;2~</string>
    				</dict>
    				<key>0xf70c-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[20;2~</string>
    				</dict>
    				<key>0xf70d-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[21;2~</string>
    				</dict>
    				<key>0xf70e-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[23;2~</string>
    				</dict>
    				<key>0xf70f-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[24;2~</string>
    				</dict>
    				<key>0xf729-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;2H</string>
    				</dict>
    				<key>0xf729-0x40000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;5H</string>
    				</dict>
    				<key>0xf72b-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;2F</string>
    				</dict>
    				<key>0xf72b-0x40000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;5F</string>
    				</dict>
    			</dict>
    			<key>Mouse Reporting</key>
    			<true/>
    			<key>Name</key>
    			<string>Default</string>
    			<key>Non Ascii Font</key>
    			<string>Monaco 12</string>
    			<key>Non-ASCII Anti Aliased</key>
    			<true/>
    			<key>Normal Font</key>
    			<string>Monaco 12</string>
    			<key>Option Key Sends</key>
    			<integer>0</integer>
    			<key>Prompt Before Closing 2</key>
    			<false/>
    			<key>Right Option Key Sends</key>
    			<integer>0</integer>
    			<key>Rows</key>
    			<integer>25</integer>
    			<key>Screen</key>
    			<integer>-1</integer>
    			<key>Scrollback Lines</key>
    			<integer>1000</integer>
    			<key>Selected Text Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.0</real>
    				<key>Green Component</key>
    				<real>0.0</real>
    				<key>Red Component</key>
    				<real>0.0</real>
    			</dict>
    			<key>Selection Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>1</real>
    				<key>Green Component</key>
    				<real>0.8353000283241272</real>
    				<key>Red Component</key>
    				<real>0.70980000495910645</real>
    			</dict>
    			<key>Send Code When Idle</key>
    			<false/>
    			<key>Shortcut</key>
    			<string></string>
    			<key>Silence Bell</key>
    			<false/>
    			<key>Sync Title</key>
    			<false/>
    			<key>Tags</key>
    			<array/>
    			<key>Terminal Type</key>
    			<string>xterm-256color</string>
    			<key>Transparency</key>
    			<real>0.0</real>
    			<key>Unlimited Scrollback</key>
    			<false/>
    			<key>Use Bold Font</key>
    			<true/>
    			<key>Use Bright Bold</key>
    			<true/>
    			<key>Use Italic Font</key>
    			<true/>
    			<key>Use Non-ASCII Font</key>
    			<false/>
    			<key>Vertical Spacing</key>
    			<real>1</real>
    			<key>Visual Bell</key>
    			<true/>
    			<key>Window Type</key>
    			<integer>0</integer>
    			<key>Working Directory</key>
    			<string>/Users/${config.home.username}</string>
    		</dict>
    		<dict>
    			<key>ASCII Anti Aliased</key>
    			<true/>
    			<key>ASCII Ligatures</key>
    			<true/>
    			<key>Allow Title Setting</key>
    			<false/>
    			<key>Ambiguous Double Width</key>
    			<false/>
    			<key>Ansi 0 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<integer>1</integer>
    				<key>Blue Component</key>
    				<real>0.16862745583057404</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.14509804546833038</real>
    				<key>Red Component</key>
    				<real>0.12941177189350128</real>
    			</dict>
    			<key>Ansi 1 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<integer>1</integer>
    				<key>Blue Component</key>
    				<real>0.45882353186607361</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.42352941632270813</real>
    				<key>Red Component</key>
    				<real>0.87843137979507446</real>
    			</dict>
    			<key>Ansi 10 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<integer>1</integer>
    				<key>Blue Component</key>
    				<real>0.47450980544090271</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.76470589637756348</real>
    				<key>Red Component</key>
    				<real>0.59607845544815063</real>
    			</dict>
    			<key>Ansi 11 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<integer>1</integer>
    				<key>Blue Component</key>
    				<real>0.48235294222831726</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.75294119119644165</real>
    				<key>Red Component</key>
    				<real>0.89803922176361084</real>
    			</dict>
    			<key>Ansi 12 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<integer>1</integer>
    				<key>Blue Component</key>
    				<real>0.93725490570068359</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.68627452850341797</real>
    				<key>Red Component</key>
    				<real>0.3803921639919281</real>
    			</dict>
    			<key>Ansi 13 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<integer>1</integer>
    				<key>Blue Component</key>
    				<real>0.86666667461395264</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.47058823704719543</real>
    				<key>Red Component</key>
    				<real>0.7764706015586853</real>
    			</dict>
    			<key>Ansi 14 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<integer>1</integer>
    				<key>Blue Component</key>
    				<real>0.7607843279838562</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.7137255072593689</real>
    				<key>Red Component</key>
    				<real>0.33725491166114807</real>
    			</dict>
    			<key>Ansi 15 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<integer>1</integer>
    				<key>Blue Component</key>
    				<real>0.74901962280273438</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.69803923368453979</real>
    				<key>Red Component</key>
    				<real>0.67058825492858887</real>
    			</dict>
    			<key>Ansi 2 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<integer>1</integer>
    				<key>Blue Component</key>
    				<real>0.47450980544090271</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.76470589637756348</real>
    				<key>Red Component</key>
    				<real>0.59607845544815063</real>
    			</dict>
    			<key>Ansi 3 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<integer>1</integer>
    				<key>Blue Component</key>
    				<real>0.48235294222831726</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.75294119119644165</real>
    				<key>Red Component</key>
    				<real>0.89803922176361084</real>
    			</dict>
    			<key>Ansi 4 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<integer>1</integer>
    				<key>Blue Component</key>
    				<real>0.93725490570068359</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.68627452850341797</real>
    				<key>Red Component</key>
    				<real>0.3803921639919281</real>
    			</dict>
    			<key>Ansi 5 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<integer>1</integer>
    				<key>Blue Component</key>
    				<real>0.86666667461395264</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.47058823704719543</real>
    				<key>Red Component</key>
    				<real>0.7764706015586853</real>
    			</dict>
    			<key>Ansi 6 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<integer>1</integer>
    				<key>Blue Component</key>
    				<real>0.7607843279838562</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.7137255072593689</real>
    				<key>Red Component</key>
    				<real>0.33725491166114807</real>
    			</dict>
    			<key>Ansi 7 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<integer>1</integer>
    				<key>Blue Component</key>
    				<real>0.74901962280273438</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.69803923368453979</real>
    				<key>Red Component</key>
    				<real>0.67058825492858887</real>
    			</dict>
    			<key>Ansi 8 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<integer>1</integer>
    				<key>Blue Component</key>
    				<real>0.46274510025978088</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.46274510025978088</real>
    				<key>Red Component</key>
    				<real>0.46274510025978088</real>
    			</dict>
    			<key>Ansi 9 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<integer>1</integer>
    				<key>Blue Component</key>
    				<real>0.45882353186607361</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.42352941632270813</real>
    				<key>Red Component</key>
    				<real>0.87843137979507446</real>
    			</dict>
    			<key>BM Growl</key>
    			<true/>
    			<key>Background Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<integer>1</integer>
    				<key>Blue Component</key>
    				<real>0.16862745583057404</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.14509804546833038</real>
    				<key>Red Component</key>
    				<real>0.12941177189350128</real>
    			</dict>
    			<key>Background Image Location</key>
    			<string></string>
    			<key>Badge Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>0.5</real>
    				<key>Blue Component</key>
    				<real>0.45882353186607361</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.42352941632270813</real>
    				<key>Red Component</key>
    				<real>0.87843137979507446</real>
    			</dict>
    			<key>Blinking Cursor</key>
    			<false/>
    			<key>Blur</key>
    			<false/>
    			<key>Bold Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<integer>1</integer>
    				<key>Blue Component</key>
    				<real>0.74901962280273438</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.69803923368453979</real>
    				<key>Red Component</key>
    				<real>0.67058825492858887</real>
    			</dict>
    			<key>Bound Hosts</key>
    			<array/>
    			<key>Character Encoding</key>
    			<integer>4</integer>
    			<key>Close Sessions On End</key>
    			<true/>
    			<key>Columns</key>
    			<integer>80</integer>
    			<key>Command</key>
    			<string>/Users/${config.home.username}/.nix-profile/bin/fish</string>
    			<key>Cursor Boost</key>
    			<integer>0</integer>
    			<key>Cursor Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<integer>1</integer>
    				<key>Blue Component</key>
    				<real>0.74901962280273438</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.69803923368453979</real>
    				<key>Red Component</key>
    				<real>0.67058825492858887</real>
    			</dict>
    			<key>Cursor Guide Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>0.17647058823529413</real>
    				<key>Blue Component</key>
    				<real>0.74901962280273438</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.69803923368453979</real>
    				<key>Red Component</key>
    				<real>0.67058825492858887</real>
    			</dict>
    			<key>Cursor Text Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<integer>1</integer>
    				<key>Blue Component</key>
    				<real>0.74901962280273438</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.69803923368453979</real>
    				<key>Red Component</key>
    				<real>0.67058825492858887</real>
    			</dict>
    			<key>Custom Command</key>
    			<string>Yes</string>
    			<key>Custom Directory</key>
    			<string>No</string>
    			<key>Default Bookmark</key>
    			<string>No</string>
    			<key>Description</key>
    			<string>Default</string>
    			<key>Disable Window Resizing</key>
    			<true/>
    			<key>Draw Powerline Glyphs</key>
    			<false/>
    			<key>Flashing Bell</key>
    			<false/>
    			<key>Foreground Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<integer>1</integer>
    				<key>Blue Component</key>
    				<real>0.74901962280273438</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.69803923368453979</real>
    				<key>Red Component</key>
    				<real>0.67058825492858887</real>
    			</dict>
    			<key>Guid</key>
    			<string>50C40BE0-638A-4D69-8D72-2829A51F8906</string>
    			<key>Has Hotkey</key>
    			<false/>
    			<key>Horizontal Spacing</key>
    			<integer>1</integer>
    			<key>Icon</key>
    			<integer>1</integer>
    			<key>Idle Code</key>
    			<integer>0</integer>
    			<key>Jobs to Ignore</key>
    			<array>
    				<string>rlogin</string>
    				<string>ssh</string>
    				<string>slogin</string>
    				<string>telnet</string>
    			</array>
    			<key>Keyboard Map</key>
    			<dict>
    				<key>0x2a-0x200000</key>
    				<dict>
    					<key>Action</key>
    					<integer>12</integer>
    					<key>Text</key>
    					<string>*</string>
    				</dict>
    				<key>0x2b-0x200000</key>
    				<dict>
    					<key>Action</key>
    					<integer>12</integer>
    					<key>Text</key>
    					<string>+</string>
    				</dict>
    				<key>0x2d-0x200000</key>
    				<dict>
    					<key>Action</key>
    					<integer>12</integer>
    					<key>Text</key>
    					<string>-</string>
    				</dict>
    				<key>0x2d-0x40000</key>
    				<dict>
    					<key>Action</key>
    					<integer>11</integer>
    					<key>Text</key>
    					<string>0x1f</string>
    				</dict>
    				<key>0x2e-0x200000</key>
    				<dict>
    					<key>Action</key>
    					<integer>12</integer>
    					<key>Text</key>
    					<string>.</string>
    				</dict>
    				<key>0x2f-0x200000</key>
    				<dict>
    					<key>Action</key>
    					<integer>12</integer>
    					<key>Text</key>
    					<string>/</string>
    				</dict>
    				<key>0x3-0x200000</key>
    				<dict>
    					<key>Action</key>
    					<integer>11</integer>
    					<key>Text</key>
    					<string>0xd</string>
    				</dict>
    				<key>0x30-0x200000</key>
    				<dict>
    					<key>Action</key>
    					<integer>12</integer>
    					<key>Text</key>
    					<string>0</string>
    				</dict>
    				<key>0x31-0x200000</key>
    				<dict>
    					<key>Action</key>
    					<integer>12</integer>
    					<key>Text</key>
    					<string>1</string>
    				</dict>
    				<key>0x32-0x200000</key>
    				<dict>
    					<key>Action</key>
    					<integer>12</integer>
    					<key>Text</key>
    					<string>2</string>
    				</dict>
    				<key>0x32-0x40000</key>
    				<dict>
    					<key>Action</key>
    					<integer>11</integer>
    					<key>Text</key>
    					<string>0x00</string>
    				</dict>
    				<key>0x33-0x200000</key>
    				<dict>
    					<key>Action</key>
    					<integer>12</integer>
    					<key>Text</key>
    					<string>3</string>
    				</dict>
    				<key>0x33-0x40000</key>
    				<dict>
    					<key>Action</key>
    					<integer>11</integer>
    					<key>Text</key>
    					<string>0x1b</string>
    				</dict>
    				<key>0x34-0x200000</key>
    				<dict>
    					<key>Action</key>
    					<integer>12</integer>
    					<key>Text</key>
    					<string>4</string>
    				</dict>
    				<key>0x34-0x40000</key>
    				<dict>
    					<key>Action</key>
    					<integer>11</integer>
    					<key>Text</key>
    					<string>0x1c</string>
    				</dict>
    				<key>0x35-0x200000</key>
    				<dict>
    					<key>Action</key>
    					<integer>12</integer>
    					<key>Text</key>
    					<string>5</string>
    				</dict>
    				<key>0x35-0x40000</key>
    				<dict>
    					<key>Action</key>
    					<integer>11</integer>
    					<key>Text</key>
    					<string>0x1d</string>
    				</dict>
    				<key>0x36-0x200000</key>
    				<dict>
    					<key>Action</key>
    					<integer>12</integer>
    					<key>Text</key>
    					<string>6</string>
    				</dict>
    				<key>0x36-0x40000</key>
    				<dict>
    					<key>Action</key>
    					<integer>11</integer>
    					<key>Text</key>
    					<string>0x1e</string>
    				</dict>
    				<key>0x37-0x200000</key>
    				<dict>
    					<key>Action</key>
    					<integer>12</integer>
    					<key>Text</key>
    					<string>7</string>
    				</dict>
    				<key>0x37-0x40000</key>
    				<dict>
    					<key>Action</key>
    					<integer>11</integer>
    					<key>Text</key>
    					<string>0x1f</string>
    				</dict>
    				<key>0x38-0x200000</key>
    				<dict>
    					<key>Action</key>
    					<integer>12</integer>
    					<key>Text</key>
    					<string>8</string>
    				</dict>
    				<key>0x38-0x40000</key>
    				<dict>
    					<key>Action</key>
    					<integer>11</integer>
    					<key>Text</key>
    					<string>0x7f</string>
    				</dict>
    				<key>0x39-0x200000</key>
    				<dict>
    					<key>Action</key>
    					<integer>12</integer>
    					<key>Text</key>
    					<string>9</string>
    				</dict>
    				<key>0x7f-0x100000</key>
    				<dict>
    					<key>Action</key>
    					<integer>11</integer>
    					<key>Text</key>
    					<string>0x15</string>
    				</dict>
    				<key>0x7f-0x80000</key>
    				<dict>
    					<key>Action</key>
    					<integer>11</integer>
    					<key>Text</key>
    					<string>0x1b 0x7f</string>
    				</dict>
    				<key>0xf700-0x220000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;2A</string>
    				</dict>
    				<key>0xf700-0x240000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;5A</string>
    				</dict>
    				<key>0xf700-0x260000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;6A</string>
    				</dict>
    				<key>0xf701-0x220000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;2B</string>
    				</dict>
    				<key>0xf701-0x240000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;5B</string>
    				</dict>
    				<key>0xf701-0x260000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;6B</string>
    				</dict>
    				<key>0xf702-0x220000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;2D</string>
    				</dict>
    				<key>0xf702-0x240000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;5D</string>
    				</dict>
    				<key>0xf702-0x260000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;6D</string>
    				</dict>
    				<key>0xf702-0x280000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>b</string>
    				</dict>
    				<key>0xf703-0x220000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;2C</string>
    				</dict>
    				<key>0xf703-0x240000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;5C</string>
    				</dict>
    				<key>0xf703-0x260000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;6C</string>
    				</dict>
    				<key>0xf703-0x280000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>f</string>
    				</dict>
    				<key>0xf704-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;2P</string>
    				</dict>
    				<key>0xf705-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;2Q</string>
    				</dict>
    				<key>0xf706-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;2R</string>
    				</dict>
    				<key>0xf707-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;2S</string>
    				</dict>
    				<key>0xf708-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[15;2~</string>
    				</dict>
    				<key>0xf709-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[17;2~</string>
    				</dict>
    				<key>0xf70a-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[18;2~</string>
    				</dict>
    				<key>0xf70b-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[19;2~</string>
    				</dict>
    				<key>0xf70c-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[20;2~</string>
    				</dict>
    				<key>0xf70d-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[21;2~</string>
    				</dict>
    				<key>0xf70e-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[23;2~</string>
    				</dict>
    				<key>0xf70f-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[24;2~</string>
    				</dict>
    				<key>0xf728-0x0</key>
    				<dict>
    					<key>Action</key>
    					<integer>11</integer>
    					<key>Text</key>
    					<string>0x4</string>
    				</dict>
    				<key>0xf728-0x80000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>d</string>
    				</dict>
    				<key>0xf729-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;2H</string>
    				</dict>
    				<key>0xf729-0x40000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;5H</string>
    				</dict>
    				<key>0xf72b-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;2F</string>
    				</dict>
    				<key>0xf72b-0x40000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;5F</string>
    				</dict>
    				<key>0xf739-0x0</key>
    				<dict>
    					<key>Action</key>
    					<integer>13</integer>
    					<key>Text</key>
    					<string></string>
    				</dict>
    			</dict>
    			<key>Link Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<integer>1</integer>
    				<key>Blue Component</key>
    				<real>0.93725490570068359</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.68627452850341797</real>
    				<key>Red Component</key>
    				<real>0.3803921639919281</real>
    			</dict>
    			<key>Mouse Reporting</key>
    			<true/>
    			<key>Name</key>
    			<string>OneDark</string>
    			<key>Non Ascii Font</key>
    			<string>FiraCodeNerdFontCompleteM-Retina 15</string>
    			<key>Non-ASCII Anti Aliased</key>
    			<true/>
    			<key>Non-ASCII Ligatures</key>
    			<true/>
    			<key>Normal Font</key>
    			<string>FiraCodeNerdFontComplete-Retina 15</string>
    			<key>Option Key Sends</key>
    			<integer>0</integer>
    			<key>Prompt Before Closing 2</key>
    			<false/>
    			<key>Right Option Key Sends</key>
    			<integer>0</integer>
    			<key>Rows</key>
    			<integer>25</integer>
    			<key>Screen</key>
    			<integer>-1</integer>
    			<key>Scrollback Lines</key>
    			<integer>0</integer>
    			<key>Selected Text Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<integer>1</integer>
    				<key>Blue Component</key>
    				<real>0.74901962280273438</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.69803923368453979</real>
    				<key>Red Component</key>
    				<real>0.67058825492858887</real>
    			</dict>
    			<key>Selection Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<integer>1</integer>
    				<key>Blue Component</key>
    				<real>0.26666668057441711</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.21960784494876862</real>
    				<key>Red Component</key>
    				<real>0.19607843458652496</real>
    			</dict>
    			<key>Send Code When Idle</key>
    			<false/>
    			<key>Shortcut</key>
    			<string></string>
    			<key>Show Status Bar</key>
    			<false/>
    			<key>Silence Bell</key>
    			<false/>
    			<key>Sync Title</key>
    			<false/>
    			<key>Tags</key>
    			<array/>
    			<key>Terminal Type</key>
    			<string>xterm-256color</string>
    			<key>Title Components</key>
    			<integer>2</integer>
    			<key>Transparency</key>
    			<integer>0</integer>
    			<key>Unicode Normalization</key>
    			<integer>0</integer>
    			<key>Unlimited Scrollback</key>
    			<true/>
    			<key>Use Bold Font</key>
    			<true/>
    			<key>Use Bright Bold</key>
    			<true/>
    			<key>Use Italic Font</key>
    			<true/>
    			<key>Use Non-ASCII Font</key>
    			<true/>
    			<key>Vertical Spacing</key>
    			<integer>1</integer>
    			<key>Visual Bell</key>
    			<true/>
    			<key>Window Type</key>
    			<integer>0</integer>
    			<key>Working Directory</key>
    			<string>/Users/${config.home.username}</string>
    		</dict>
    		<dict>
    			<key>ASCII Anti Aliased</key>
    			<true/>
    			<key>ASCII Ligatures</key>
    			<true/>
    			<key>Allow Title Setting</key>
    			<false/>
    			<key>Ambiguous Double Width</key>
    			<false/>
    			<key>Ansi 0 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.0</real>
    				<key>Green Component</key>
    				<real>0.0</real>
    				<key>Red Component</key>
    				<real>0.0</real>
    			</dict>
    			<key>Ansi 1 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.20784313725490197</real>
    				<key>Green Component</key>
    				<real>0.24313725490196078</real>
    				<key>Red Component</key>
    				<real>0.87058823529411766</real>
    			</dict>
    			<key>Ansi 10 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.22745098039215686</real>
    				<key>Green Component</key>
    				<real>0.58431372549019611</real>
    				<key>Red Component</key>
    				<real>0.24705882352941178</real>
    			</dict>
    			<key>Ansi 11 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.48627450980392156</real>
    				<key>Green Component</key>
    				<real>0.71372549019607845</real>
    				<key>Red Component</key>
    				<real>0.82352941176470584</real>
    			</dict>
    			<key>Ansi 12 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.95294117647058818</real>
    				<key>Green Component</key>
    				<real>0.35294117647058826</real>
    				<key>Red Component</key>
    				<real>0.18431372549019609</real>
    			</dict>
    			<key>Ansi 13 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.58431372549019611</real>
    				<key>Green Component</key>
    				<real>0.0</real>
    				<key>Red Component</key>
    				<real>0.62745098039215685</real>
    			</dict>
    			<key>Ansi 14 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.22745098039215686</real>
    				<key>Green Component</key>
    				<real>0.58431372549019611</real>
    				<key>Red Component</key>
    				<real>0.24705882352941178</real>
    			</dict>
    			<key>Ansi 15 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>1</real>
    				<key>Green Component</key>
    				<real>1</real>
    				<key>Red Component</key>
    				<real>1</real>
    			</dict>
    			<key>Ansi 2 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.22745098039215686</real>
    				<key>Green Component</key>
    				<real>0.58431372549019611</real>
    				<key>Red Component</key>
    				<real>0.24705882352941178</real>
    			</dict>
    			<key>Ansi 3 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.48627450980392156</real>
    				<key>Green Component</key>
    				<real>0.71372549019607845</real>
    				<key>Red Component</key>
    				<real>0.82352941176470584</real>
    			</dict>
    			<key>Ansi 4 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.95294117647058818</real>
    				<key>Green Component</key>
    				<real>0.35294117647058826</real>
    				<key>Red Component</key>
    				<real>0.18431372549019609</real>
    			</dict>
    			<key>Ansi 5 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.58431372549019611</real>
    				<key>Green Component</key>
    				<real>0.0</real>
    				<key>Red Component</key>
    				<real>0.58431372549019611</real>
    			</dict>
    			<key>Ansi 6 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.22745098039215686</real>
    				<key>Green Component</key>
    				<real>0.58431372549019611</real>
    				<key>Red Component</key>
    				<real>0.24705882352941178</real>
    			</dict>
    			<key>Ansi 7 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.73333334922790527</real>
    				<key>Green Component</key>
    				<real>0.73333334922790527</real>
    				<key>Red Component</key>
    				<real>0.73333334922790527</real>
    			</dict>
    			<key>Ansi 8 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.0</real>
    				<key>Green Component</key>
    				<real>0.0</real>
    				<key>Red Component</key>
    				<real>0.0</real>
    			</dict>
    			<key>Ansi 9 Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.20784313725490197</real>
    				<key>Green Component</key>
    				<real>0.24313725490196078</real>
    				<key>Red Component</key>
    				<real>0.87058823529411766</real>
    			</dict>
    			<key>BM Growl</key>
    			<true/>
    			<key>Background Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.97647058823529409</real>
    				<key>Green Component</key>
    				<real>0.97647058823529409</real>
    				<key>Red Component</key>
    				<real>0.97647058823529409</real>
    			</dict>
    			<key>Background Image Location</key>
    			<string></string>
    			<key>Badge Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>0.5</real>
    				<key>Blue Component</key>
    				<real>0.0</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.14910027384757996</real>
    				<key>Red Component</key>
    				<real>1</real>
    			</dict>
    			<key>Blinking Cursor</key>
    			<false/>
    			<key>Blur</key>
    			<false/>
    			<key>Bold Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.0</real>
    				<key>Green Component</key>
    				<real>0.0</real>
    				<key>Red Component</key>
    				<real>0.0</real>
    			</dict>
    			<key>Bound Hosts</key>
    			<array/>
    			<key>Character Encoding</key>
    			<integer>4</integer>
    			<key>Close Sessions On End</key>
    			<true/>
    			<key>Columns</key>
    			<integer>80</integer>
    			<key>Command</key>
    			<string>/Users/${config.home.username}/.nix-profile/bin/fish</string>
    			<key>Cursor Boost</key>
    			<integer>0</integer>
    			<key>Cursor Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.73333334922790527</real>
    				<key>Green Component</key>
    				<real>0.73333334922790527</real>
    				<key>Red Component</key>
    				<real>0.73333334922790527</real>
    			</dict>
    			<key>Cursor Guide Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>0.25</real>
    				<key>Blue Component</key>
    				<real>1</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.92681378126144409</real>
    				<key>Red Component</key>
    				<real>0.70214027166366577</real>
    			</dict>
    			<key>Cursor Text Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>1</real>
    				<key>Green Component</key>
    				<real>1</real>
    				<key>Red Component</key>
    				<real>1</real>
    			</dict>
    			<key>Custom Command</key>
    			<string>Yes</string>
    			<key>Custom Directory</key>
    			<string>No</string>
    			<key>Default Bookmark</key>
    			<string>No</string>
    			<key>Description</key>
    			<string>Default</string>
    			<key>Disable Window Resizing</key>
    			<true/>
    			<key>Draw Powerline Glyphs</key>
    			<false/>
    			<key>Flashing Bell</key>
    			<false/>
    			<key>Foreground Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.20000000000000001</real>
    				<key>Green Component</key>
    				<real>0.17254901960784313</real>
    				<key>Red Component</key>
    				<real>0.16470588235294117</real>
    			</dict>
    			<key>Guid</key>
    			<string>8BD4AF4E-9D0A-4A95-ACBA-645A8A29D0EF</string>
    			<key>Has Hotkey</key>
    			<false/>
    			<key>Horizontal Spacing</key>
    			<integer>1</integer>
    			<key>Icon</key>
    			<integer>1</integer>
    			<key>Idle Code</key>
    			<integer>0</integer>
    			<key>Jobs to Ignore</key>
    			<array>
    				<string>rlogin</string>
    				<string>ssh</string>
    				<string>slogin</string>
    				<string>telnet</string>
    			</array>
    			<key>Keyboard Map</key>
    			<dict>
    				<key>0x2a-0x200000</key>
    				<dict>
    					<key>Action</key>
    					<integer>12</integer>
    					<key>Text</key>
    					<string>*</string>
    				</dict>
    				<key>0x2b-0x200000</key>
    				<dict>
    					<key>Action</key>
    					<integer>12</integer>
    					<key>Text</key>
    					<string>+</string>
    				</dict>
    				<key>0x2d-0x200000</key>
    				<dict>
    					<key>Action</key>
    					<integer>12</integer>
    					<key>Text</key>
    					<string>-</string>
    				</dict>
    				<key>0x2d-0x40000</key>
    				<dict>
    					<key>Action</key>
    					<integer>11</integer>
    					<key>Text</key>
    					<string>0x1f</string>
    				</dict>
    				<key>0x2e-0x200000</key>
    				<dict>
    					<key>Action</key>
    					<integer>12</integer>
    					<key>Text</key>
    					<string>.</string>
    				</dict>
    				<key>0x2f-0x200000</key>
    				<dict>
    					<key>Action</key>
    					<integer>12</integer>
    					<key>Text</key>
    					<string>/</string>
    				</dict>
    				<key>0x3-0x200000</key>
    				<dict>
    					<key>Action</key>
    					<integer>11</integer>
    					<key>Text</key>
    					<string>0xd</string>
    				</dict>
    				<key>0x30-0x200000</key>
    				<dict>
    					<key>Action</key>
    					<integer>12</integer>
    					<key>Text</key>
    					<string>0</string>
    				</dict>
    				<key>0x31-0x200000</key>
    				<dict>
    					<key>Action</key>
    					<integer>12</integer>
    					<key>Text</key>
    					<string>1</string>
    				</dict>
    				<key>0x32-0x200000</key>
    				<dict>
    					<key>Action</key>
    					<integer>12</integer>
    					<key>Text</key>
    					<string>2</string>
    				</dict>
    				<key>0x32-0x40000</key>
    				<dict>
    					<key>Action</key>
    					<integer>11</integer>
    					<key>Text</key>
    					<string>0x00</string>
    				</dict>
    				<key>0x33-0x200000</key>
    				<dict>
    					<key>Action</key>
    					<integer>12</integer>
    					<key>Text</key>
    					<string>3</string>
    				</dict>
    				<key>0x33-0x40000</key>
    				<dict>
    					<key>Action</key>
    					<integer>11</integer>
    					<key>Text</key>
    					<string>0x1b</string>
    				</dict>
    				<key>0x34-0x200000</key>
    				<dict>
    					<key>Action</key>
    					<integer>12</integer>
    					<key>Text</key>
    					<string>4</string>
    				</dict>
    				<key>0x34-0x40000</key>
    				<dict>
    					<key>Action</key>
    					<integer>11</integer>
    					<key>Text</key>
    					<string>0x1c</string>
    				</dict>
    				<key>0x35-0x200000</key>
    				<dict>
    					<key>Action</key>
    					<integer>12</integer>
    					<key>Text</key>
    					<string>5</string>
    				</dict>
    				<key>0x35-0x40000</key>
    				<dict>
    					<key>Action</key>
    					<integer>11</integer>
    					<key>Text</key>
    					<string>0x1d</string>
    				</dict>
    				<key>0x36-0x200000</key>
    				<dict>
    					<key>Action</key>
    					<integer>12</integer>
    					<key>Text</key>
    					<string>6</string>
    				</dict>
    				<key>0x36-0x40000</key>
    				<dict>
    					<key>Action</key>
    					<integer>11</integer>
    					<key>Text</key>
    					<string>0x1e</string>
    				</dict>
    				<key>0x37-0x200000</key>
    				<dict>
    					<key>Action</key>
    					<integer>12</integer>
    					<key>Text</key>
    					<string>7</string>
    				</dict>
    				<key>0x37-0x40000</key>
    				<dict>
    					<key>Action</key>
    					<integer>11</integer>
    					<key>Text</key>
    					<string>0x1f</string>
    				</dict>
    				<key>0x38-0x200000</key>
    				<dict>
    					<key>Action</key>
    					<integer>12</integer>
    					<key>Text</key>
    					<string>8</string>
    				</dict>
    				<key>0x38-0x40000</key>
    				<dict>
    					<key>Action</key>
    					<integer>11</integer>
    					<key>Text</key>
    					<string>0x7f</string>
    				</dict>
    				<key>0x39-0x200000</key>
    				<dict>
    					<key>Action</key>
    					<integer>12</integer>
    					<key>Text</key>
    					<string>9</string>
    				</dict>
    				<key>0x7f-0x100000</key>
    				<dict>
    					<key>Action</key>
    					<integer>11</integer>
    					<key>Text</key>
    					<string>0x15</string>
    				</dict>
    				<key>0x7f-0x80000</key>
    				<dict>
    					<key>Action</key>
    					<integer>11</integer>
    					<key>Text</key>
    					<string>0x1b 0x7f</string>
    				</dict>
    				<key>0xf700-0x220000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;2A</string>
    				</dict>
    				<key>0xf700-0x240000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;5A</string>
    				</dict>
    				<key>0xf700-0x260000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;6A</string>
    				</dict>
    				<key>0xf701-0x220000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;2B</string>
    				</dict>
    				<key>0xf701-0x240000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;5B</string>
    				</dict>
    				<key>0xf701-0x260000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;6B</string>
    				</dict>
    				<key>0xf702-0x220000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;2D</string>
    				</dict>
    				<key>0xf702-0x240000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;5D</string>
    				</dict>
    				<key>0xf702-0x260000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;6D</string>
    				</dict>
    				<key>0xf702-0x280000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>b</string>
    				</dict>
    				<key>0xf703-0x220000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;2C</string>
    				</dict>
    				<key>0xf703-0x240000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;5C</string>
    				</dict>
    				<key>0xf703-0x260000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;6C</string>
    				</dict>
    				<key>0xf703-0x280000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>f</string>
    				</dict>
    				<key>0xf704-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;2P</string>
    				</dict>
    				<key>0xf705-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;2Q</string>
    				</dict>
    				<key>0xf706-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;2R</string>
    				</dict>
    				<key>0xf707-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;2S</string>
    				</dict>
    				<key>0xf708-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[15;2~</string>
    				</dict>
    				<key>0xf709-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[17;2~</string>
    				</dict>
    				<key>0xf70a-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[18;2~</string>
    				</dict>
    				<key>0xf70b-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[19;2~</string>
    				</dict>
    				<key>0xf70c-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[20;2~</string>
    				</dict>
    				<key>0xf70d-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[21;2~</string>
    				</dict>
    				<key>0xf70e-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[23;2~</string>
    				</dict>
    				<key>0xf70f-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[24;2~</string>
    				</dict>
    				<key>0xf728-0x0</key>
    				<dict>
    					<key>Action</key>
    					<integer>11</integer>
    					<key>Text</key>
    					<string>0x4</string>
    				</dict>
    				<key>0xf728-0x80000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>d</string>
    				</dict>
    				<key>0xf729-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;2H</string>
    				</dict>
    				<key>0xf729-0x40000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;5H</string>
    				</dict>
    				<key>0xf72b-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;2F</string>
    				</dict>
    				<key>0xf72b-0x40000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;5F</string>
    				</dict>
    				<key>0xf739-0x0</key>
    				<dict>
    					<key>Action</key>
    					<integer>13</integer>
    					<key>Text</key>
    					<string></string>
    				</dict>
    			</dict>
    			<key>Link Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.73422712087631226</real>
    				<key>Color Space</key>
    				<string>sRGB</string>
    				<key>Green Component</key>
    				<real>0.35915297269821167</real>
    				<key>Red Component</key>
    				<real>0.0</real>
    			</dict>
    			<key>Mouse Reporting</key>
    			<true/>
    			<key>Name</key>
    			<string>OneDarkLight</string>
    			<key>Non Ascii Font</key>
    			<string>FiraCodeNerdFontCompleteM-Retina 15</string>
    			<key>Non-ASCII Anti Aliased</key>
    			<true/>
    			<key>Non-ASCII Ligatures</key>
    			<true/>
    			<key>Normal Font</key>
    			<string>FiraCodeNerdFontComplete-Retina 15</string>
    			<key>Option Key Sends</key>
    			<integer>0</integer>
    			<key>Prompt Before Closing 2</key>
    			<false/>
    			<key>Right Option Key Sends</key>
    			<integer>0</integer>
    			<key>Rows</key>
    			<integer>25</integer>
    			<key>Screen</key>
    			<integer>-1</integer>
    			<key>Scrollback Lines</key>
    			<integer>0</integer>
    			<key>Selected Text Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.20000000000000001</real>
    				<key>Green Component</key>
    				<real>0.17254901960784313</real>
    				<key>Red Component</key>
    				<real>0.16470588235294117</real>
    			</dict>
    			<key>Selection Color</key>
    			<dict>
    				<key>Blue Component</key>
    				<real>0.92941176470588238</real>
    				<key>Green Component</key>
    				<real>0.92941176470588238</real>
    				<key>Red Component</key>
    				<real>0.92941176470588238</real>
    			</dict>
    			<key>Send Code When Idle</key>
    			<false/>
    			<key>Shortcut</key>
    			<string></string>
    			<key>Show Status Bar</key>
    			<false/>
    			<key>Silence Bell</key>
    			<false/>
    			<key>Sync Title</key>
    			<false/>
    			<key>Tags</key>
    			<array/>
    			<key>Terminal Type</key>
    			<string>xterm-256color</string>
    			<key>Title Components</key>
    			<integer>2</integer>
    			<key>Transparency</key>
    			<integer>0</integer>
    			<key>Unicode Normalization</key>
    			<integer>0</integer>
    			<key>Unlimited Scrollback</key>
    			<true/>
    			<key>Use Bold Font</key>
    			<true/>
    			<key>Use Bright Bold</key>
    			<true/>
    			<key>Use Italic Font</key>
    			<true/>
    			<key>Use Non-ASCII Font</key>
    			<true/>
    			<key>Vertical Spacing</key>
    			<integer>1</integer>
    			<key>Visual Bell</key>
    			<true/>
    			<key>Window Type</key>
    			<integer>0</integer>
    			<key>Working Directory</key>
    			<string>/Users/${config.home.username}</string>
    		</dict>
    		<dict>
    			<key>ASCII Anti Aliased</key>
    			<true/>
    			<key>ASCII Ligatures</key>
    			<true/>
    			<key>Allow Title Setting</key>
    			<false/>
    			<key>Ambiguous Double Width</key>
    			<false/>
    			<key>Ansi 0 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.25882352941199999</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.22745098039200001</real>
    				<key>Red Component</key>
    				<real>0.21960784313699999</real>
    			</dict>
    			<key>Ansi 1 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.28627450980399999</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.337254901961</real>
    				<key>Red Component</key>
    				<real>0.89411764705899999</real>
    			</dict>
    			<key>Ansi 10 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.47450980392199998</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.76470588235299997</real>
    				<key>Red Component</key>
    				<real>0.59607843137299998</real>
    			</dict>
    			<key>Ansi 11 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.48235294117600003</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.75294117647100001</real>
    				<key>Red Component</key>
    				<real>0.89803921568599998</real>
    			</dict>
    			<key>Ansi 12 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.93725490196100003</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.68627450980399995</real>
    				<key>Red Component</key>
    				<real>0.38039215686299999</real>
    			</dict>
    			<key>Ansi 13 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.86666666666699999</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.47058823529400001</real>
    				<key>Red Component</key>
    				<real>0.77647058823500004</real>
    			</dict>
    			<key>Ansi 14 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.76078431372499999</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.71372549019599996</real>
    				<key>Red Component</key>
    				<real>0.337254901961</real>
    			</dict>
    			<key>Ansi 15 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>1</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>1</real>
    				<key>Red Component</key>
    				<real>1</real>
    			</dict>
    			<key>Ansi 2 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.309803921569</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.63137254901999995</real>
    				<key>Red Component</key>
    				<real>0.31372549019599999</real>
    			</dict>
    			<key>Ansi 3 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.0039215686274500002</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.51764705882399997</real>
    				<key>Red Component</key>
    				<real>0.756862745098</real>
    			</dict>
    			<key>Ansi 4 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.73725490196099996</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.51764705882399997</real>
    				<key>Red Component</key>
    				<real>0.0039215686274500002</real>
    			</dict>
    			<key>Ansi 5 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.64313725490200002</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.149019607843</real>
    				<key>Red Component</key>
    				<real>0.65098039215699999</real>
    			</dict>
    			<key>Ansi 6 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.701960784314</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.59215686274500001</real>
    				<key>Red Component</key>
    				<real>0.035294117647099998</real>
    			</dict>
    			<key>Ansi 7 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.98039215686299996</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.98039215686299996</real>
    				<key>Red Component</key>
    				<real>0.98039215686299996</real>
    			</dict>
    			<key>Ansi 8 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.36862745097999999</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.32156862745100001</real>
    				<key>Red Component</key>
    				<real>0.309803921569</real>
    			</dict>
    			<key>Ansi 9 Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.458823529412</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.42352941176499997</real>
    				<key>Red Component</key>
    				<real>0.87843137254899994</real>
    			</dict>
    			<key>BM Growl</key>
    			<true/>
    			<key>Background Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.98039215686299996</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.98039215686299996</real>
    				<key>Red Component</key>
    				<real>0.98039215686299996</real>
    			</dict>
    			<key>Background Image Location</key>
    			<string></string>
    			<key>Badge Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>0.5</real>
    				<key>Blue Component</key>
    				<real>0.0</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.0</real>
    				<key>Red Component</key>
    				<real>1</real>
    			</dict>
    			<key>Blinking Cursor</key>
    			<false/>
    			<key>Blur</key>
    			<false/>
    			<key>Bold Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.74901962280273438</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.69803923368453979</real>
    				<key>Red Component</key>
    				<real>0.67058825492858887</real>
    			</dict>
    			<key>Bound Hosts</key>
    			<array/>
    			<key>Character Encoding</key>
    			<integer>4</integer>
    			<key>Close Sessions On End</key>
    			<true/>
    			<key>Columns</key>
    			<integer>80</integer>
    			<key>Command</key>
    			<string></string>
    			<key>Cursor Boost</key>
    			<integer>0</integer>
    			<key>Cursor Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>1</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.80784313725500001</real>
    				<key>Red Component</key>
    				<real>0.74901960784300003</real>
    			</dict>
    			<key>Cursor Guide Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>0.25</real>
    				<key>Blue Component</key>
    				<real>0.94117647058800002</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.94117647058800002</real>
    				<key>Red Component</key>
    				<real>0.94117647058800002</real>
    			</dict>
    			<key>Cursor Text Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.25882352941199999</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.22745098039200001</real>
    				<key>Red Component</key>
    				<real>0.21960784313699999</real>
    			</dict>
    			<key>Custom Command</key>
    			<string>No</string>
    			<key>Custom Directory</key>
    			<string>No</string>
    			<key>Default Bookmark</key>
    			<string>No</string>
    			<key>Description</key>
    			<string>Default</string>
    			<key>Disable Window Resizing</key>
    			<true/>
    			<key>Draw Powerline Glyphs</key>
    			<false/>
    			<key>Flashing Bell</key>
    			<false/>
    			<key>Foreground Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.25882352941199999</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.22745098039200001</real>
    				<key>Red Component</key>
    				<real>0.21960784313699999</real>
    			</dict>
    			<key>Guid</key>
    			<string>8BD602D6-92C6-4C77-9872-77554435A31A</string>
    			<key>Has Hotkey</key>
    			<false/>
    			<key>Horizontal Spacing</key>
    			<real>1</real>
    			<key>Icon</key>
    			<integer>1</integer>
    			<key>Idle Code</key>
    			<integer>0</integer>
    			<key>Jobs to Ignore</key>
    			<array>
    				<string>rlogin</string>
    				<string>ssh</string>
    				<string>slogin</string>
    				<string>telnet</string>
    			</array>
    			<key>Keyboard Map</key>
    			<dict>
    				<key>0x2a-0x200000</key>
    				<dict>
    					<key>Action</key>
    					<integer>12</integer>
    					<key>Text</key>
    					<string>*</string>
    				</dict>
    				<key>0x2b-0x200000</key>
    				<dict>
    					<key>Action</key>
    					<integer>12</integer>
    					<key>Text</key>
    					<string>+</string>
    				</dict>
    				<key>0x2d-0x200000</key>
    				<dict>
    					<key>Action</key>
    					<integer>12</integer>
    					<key>Text</key>
    					<string>-</string>
    				</dict>
    				<key>0x2d-0x40000</key>
    				<dict>
    					<key>Action</key>
    					<integer>11</integer>
    					<key>Text</key>
    					<string>0x1f</string>
    				</dict>
    				<key>0x2e-0x200000</key>
    				<dict>
    					<key>Action</key>
    					<integer>12</integer>
    					<key>Text</key>
    					<string>.</string>
    				</dict>
    				<key>0x2f-0x200000</key>
    				<dict>
    					<key>Action</key>
    					<integer>12</integer>
    					<key>Text</key>
    					<string>/</string>
    				</dict>
    				<key>0x3-0x200000</key>
    				<dict>
    					<key>Action</key>
    					<integer>11</integer>
    					<key>Text</key>
    					<string>0xd</string>
    				</dict>
    				<key>0x30-0x200000</key>
    				<dict>
    					<key>Action</key>
    					<integer>12</integer>
    					<key>Text</key>
    					<string>0</string>
    				</dict>
    				<key>0x31-0x200000</key>
    				<dict>
    					<key>Action</key>
    					<integer>12</integer>
    					<key>Text</key>
    					<string>1</string>
    				</dict>
    				<key>0x32-0x200000</key>
    				<dict>
    					<key>Action</key>
    					<integer>12</integer>
    					<key>Text</key>
    					<string>2</string>
    				</dict>
    				<key>0x32-0x40000</key>
    				<dict>
    					<key>Action</key>
    					<integer>11</integer>
    					<key>Text</key>
    					<string>0x00</string>
    				</dict>
    				<key>0x33-0x200000</key>
    				<dict>
    					<key>Action</key>
    					<integer>12</integer>
    					<key>Text</key>
    					<string>3</string>
    				</dict>
    				<key>0x33-0x40000</key>
    				<dict>
    					<key>Action</key>
    					<integer>11</integer>
    					<key>Text</key>
    					<string>0x1b</string>
    				</dict>
    				<key>0x34-0x200000</key>
    				<dict>
    					<key>Action</key>
    					<integer>12</integer>
    					<key>Text</key>
    					<string>4</string>
    				</dict>
    				<key>0x34-0x40000</key>
    				<dict>
    					<key>Action</key>
    					<integer>11</integer>
    					<key>Text</key>
    					<string>0x1c</string>
    				</dict>
    				<key>0x35-0x200000</key>
    				<dict>
    					<key>Action</key>
    					<integer>12</integer>
    					<key>Text</key>
    					<string>5</string>
    				</dict>
    				<key>0x35-0x40000</key>
    				<dict>
    					<key>Action</key>
    					<integer>11</integer>
    					<key>Text</key>
    					<string>0x1d</string>
    				</dict>
    				<key>0x36-0x200000</key>
    				<dict>
    					<key>Action</key>
    					<integer>12</integer>
    					<key>Text</key>
    					<string>6</string>
    				</dict>
    				<key>0x36-0x40000</key>
    				<dict>
    					<key>Action</key>
    					<integer>11</integer>
    					<key>Text</key>
    					<string>0x1e</string>
    				</dict>
    				<key>0x37-0x200000</key>
    				<dict>
    					<key>Action</key>
    					<integer>12</integer>
    					<key>Text</key>
    					<string>7</string>
    				</dict>
    				<key>0x37-0x40000</key>
    				<dict>
    					<key>Action</key>
    					<integer>11</integer>
    					<key>Text</key>
    					<string>0x1f</string>
    				</dict>
    				<key>0x38-0x200000</key>
    				<dict>
    					<key>Action</key>
    					<integer>12</integer>
    					<key>Text</key>
    					<string>8</string>
    				</dict>
    				<key>0x38-0x40000</key>
    				<dict>
    					<key>Action</key>
    					<integer>11</integer>
    					<key>Text</key>
    					<string>0x7f</string>
    				</dict>
    				<key>0x39-0x200000</key>
    				<dict>
    					<key>Action</key>
    					<integer>12</integer>
    					<key>Text</key>
    					<string>9</string>
    				</dict>
    				<key>0x7f-0x100000</key>
    				<dict>
    					<key>Action</key>
    					<integer>11</integer>
    					<key>Text</key>
    					<string>0x15</string>
    				</dict>
    				<key>0x7f-0x80000</key>
    				<dict>
    					<key>Action</key>
    					<integer>11</integer>
    					<key>Text</key>
    					<string>0x1b 0x7f</string>
    				</dict>
    				<key>0xf700-0x220000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;2A</string>
    				</dict>
    				<key>0xf700-0x240000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;5A</string>
    				</dict>
    				<key>0xf700-0x260000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;6A</string>
    				</dict>
    				<key>0xf701-0x220000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;2B</string>
    				</dict>
    				<key>0xf701-0x240000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;5B</string>
    				</dict>
    				<key>0xf701-0x260000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;6B</string>
    				</dict>
    				<key>0xf702-0x220000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;2D</string>
    				</dict>
    				<key>0xf702-0x240000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;5D</string>
    				</dict>
    				<key>0xf702-0x260000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;6D</string>
    				</dict>
    				<key>0xf702-0x280000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>b</string>
    				</dict>
    				<key>0xf703-0x220000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;2C</string>
    				</dict>
    				<key>0xf703-0x240000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;5C</string>
    				</dict>
    				<key>0xf703-0x260000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;6C</string>
    				</dict>
    				<key>0xf703-0x280000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>f</string>
    				</dict>
    				<key>0xf704-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;2P</string>
    				</dict>
    				<key>0xf705-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;2Q</string>
    				</dict>
    				<key>0xf706-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;2R</string>
    				</dict>
    				<key>0xf707-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;2S</string>
    				</dict>
    				<key>0xf708-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[15;2~</string>
    				</dict>
    				<key>0xf709-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[17;2~</string>
    				</dict>
    				<key>0xf70a-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[18;2~</string>
    				</dict>
    				<key>0xf70b-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[19;2~</string>
    				</dict>
    				<key>0xf70c-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[20;2~</string>
    				</dict>
    				<key>0xf70d-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[21;2~</string>
    				</dict>
    				<key>0xf70e-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[23;2~</string>
    				</dict>
    				<key>0xf70f-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[24;2~</string>
    				</dict>
    				<key>0xf728-0x0</key>
    				<dict>
    					<key>Action</key>
    					<integer>11</integer>
    					<key>Text</key>
    					<string>0x4</string>
    				</dict>
    				<key>0xf728-0x80000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>d</string>
    				</dict>
    				<key>0xf729-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;2H</string>
    				</dict>
    				<key>0xf729-0x40000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;5H</string>
    				</dict>
    				<key>0xf72b-0x20000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;2F</string>
    				</dict>
    				<key>0xf72b-0x40000</key>
    				<dict>
    					<key>Action</key>
    					<integer>10</integer>
    					<key>Text</key>
    					<string>[1;5F</string>
    				</dict>
    				<key>0xf739-0x0</key>
    				<dict>
    					<key>Action</key>
    					<integer>13</integer>
    					<key>Text</key>
    					<string></string>
    				</dict>
    			</dict>
    			<key>Link Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.73725490196099996</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.51764705882399997</real>
    				<key>Red Component</key>
    				<real>0.0039215686274500002</real>
    			</dict>
    			<key>Mouse Reporting</key>
    			<true/>
    			<key>Name</key>
    			<string>MainProfile(Light)</string>
    			<key>Non Ascii Font</key>
    			<string>FiraCodeNerdFontCompleteM-Retina 15</string>
    			<key>Non-ASCII Anti Aliased</key>
    			<true/>
    			<key>Non-ASCII Ligatures</key>
    			<true/>
    			<key>Normal Font</key>
    			<string>FiraCodeNerdFontComplete-Retina 15</string>
    			<key>Option Key Sends</key>
    			<integer>0</integer>
    			<key>Prompt Before Closing 2</key>
    			<false/>
    			<key>Right Option Key Sends</key>
    			<integer>0</integer>
    			<key>Rows</key>
    			<integer>25</integer>
    			<key>Screen</key>
    			<integer>-1</integer>
    			<key>Scrollback Lines</key>
    			<integer>0</integer>
    			<key>Selected Text Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>0.25882352941199999</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.22745098039200001</real>
    				<key>Red Component</key>
    				<real>0.21960784313699999</real>
    			</dict>
    			<key>Selection Color</key>
    			<dict>
    				<key>Alpha Component</key>
    				<real>1</real>
    				<key>Blue Component</key>
    				<real>1</real>
    				<key>Color Space</key>
    				<string>Calibrated</string>
    				<key>Green Component</key>
    				<real>0.80784313725500001</real>
    				<key>Red Component</key>
    				<real>0.74901960784300003</real>
    			</dict>
    			<key>Send Code When Idle</key>
    			<false/>
    			<key>Shortcut</key>
    			<string></string>
    			<key>Show Status Bar</key>
    			<false/>
    			<key>Silence Bell</key>
    			<false/>
    			<key>Sync Title</key>
    			<false/>
    			<key>Tags</key>
    			<array/>
    			<key>Terminal Type</key>
    			<string>xterm-256color</string>
    			<key>Title Components</key>
    			<integer>2</integer>
    			<key>Transparency</key>
    			<integer>0</integer>
    			<key>Unicode Normalization</key>
    			<integer>0</integer>
    			<key>Unlimited Scrollback</key>
    			<true/>
    			<key>Use Bold Font</key>
    			<true/>
    			<key>Use Bright Bold</key>
    			<true/>
    			<key>Use Italic Font</key>
    			<true/>
    			<key>Use Non-ASCII Font</key>
    			<true/>
    			<key>Vertical Spacing</key>
    			<real>1</real>
    			<key>Visual Bell</key>
    			<true/>
    			<key>Window Type</key>
    			<integer>0</integer>
    			<key>Working Directory</key>
    			<string>/Users/${config.home.username}</string>
    		</dict>
    	</array>
    	<key>PMPrintingExpandedStateForPrint2</key>
    	<true/>
    	<key>PointerActions</key>
    	<dict>
    		<key>Button,1,1,,</key>
    		<dict>
    			<key>Action</key>
    			<string>kContextMenuPointerAction</string>
    		</dict>
    		<key>Button,2,1,,</key>
    		<dict>
    			<key>Action</key>
    			<string>kPasteFromClipboardPointerAction</string>
    		</dict>
    		<key>Gesture,ThreeFingerSwipeDown,,</key>
    		<dict>
    			<key>Action</key>
    			<string>kPrevWindowPointerAction</string>
    		</dict>
    		<key>Gesture,ThreeFingerSwipeLeft,,</key>
    		<dict>
    			<key>Action</key>
    			<string>kPrevTabPointerAction</string>
    		</dict>
    		<key>Gesture,ThreeFingerSwipeRight,,</key>
    		<dict>
    			<key>Action</key>
    			<string>kNextTabPointerAction</string>
    		</dict>
    		<key>Gesture,ThreeFingerSwipeUp,,</key>
    		<dict>
    			<key>Action</key>
    			<string>kNextWindowPointerAction</string>
    		</dict>
    	</dict>
    	<key>Print In Black And White</key>
    	<false/>
    	<key>PromptOnQuit</key>
    	<false/>
    	<key>QuitWhenAllWindowsClosed</key>
    	<true/>
    	<key>ShowFullScreenTabBar</key>
    	<false/>
    	<key>SoundForEsc</key>
    	<false/>
    	<key>VisualIndicatorForEsc</key>
    	<false/>
    	<key>findMode_iTerm</key>
    	<integer>0</integer>
    </dict>
    </plist>
  ''
  ;
}

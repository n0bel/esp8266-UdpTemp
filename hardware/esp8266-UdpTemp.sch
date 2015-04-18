<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.2.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="10" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="26" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="con-molex">
<description>&lt;b&gt;Molex Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="22-23-2061">
<description>.100" (2.54mm) Center Header - 6 Pin</description>
<wire x1="-7.62" y1="3.175" x2="7.62" y2="3.175" width="0.254" layer="21"/>
<wire x1="7.62" y1="3.175" x2="7.62" y2="1.27" width="0.254" layer="21"/>
<wire x1="7.62" y1="1.27" x2="7.62" y2="-3.175" width="0.254" layer="21"/>
<wire x1="7.62" y1="-3.175" x2="-7.62" y2="-3.175" width="0.254" layer="21"/>
<wire x1="-7.62" y1="-3.175" x2="-7.62" y2="1.27" width="0.254" layer="21"/>
<wire x1="-7.62" y1="1.27" x2="-7.62" y2="3.175" width="0.254" layer="21"/>
<wire x1="-7.62" y1="1.27" x2="7.62" y2="1.27" width="0.254" layer="21"/>
<pad name="1" x="-6.35" y="0" drill="1" shape="long" rot="R90"/>
<pad name="2" x="-3.81" y="0" drill="1" shape="long" rot="R90"/>
<pad name="3" x="-1.27" y="0" drill="1" shape="long" rot="R90"/>
<pad name="4" x="1.27" y="0" drill="1" shape="long" rot="R90"/>
<pad name="5" x="3.81" y="0" drill="1" shape="long" rot="R90"/>
<pad name="6" x="6.35" y="0" drill="1" shape="long" rot="R90"/>
<text x="-7.62" y="3.81" size="1.016" layer="25" ratio="10">&gt;NAME</text>
<text x="-7.62" y="-5.08" size="1.016" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="MV">
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.6096" layer="94"/>
<text x="2.54" y="-0.762" size="1.524" layer="95">&gt;NAME</text>
<text x="-0.762" y="1.397" size="1.778" layer="96">&gt;VALUE</text>
<pin name="S" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
<symbol name="M">
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.6096" layer="94"/>
<text x="2.54" y="-0.762" size="1.524" layer="95">&gt;NAME</text>
<pin name="S" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="22-23-2061" prefix="X" uservalue="yes">
<description>.100" (2.54mm) Center Header - 6 Pin</description>
<gates>
<gate name="-1" symbol="MV" x="0" y="5.08" addlevel="always" swaplevel="1"/>
<gate name="-2" symbol="M" x="0" y="2.54" addlevel="always" swaplevel="1"/>
<gate name="-3" symbol="M" x="0" y="0" addlevel="always" swaplevel="1"/>
<gate name="-4" symbol="M" x="0" y="-2.54" addlevel="always" swaplevel="1"/>
<gate name="-5" symbol="M" x="0" y="-5.08" addlevel="always" swaplevel="1"/>
<gate name="-6" symbol="M" x="0" y="-7.62" addlevel="always" swaplevel="1"/>
</gates>
<devices>
<device name="" package="22-23-2061">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-2" pin="S" pad="2"/>
<connect gate="-3" pin="S" pad="3"/>
<connect gate="-4" pin="S" pad="4"/>
<connect gate="-5" pin="S" pad="5"/>
<connect gate="-6" pin="S" pad="6"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="MOLEX" constant="no"/>
<attribute name="MPN" value="22-23-2061" constant="no"/>
<attribute name="OC_FARNELL" value="1462922" constant="no"/>
<attribute name="OC_NEWARK" value="27C1933" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="DS1820">
<description>Dallas DS1820 (TO-92)
&lt;br&gt;
&lt;a href="http://jayakody2000lk.wordpress.com"&gt;jayakody2000lk.wordpress.com&lt;/a&gt;</description>
<packages>
<package name="TO-92">
<wire x1="-2.095" y1="-1.651" x2="-0.7869" y2="2.5484" width="0.1524" layer="21" curve="-111.097684"/>
<wire x1="0.7869" y1="2.5484" x2="2.095" y2="-1.651" width="0.1524" layer="21" curve="-111.097684"/>
<wire x1="-2.095" y1="-1.651" x2="2.095" y2="-1.651" width="0.1524" layer="21"/>
<wire x1="-2.254" y1="-0.254" x2="-0.286" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="-2.655" y1="-0.254" x2="-2.254" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="-0.286" y1="-0.254" x2="0.286" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="2.254" y1="-0.254" x2="2.655" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="0.286" y1="-0.254" x2="2.254" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="-0.7864" y1="2.5484" x2="0.7864" y2="2.5484" width="0.1524" layer="51" curve="-34.298964"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" diameter="1.27" shape="octagon"/>
<pad name="2" x="0" y="1.905" drill="0.8128" diameter="1.27" shape="octagon"/>
<pad name="3" x="1.27" y="0" drill="0.8128" diameter="1.27" shape="octagon"/>
<text x="2.413" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="2.921" y="-1.27" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="1820">
<wire x1="-7.62" y1="5.08" x2="7.62" y2="5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="5.08" x2="7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="-5.08" x2="-7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-5.08" x2="-7.62" y2="5.08" width="0.254" layer="94"/>
<text x="-7.62" y="6.35" size="1.778" layer="95">&gt;NAME</text>
<text x="2.54" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
<pin name="VDD" x="-10.16" y="2.54" length="short" direction="in"/>
<pin name="GND" x="0" y="-7.62" length="short" direction="pwr" rot="R90"/>
<pin name="DQ" x="10.16" y="2.54" length="short" direction="out" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="DS1820" prefix="IC">
<description>DS1820 - 1-Wire Digital Thermometer</description>
<gates>
<gate name="G$1" symbol="1820" x="0" y="0"/>
</gates>
<devices>
<device name="" package="TO-92">
<connects>
<connect gate="G$1" pin="DQ" pad="2"/>
<connect gate="G$1" pin="GND" pad="1"/>
<connect gate="G$1" pin="VDD" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="switch-omron">
<description>&lt;b&gt;Omron Switches&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="B3F-10XX">
<description>&lt;b&gt;OMRON SWITCH&lt;/b&gt;</description>
<wire x1="3.302" y1="-0.762" x2="3.048" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="3.302" y1="-0.762" x2="3.302" y2="0.762" width="0.1524" layer="21"/>
<wire x1="3.048" y1="0.762" x2="3.302" y2="0.762" width="0.1524" layer="21"/>
<wire x1="3.048" y1="1.016" x2="3.048" y2="2.54" width="0.1524" layer="51"/>
<wire x1="-3.302" y1="0.762" x2="-3.048" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="0.762" x2="-3.302" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="-0.762" x2="-3.302" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="3.048" y1="2.54" x2="2.54" y2="3.048" width="0.1524" layer="51"/>
<wire x1="2.54" y1="-3.048" x2="3.048" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="3.048" y1="-2.54" x2="3.048" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="3.048" x2="-3.048" y2="2.54" width="0.1524" layer="51"/>
<wire x1="-3.048" y1="2.54" x2="-3.048" y2="1.016" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="-3.048" x2="-3.048" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="-3.048" y1="-2.54" x2="-3.048" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="-1.27" width="0.0508" layer="51"/>
<wire x1="1.27" y1="-1.27" x2="-1.27" y2="-1.27" width="0.0508" layer="51"/>
<wire x1="1.27" y1="-1.27" x2="1.27" y2="1.27" width="0.0508" layer="51"/>
<wire x1="-1.27" y1="1.27" x2="1.27" y2="1.27" width="0.0508" layer="51"/>
<wire x1="-1.27" y1="3.048" x2="-1.27" y2="2.794" width="0.0508" layer="21"/>
<wire x1="1.27" y1="2.794" x2="-1.27" y2="2.794" width="0.0508" layer="21"/>
<wire x1="1.27" y1="2.794" x2="1.27" y2="3.048" width="0.0508" layer="21"/>
<wire x1="1.143" y1="-2.794" x2="-1.27" y2="-2.794" width="0.0508" layer="21"/>
<wire x1="1.143" y1="-2.794" x2="1.143" y2="-3.048" width="0.0508" layer="21"/>
<wire x1="-1.27" y1="-2.794" x2="-1.27" y2="-3.048" width="0.0508" layer="21"/>
<wire x1="2.54" y1="-3.048" x2="2.159" y2="-3.048" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="-3.048" x2="-2.159" y2="-3.048" width="0.1524" layer="51"/>
<wire x1="-2.159" y1="-3.048" x2="-1.27" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="3.048" x2="-2.159" y2="3.048" width="0.1524" layer="51"/>
<wire x1="2.54" y1="3.048" x2="2.159" y2="3.048" width="0.1524" layer="51"/>
<wire x1="2.159" y1="3.048" x2="1.27" y2="3.048" width="0.1524" layer="21"/>
<wire x1="1.27" y1="3.048" x2="-1.27" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="3.048" x2="-2.159" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-3.048" x2="1.143" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="1.143" y1="-3.048" x2="2.159" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="3.048" y1="-0.762" x2="3.048" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="3.048" y1="0.762" x2="3.048" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="-0.762" x2="-3.048" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="0.762" x2="-3.048" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-2.159" x2="1.27" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="1.27" y1="2.286" x2="-1.27" y2="2.286" width="0.1524" layer="51"/>
<wire x1="-2.413" y1="1.27" x2="-2.413" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-2.413" y1="-0.508" x2="-2.413" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-2.413" y1="0.508" x2="-2.159" y2="-0.381" width="0.1524" layer="51"/>
<circle x="0" y="0" radius="1.778" width="0.1524" layer="21"/>
<circle x="-2.159" y="-2.159" radius="0.508" width="0.1524" layer="51"/>
<circle x="2.159" y="-2.032" radius="0.508" width="0.1524" layer="51"/>
<circle x="2.159" y="2.159" radius="0.508" width="0.1524" layer="51"/>
<circle x="-2.159" y="2.159" radius="0.508" width="0.1524" layer="51"/>
<circle x="0" y="0" radius="0.635" width="0.0508" layer="51"/>
<circle x="0" y="0" radius="0.254" width="0.1524" layer="21"/>
<pad name="1" x="-3.2512" y="2.2606" drill="1.016" shape="long"/>
<pad name="3" x="-3.2512" y="-2.2606" drill="1.016" shape="long"/>
<pad name="2" x="3.2512" y="2.2606" drill="1.016" shape="long"/>
<pad name="4" x="3.2512" y="-2.2606" drill="1.016" shape="long"/>
<text x="-3.048" y="3.683" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.048" y="-5.08" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-4.318" y="1.651" size="1.27" layer="51" ratio="10">1</text>
<text x="3.556" y="1.524" size="1.27" layer="51" ratio="10">2</text>
<text x="-4.572" y="-2.794" size="1.27" layer="51" ratio="10">3</text>
<text x="3.556" y="-2.794" size="1.27" layer="51" ratio="10">4</text>
</package>
</packages>
<symbols>
<symbol name="TS2">
<wire x1="0" y1="1.905" x2="0" y2="2.54" width="0.254" layer="94"/>
<wire x1="-4.445" y1="1.905" x2="-3.175" y2="1.905" width="0.254" layer="94"/>
<wire x1="-4.445" y1="-1.905" x2="-3.175" y2="-1.905" width="0.254" layer="94"/>
<wire x1="-4.445" y1="1.905" x2="-4.445" y2="0" width="0.254" layer="94"/>
<wire x1="-4.445" y1="0" x2="-4.445" y2="-1.905" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.905" y2="0" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="0" x2="-0.635" y2="0" width="0.1524" layer="94"/>
<wire x1="-4.445" y1="0" x2="-3.175" y2="0" width="0.1524" layer="94"/>
<wire x1="2.54" y1="2.54" x2="0" y2="2.54" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="0" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="1.905" width="0.254" layer="94"/>
<circle x="0" y="-2.54" radius="0.127" width="0.4064" layer="94"/>
<circle x="0" y="2.54" radius="0.127" width="0.4064" layer="94"/>
<text x="-6.35" y="-2.54" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="-3.81" y="3.175" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="P" x="0" y="-5.08" visible="pad" length="short" direction="pas" swaplevel="2" rot="R90"/>
<pin name="S" x="0" y="5.08" visible="pad" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="S1" x="2.54" y="5.08" visible="pad" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="P1" x="2.54" y="-5.08" visible="pad" length="short" direction="pas" swaplevel="2" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="10-XX" prefix="S" uservalue="yes">
<description>&lt;b&gt;OMRON SWITCH&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="TS2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="B3F-10XX">
<connects>
<connect gate="1" pin="P" pad="3"/>
<connect gate="1" pin="P1" pad="4"/>
<connect gate="1" pin="S" pad="1"/>
<connect gate="1" pin="S1" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="B3F-1000" constant="no"/>
<attribute name="OC_FARNELL" value="176432" constant="no"/>
<attribute name="OC_NEWARK" value="36M3542" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="esp8266modules">
<packages>
<package name="ESP01">
<description>ESP8266 Module 01</description>
<pad name="GND" x="-3.825" y="-5.6375" drill="0.8" shape="square" rot="R270"/>
<pad name="RX" x="3.795" y="-5.6375" drill="0.8" shape="square" rot="R270"/>
<pad name="GPIO2" x="-1.285" y="-5.6375" drill="0.8" rot="R270"/>
<pad name="GPIO0" x="1.255" y="-5.6375" drill="0.8" rot="R270"/>
<pad name="RST" x="1.255" y="-8.1775" drill="0.8" rot="R270"/>
<pad name="CH_PD" x="-1.285" y="-8.1775" drill="0.8" rot="R270"/>
<pad name="TX" x="-3.825" y="-8.1775" drill="0.8" rot="R270"/>
<pad name="VCC" x="3.795" y="-8.1775" drill="0.8" rot="R270"/>
<wire x1="-7" y1="15" x2="-7" y2="7.38" width="0.127" layer="21"/>
<wire x1="-7" y1="7.38" x2="-7" y2="-9.765" width="0.127" layer="21"/>
<wire x1="-7" y1="-9.765" x2="7.2875" y2="-9.765" width="0.127" layer="21"/>
<wire x1="7.2875" y1="-9.765" x2="7.2875" y2="7.38" width="0.127" layer="21"/>
<wire x1="7.2875" y1="7.38" x2="7.2875" y2="15" width="0.127" layer="21"/>
<wire x1="7.2875" y1="15" x2="-7" y2="15" width="0.127" layer="21"/>
<wire x1="-7" y1="7.38" x2="7.2875" y2="7.38" width="0.127" layer="21"/>
<text x="-5.73" y="9.92" size="2.54" layer="21">ESP-01</text>
<text x="-7" y="16" size="1.27" layer="25">&gt;Name</text>
<text x="-7" y="-11" size="1.27" layer="27">&gt;Value</text>
</package>
</packages>
<symbols>
<symbol name="ESP01">
<description>ESP8266 Wifi module 01</description>
<wire x1="-12.7" y1="10.16" x2="-12.7" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-2.54" x2="10.16" y2="-2.54" width="0.254" layer="94"/>
<wire x1="10.16" y1="-2.54" x2="10.16" y2="10.16" width="0.254" layer="94"/>
<wire x1="10.16" y1="10.16" x2="-12.7" y2="10.16" width="0.254" layer="94"/>
<pin name="GND" x="-17.78" y="7.62" visible="pin" length="middle"/>
<pin name="GPIO2" x="-17.78" y="5.08" visible="pin" length="middle"/>
<pin name="GPIO0" x="-17.78" y="2.54" visible="pin" length="middle"/>
<pin name="RXD" x="-17.78" y="0" visible="pin" length="middle"/>
<pin name="TXD" x="15.24" y="7.62" visible="pin" length="middle" rot="R180"/>
<pin name="CH_PD" x="15.24" y="5.08" visible="pin" length="middle" rot="R180"/>
<pin name="RST" x="15.24" y="2.54" visible="pin" length="middle" rot="R180"/>
<pin name="VCC" x="15.24" y="0" visible="pin" length="middle" rot="R180"/>
<text x="-12.7" y="10.16" size="1.778" layer="95">&gt;Name</text>
<text x="-12.7" y="-5.08" size="1.778" layer="95">&gt;Value</text>
<text x="-17.78" y="0" size="1.778" layer="94">  1</text>
<text x="-17.78" y="2.54" size="1.778" layer="94">  3</text>
<text x="12.7" y="2.54" size="1.778" layer="94">  4</text>
<text x="12.7" y="0" size="1.778" layer="94">  2</text>
<text x="-17.78" y="5.08" size="1.778" layer="94">  5</text>
<text x="12.7" y="5.08" size="1.778" layer="94">  6</text>
<text x="-17.78" y="7.62" size="1.778" layer="94">  7</text>
<text x="12.7" y="7.62" size="1.778" layer="94">  8</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="ESP01">
<description>ESP8266 Wifi module 01</description>
<gates>
<gate name="G$1" symbol="ESP01" x="0" y="0"/>
</gates>
<devices>
<device name="" package="ESP01">
<connects>
<connect gate="G$1" pin="CH_PD" pad="CH_PD"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="GPIO0" pad="GPIO0"/>
<connect gate="G$1" pin="GPIO2" pad="GPIO2"/>
<connect gate="G$1" pin="RST" pad="RST"/>
<connect gate="G$1" pin="RXD" pad="RX"/>
<connect gate="G$1" pin="TXD" pad="TX"/>
<connect gate="G$1" pin="VCC" pad="VCC"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="X1" library="con-molex" deviceset="22-23-2061" device=""/>
<part name="IC1" library="DS1820" deviceset="DS1820" device=""/>
<part name="S1" library="switch-omron" deviceset="10-XX" device=""/>
<part name="S2" library="switch-omron" deviceset="10-XX" device=""/>
<part name="U$1" library="esp8266modules" deviceset="ESP01" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="30.48" y="101.6" size="1.778" layer="91">Program</text>
<text x="71.12" y="101.6" size="1.778" layer="91">Reset</text>
<text x="7.62" y="15.24" size="1.778" layer="91">Pinned out like an FTDI style 6 pin connector
Makes it easy to program
Then just make a battery connector for pins 1 and 3.
Don't forget nothing &gt; 3.6v or POOF</text>
<text x="-7.62" y="88.9" size="1.778" layer="91">esp8266-UdpTemp
Kevin Uhlir (N0BEL)
April 2015
MIT License
</text>
</plain>
<instances>
<instance part="X1" gate="-1" x="33.02" y="35.56" rot="R270"/>
<instance part="X1" gate="-2" x="30.48" y="35.56" rot="R270"/>
<instance part="X1" gate="-3" x="27.94" y="35.56" rot="R270"/>
<instance part="X1" gate="-4" x="25.4" y="35.56" rot="R270"/>
<instance part="X1" gate="-5" x="22.86" y="35.56" rot="R270"/>
<instance part="X1" gate="-6" x="20.32" y="35.56" rot="R270"/>
<instance part="IC1" gate="G$1" x="7.62" y="66.04"/>
<instance part="S1" gate="1" x="78.74" y="91.44" rot="R270"/>
<instance part="S2" gate="1" x="38.1" y="91.44" rot="R270"/>
<instance part="U$1" gate="G$1" x="68.58" y="63.5"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="DQ"/>
<wire x1="17.78" y1="68.58" x2="50.8" y2="68.58" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="GPIO2"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="X1" gate="-1" pin="S"/>
<wire x1="33.02" y1="38.1" x2="33.02" y2="50.8" width="0.1524" layer="91"/>
<wire x1="33.02" y1="50.8" x2="33.02" y2="71.12" width="0.1524" layer="91"/>
<wire x1="33.02" y1="71.12" x2="50.8" y2="71.12" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="GND"/>
<wire x1="7.62" y1="58.42" x2="7.62" y2="50.8" width="0.1524" layer="91"/>
<wire x1="7.62" y1="50.8" x2="33.02" y2="50.8" width="0.1524" layer="91"/>
<pinref part="S2" gate="1" pin="P1"/>
<wire x1="33.02" y1="71.12" x2="33.02" y2="83.82" width="0.1524" layer="91"/>
<wire x1="33.02" y1="88.9" x2="33.02" y2="83.82" width="0.1524" layer="91"/>
<wire x1="33.02" y1="83.82" x2="73.66" y2="83.82" width="0.1524" layer="91"/>
<pinref part="S1" gate="1" pin="P1"/>
<wire x1="73.66" y1="83.82" x2="73.66" y2="88.9" width="0.1524" layer="91"/>
<junction x="33.02" y="71.12"/>
<junction x="33.02" y="83.82"/>
<junction x="33.02" y="50.8"/>
<pinref part="U$1" gate="G$1" pin="GND"/>
<label x="33.02" y="48.26" size="1.778" layer="95"/>
</segment>
</net>
<net name="3.3V" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="VDD"/>
<wire x1="-2.54" y1="68.58" x2="-10.16" y2="68.58" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="68.58" x2="-10.16" y2="45.72" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="45.72" x2="27.94" y2="45.72" width="0.1524" layer="91"/>
<pinref part="X1" gate="-3" pin="S"/>
<wire x1="27.94" y1="45.72" x2="27.94" y2="38.1" width="0.1524" layer="91"/>
<wire x1="27.94" y1="45.72" x2="96.52" y2="45.72" width="0.1524" layer="91"/>
<wire x1="96.52" y1="45.72" x2="96.52" y2="63.5" width="0.1524" layer="91"/>
<wire x1="96.52" y1="63.5" x2="83.82" y2="63.5" width="0.1524" layer="91"/>
<wire x1="83.82" y1="68.58" x2="96.52" y2="68.58" width="0.1524" layer="91"/>
<wire x1="96.52" y1="68.58" x2="96.52" y2="63.5" width="0.1524" layer="91"/>
<junction x="96.52" y="63.5"/>
<junction x="27.94" y="45.72"/>
<pinref part="U$1" gate="G$1" pin="CH_PD"/>
<pinref part="U$1" gate="G$1" pin="VCC"/>
<label x="50.8" y="45.72" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="S2" gate="1" pin="S1"/>
<wire x1="43.18" y1="88.9" x2="45.72" y2="88.9" width="0.1524" layer="91"/>
<wire x1="45.72" y1="88.9" x2="45.72" y2="66.04" width="0.1524" layer="91"/>
<wire x1="45.72" y1="66.04" x2="50.8" y2="66.04" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="GPIO0"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="S1" gate="1" pin="S1"/>
<wire x1="83.82" y1="88.9" x2="88.9" y2="88.9" width="0.1524" layer="91"/>
<wire x1="88.9" y1="88.9" x2="88.9" y2="66.04" width="0.1524" layer="91"/>
<wire x1="88.9" y1="66.04" x2="83.82" y2="66.04" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="RST"/>
</segment>
</net>
<net name="TX" class="0">
<segment>
<pinref part="X1" gate="-4" pin="S"/>
<wire x1="25.4" y1="38.1" x2="25.4" y2="63.5" width="0.1524" layer="91"/>
<wire x1="25.4" y1="63.5" x2="50.8" y2="63.5" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="RXD"/>
</segment>
</net>
<net name="RX" class="0">
<segment>
<pinref part="X1" gate="-5" pin="S"/>
<wire x1="22.86" y1="38.1" x2="22.86" y2="55.88" width="0.1524" layer="91"/>
<wire x1="22.86" y1="55.88" x2="86.36" y2="55.88" width="0.1524" layer="91"/>
<wire x1="86.36" y1="55.88" x2="86.36" y2="71.12" width="0.1524" layer="91"/>
<wire x1="86.36" y1="71.12" x2="83.82" y2="71.12" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="TXD"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="6.3" minversion="6.2.2" severity="warning">
Since Version 6.2.2 text objects can contain more than one line,
which will not be processed correctly with this version.
</note>
</compatibility>
</eagle>

package p004;

import android.util.Pair;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import p012.C0889;
import p012.C0893;
import p012.C0899;
import p012.C0901;
import p055.AbstractC1464;
import p055.C1476;
import p137.AbstractC2305;
import p171.AbstractC2649;
import p305.AbstractC3712;
import p305.C3732;

/* renamed from: ʻˆ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0809 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final byte[] f3444;

    static {
        String str = AbstractC3712.f14481;
        f3444 = "OpusHead".getBytes(StandardCharsets.UTF_8);
    }

    /* JADX WARN: Removed duplicated region for block: B:119:0x02c8  */
    /* JADX WARN: Removed duplicated region for block: B:381:0x07fb  */
    /* JADX WARN: Removed duplicated region for block: B:384:0x081b  */
    /* JADX WARN: Type inference failed for: r8v0, types: [ʻˆ.ﾞᴵ, java.lang.Object] */
    /* renamed from: ʼˎ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p004.C0815 m2940(p305.C3732 r66, p004.C0807 r67, java.lang.String r68, p055.C1486 r69, boolean r70) {
        /*
            Method dump skipped, instructions count: 3445
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p004.AbstractC0809.m2940(ᐧˎ.ﹳᐧ, ʻˆ.ᵎﹶ, java.lang.String, ʽⁱ.ᵔʾ, boolean):ʻˆ.ﾞᴵ");
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static C0796 m2941(int i, C3732 c3732) {
        c3732.m7896(i + 12);
        c3732.m7900(1);
        m2943(c3732);
        c3732.m7900(2);
        int m7874 = c3732.m7874();
        if ((m7874 & 128) != 0) {
            c3732.m7900(2);
        }
        if ((m7874 & 64) != 0) {
            c3732.m7900(c3732.m7874());
        }
        if ((m7874 & 32) != 0) {
            c3732.m7900(2);
        }
        c3732.m7900(1);
        m2943(c3732);
        String m4265 = AbstractC1464.m4265(c3732.m7874());
        if ("audio/mpeg".equals(m4265) || "audio/vnd.dts".equals(m4265) || "audio/vnd.dts.hd".equals(m4265)) {
            return new C0796(m4265, null, -1L, -1L);
        }
        c3732.m7900(4);
        long m7880 = c3732.m7880();
        long m78802 = c3732.m7880();
        c3732.m7900(1);
        int m2943 = m2943(c3732);
        long j = m78802;
        byte[] bArr = new byte[m2943];
        c3732.m7875(bArr, 0, m2943);
        if (j <= 0) {
            j = -1;
        }
        return new C0796(m4265, bArr, j, m7880 > 0 ? m7880 : -1L);
    }

    /* JADX WARN: Code restructure failed: missing block: B:322:0x00e3, code lost:
    
        if (r23 == 0) goto L51;
     */
    /* JADX WARN: Removed duplicated region for block: B:121:0x080c  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x084d  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0867  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x090c  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0914  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x091a  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0921  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0928  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x0939  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x09bb  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x09ce  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x092b  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x0924  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x091d  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x0917  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x090e  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x084f  */
    /* JADX WARN: Removed duplicated region for block: B:340:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:343:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:347:0x01bd  */
    /* JADX WARN: Removed duplicated region for block: B:350:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:353:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:365:0x022b  */
    /* JADX WARN: Removed duplicated region for block: B:374:0x0249  */
    /* JADX WARN: Removed duplicated region for block: B:385:0x02e6  */
    /* JADX WARN: Removed duplicated region for block: B:386:0x02ea  */
    /* JADX WARN: Removed duplicated region for block: B:415:0x09f3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:423:0x0201 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:425:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:426:0x01c0  */
    /* JADX WARN: Removed duplicated region for block: B:427:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:428:0x016b  */
    /* JADX WARN: Type inference failed for: r11v13, types: [java.lang.Object, com.google.android.material.datepicker.ᵔʾ] */
    /* JADX WARN: Type inference failed for: r11v39, types: [java.lang.Object, androidx.leanback.widget.יﹳ] */
    /* JADX WARN: Type inference failed for: r13v3, types: [ʻˆ.ᵎﹶ, java.lang.Object] */
    /* renamed from: ˆʾ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.ArrayList m2942(p012.C0889 r54, p171.C2619 r55, long r56, p055.C1486 r58, boolean r59, boolean r60, p095.InterfaceC1881 r61) {
        /*
            Method dump skipped, instructions count: 2557
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p004.AbstractC0809.m2942(ʻᴵ.ˈ, ˊﾞ.ʻٴ, long, ʽⁱ.ᵔʾ, boolean, boolean, ˆʽ.ˑﹳ):java.util.ArrayList");
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static int m2943(C3732 c3732) {
        int m7874 = c3732.m7874();
        int i = m7874 & 127;
        while ((m7874 & 128) == 128) {
            m7874 = c3732.m7874();
            i = (i << 7) | (m7874 & 127);
        }
        return i;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static int m2944(int i) {
        return (i >> 24) & 255;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01bb, code lost:
    
        r1.m7896(r15);
        r16 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x01a4, code lost:
    
        r1.m7896(r9);
        r1.m7900(16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x01b7, code lost:
    
        r9 = new p094.C1874(r0, r8, r1.m7879(r10 - 16));
        r16 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x01c0, code lost:
    
        r16 = r3 ? 1 : 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x023e, code lost:
    
        p305.AbstractC3731.m7852("MetadataUtil", "Skipped unknown metadata entry: " + p012.AbstractC0905.m3171(r13));
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0251, code lost:
    
        r1.m7896(r15);
        r9 = null;
        r16 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0079, code lost:
    
        r0 = p094.AbstractC1868.m4811(p004.AbstractC0804.m2933(r1) - 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0082, code lost:
    
        if (r0 == null) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x0084, code lost:
    
        r9 = new p094.C1866("TCON", r12, p017.AbstractC0993.m3260(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x008e, code lost:
    
        p305.AbstractC3731.m7850("MetadataUtil", "Failed to parse standard genre code");
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x0093, code lost:
    
        r9 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x00a8, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0272, code lost:
    
        r1.m7896(r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0275, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x006f, code lost:
    
        r16 = r3 ? 1 : 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x01c5, code lost:
    
        r0 = 16777215 & r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x01cc, code lost:
    
        if (r0 != 6516084) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x01ce, code lost:
    
        r9 = p004.AbstractC0804.m2929(r13, r1);
        r16 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x01d6, code lost:
    
        if (r0 == 7233901) goto L140;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x01db, code lost:
    
        if (r0 != 7631467) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x01e2, code lost:
    
        if (r0 == 6516589) goto L139;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x01e7, code lost:
    
        if (r0 != 7828084) goto L116;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x01ee, code lost:
    
        if (r0 != 6578553) goto L119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x01f0, code lost:
    
        r9 = p004.AbstractC0804.m2936(r13, "TDRC", r1);
        r16 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x01fa, code lost:
    
        if (r0 != 4280916) goto L122;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x01fc, code lost:
    
        r9 = p004.AbstractC0804.m2936(r13, "TPE1", r1);
        r16 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0044, code lost:
    
        r1.m7896(r7);
        r7 = r7 + r13;
        r1.m7900(r0);
        r6 = new java.util.ArrayList();
        r3 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x0206, code lost:
    
        if (r0 != 7630703) goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x0208, code lost:
    
        r9 = p004.AbstractC0804.m2936(r13, "TSSE", r1);
        r16 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x0212, code lost:
    
        if (r0 != 6384738) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x0214, code lost:
    
        r9 = p004.AbstractC0804.m2936(r13, "TALB", r1);
        r16 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x021e, code lost:
    
        if (r0 != 7108978) goto L131;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x0220, code lost:
    
        r9 = p004.AbstractC0804.m2936(r13, "USLT", r1);
        r16 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x022a, code lost:
    
        if (r0 != 6776174) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0050, code lost:
    
        r13 = r1.f14533;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x022c, code lost:
    
        r9 = p004.AbstractC0804.m2936(r13, "TCON", r1);
        r16 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x0231, code lost:
    
        r16 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x0234, code lost:
    
        if (r0 != 6779504) goto L137;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x0236, code lost:
    
        r9 = p004.AbstractC0804.m2936(r13, "TIT1", r1);
        r16 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x0256, code lost:
    
        r9 = p004.AbstractC0804.m2936(r13, "TCOM", r1);
        r16 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x025e, code lost:
    
        r9 = p004.AbstractC0804.m2936(r13, "TIT2", r1);
        r16 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x0276, code lost:
    
        r16 = r3 ? 1 : 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x027c, code lost:
    
        if (r6.isEmpty() == false) goto L150;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0052, code lost:
    
        if (r13 >= r7) goto L230;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x0280, code lost:
    
        r12 = new p055.C1476(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0054, code lost:
    
        r15 = r1.m7893() + r13;
        r13 = r1.m7893();
        r0 = (r13 >> 24) & 255;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0069, code lost:
    
        if (r0 == 169) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x006d, code lost:
    
        if (r0 != 253) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0077, code lost:
    
        if (r13 != 1735291493) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x009f, code lost:
    
        if (r13 != 1684632427) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00a1, code lost:
    
        r9 = p004.AbstractC0804.m2931(r13, "TPOS", r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0094, code lost:
    
        r1.m7896(r15);
        r16 = r3 ? 1 : 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0266, code lost:
    
        if (r9 == null) goto L232;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0268, code lost:
    
        r6.add(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x026b, code lost:
    
        r3 = r16;
        r12 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00ae, code lost:
    
        if (r13 != 1953655662) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00b0, code lost:
    
        r9 = p004.AbstractC0804.m2931(r13, "TRCK", r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00ba, code lost:
    
        if (r13 != 1953329263) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00bc, code lost:
    
        r9 = p004.AbstractC0804.m2924(r13, "TBPM", r1, true, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00c6, code lost:
    
        if (r13 != 1668311404) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00c8, code lost:
    
        r9 = p004.AbstractC0804.m2924(r13, "TCMP", r1, true, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00d2, code lost:
    
        if (r13 != 1668249202) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00d4, code lost:
    
        r9 = p004.AbstractC0804.m2937(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00dc, code lost:
    
        if (r13 != 1631670868) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00de, code lost:
    
        r9 = p004.AbstractC0804.m2936(r13, "TPE2", r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00e8, code lost:
    
        if (r13 != 1936682605) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00ea, code lost:
    
        r9 = p004.AbstractC0804.m2936(r13, "TSOT", r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00f4, code lost:
    
        if (r13 != 1936679276) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00f6, code lost:
    
        r9 = p004.AbstractC0804.m2936(r13, "TSOA", r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0100, code lost:
    
        if (r13 != 1936679282) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0102, code lost:
    
        r9 = p004.AbstractC0804.m2936(r13, "TSOP", r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x010c, code lost:
    
        if (r13 != 1936679265) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x010e, code lost:
    
        r9 = p004.AbstractC0804.m2936(r13, "TSO2", r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0119, code lost:
    
        if (r13 != 1936679791) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x011b, code lost:
    
        r9 = p004.AbstractC0804.m2936(r13, "TSOC", r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0126, code lost:
    
        if (r13 != 1920233063) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0128, code lost:
    
        r9 = p004.AbstractC0804.m2924(r13, "ITUNESADVISORY", r1, r3, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0133, code lost:
    
        if (r13 != 1885823344) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0135, code lost:
    
        r9 = p004.AbstractC0804.m2924(r13, "ITUNESGAPLESS", r1, r3, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0140, code lost:
    
        if (r13 != 1936683886) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0142, code lost:
    
        r9 = p004.AbstractC0804.m2936(r13, "TVSHOWSORT", r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x014d, code lost:
    
        if (r13 != 1953919848) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x014f, code lost:
    
        r9 = p004.AbstractC0804.m2936(r13, "TVSHOW", r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x015a, code lost:
    
        if (r13 != 757935405) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x015c, code lost:
    
        r0 = r12;
        r8 = r0;
        r9 = -1;
        r10 = -1;
        r3 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0160, code lost:
    
        r13 = r1.f14533;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0162, code lost:
    
        if (r13 >= r15) goto L233;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0164, code lost:
    
        r14 = r1.m7893();
        r12 = r1.m7893();
        r16 = r3;
        r1.m7900(4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0175, code lost:
    
        if (r12 != 1835360622) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0177, code lost:
    
        r0 = r1.m7879(r14 - 12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0196, code lost:
    
        r3 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0181, code lost:
    
        if (r12 != 1851878757) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0183, code lost:
    
        r8 = r1.m7879(r14 - 12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x018d, code lost:
    
        if (r12 != 1684108385) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x018f, code lost:
    
        r9 = r13;
        r10 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0191, code lost:
    
        r1.m7900(r14 - 12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x019a, code lost:
    
        r16 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x019c, code lost:
    
        if (r0 == null) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x019e, code lost:
    
        if (r8 == null) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01a1, code lost:
    
        if (r9 != (-1)) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x01ba, code lost:
    
        r9 = null;
        r16 = r16;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:199:0x0328  */
    /* renamed from: ٴﹶ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p055.C1476 m2945(p012.C0893 r17) {
        /*
            Method dump skipped, instructions count: 942
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p004.AbstractC0809.m2945(ʻᴵ.ˑﹳ):ʽⁱ.ٴᵢ");
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static C0899 m2946(C3732 c3732) {
        long m7889;
        long m78892;
        c3732.m7896(8);
        if (m2944(c3732.m7893()) == 0) {
            m7889 = c3732.m7880();
            m78892 = c3732.m7880();
        } else {
            m7889 = c3732.m7889();
            m78892 = c3732.m7889();
        }
        return new C0899(m7889, m78892, c3732.m7880());
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static Pair m2947(C3732 c3732, int i, int i2) {
        Integer num;
        C0797 c0797;
        Pair create;
        int i3;
        int i4;
        Integer num2;
        boolean z;
        int i5 = c3732.f14533;
        while (i5 - i < i2) {
            c3732.m7896(i5);
            int m7893 = c3732.m7893();
            AbstractC2649.m5915("childAtomSize must be positive", m7893 > 0);
            if (c3732.m7893() == 1936289382) {
                int i6 = i5 + 8;
                int i7 = 0;
                int i8 = -1;
                Integer num3 = null;
                String str = null;
                while (i6 - i5 < m7893) {
                    c3732.m7896(i6);
                    int m78932 = c3732.m7893();
                    int m78933 = c3732.m7893();
                    if (m78933 == 1718775137) {
                        num3 = Integer.valueOf(c3732.m7893());
                    } else if (m78933 == 1935894637) {
                        c3732.m7900(4);
                        str = c3732.m7890(4, StandardCharsets.UTF_8);
                    } else if (m78933 == 1935894633) {
                        i8 = i6;
                        i7 = m78932;
                    }
                    i6 += m78932;
                }
                byte[] bArr = null;
                if ("cenc".equals(str) || "cbc1".equals(str) || "cens".equals(str) || "cbcs".equals(str)) {
                    AbstractC2649.m5915("frma atom is mandatory", num3 != null);
                    AbstractC2649.m5915("schi atom is mandatory", i8 != -1);
                    int i9 = i8 + 8;
                    while (true) {
                        if (i9 - i8 >= i7) {
                            num = num3;
                            c0797 = null;
                            break;
                        }
                        c3732.m7896(i9);
                        int m78934 = c3732.m7893();
                        if (c3732.m7893() == 1952804451) {
                            int m2944 = m2944(c3732.m7893());
                            c3732.m7900(1);
                            if (m2944 == 0) {
                                c3732.m7900(1);
                                i4 = 0;
                                i3 = 0;
                            } else {
                                int m7874 = c3732.m7874();
                                i3 = m7874 & 15;
                                i4 = (m7874 & 240) >> 4;
                            }
                            if (c3732.m7874() == 1) {
                                num2 = num3;
                                z = true;
                            } else {
                                num2 = num3;
                                z = false;
                            }
                            int m78742 = c3732.m7874();
                            byte[] bArr2 = new byte[16];
                            c3732.m7875(bArr2, 0, 16);
                            if (z && m78742 == 0) {
                                int m78743 = c3732.m7874();
                                byte[] bArr3 = new byte[m78743];
                                c3732.m7875(bArr3, 0, m78743);
                                bArr = bArr3;
                            }
                            num = num2;
                            c0797 = new C0797(z, str, m78742, bArr2, i4, i3, bArr);
                        } else {
                            i9 += m78934;
                        }
                    }
                    AbstractC2649.m5915("tenc atom is mandatory", c0797 != null);
                    String str2 = AbstractC3712.f14481;
                    create = Pair.create(num, c0797);
                } else {
                    create = null;
                }
                if (create != null) {
                    return create;
                }
            }
            i5 += m7893;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:319:0x05ab, code lost:
    
        if (r14 == 2) goto L273;
     */
    /* JADX WARN: Code restructure failed: missing block: B:554:0x018f, code lost:
    
        if (r11 == (-1)) goto L95;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:227:0x06f5  */
    /* JADX WARN: Removed duplicated region for block: B:242:0x0739  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x07e6  */
    /* JADX WARN: Removed duplicated region for block: B:254:0x083f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:277:0x079e  */
    /* JADX WARN: Removed duplicated region for block: B:383:0x0680  */
    /* JADX WARN: Removed duplicated region for block: B:384:0x0684  */
    /* JADX WARN: Removed duplicated region for block: B:465:0x0a0b  */
    /* JADX WARN: Removed duplicated region for block: B:469:0x0a15  */
    /* JADX WARN: Removed duplicated region for block: B:471:0x0a2b  */
    /* JADX WARN: Type inference failed for: r7v39, types: [ˊﾞ.ʽ, java.lang.Object] */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m2948(p305.C3732 r51, int r52, int r53, int r54, int r55, java.lang.String r56, boolean r57, p055.C1486 r58, p004.C0815 r59, int r60) {
        /*
            Method dump skipped, instructions count: 3254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p004.AbstractC0809.m2948(ᐧˎ.ﹳᐧ, int, int, int, int, java.lang.String, boolean, ʽⁱ.ᵔʾ, ʻˆ.ﾞᴵ, int):void");
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m2949(C3732 c3732) {
        int i = c3732.f14533;
        c3732.m7900(4);
        if (c3732.m7893() != 1751411826) {
            i += 4;
        }
        c3732.m7896(i);
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static C1476 m2950(C0889 c0889) {
        C0901 c0901;
        C0893 m3140 = c0889.m3140(1751411826);
        C0893 m31402 = c0889.m3140(1801812339);
        C0893 m31403 = c0889.m3140(1768715124);
        if (m3140 != null && m31402 != null && m31403 != null) {
            C3732 c3732 = m3140.f3767;
            c3732.m7896(16);
            if (c3732.m7893() == 1835299937) {
                C3732 c37322 = m31402.f3767;
                c37322.m7896(12);
                int m7893 = c37322.m7893();
                String[] strArr = new String[m7893];
                for (int i = 0; i < m7893; i++) {
                    int m78932 = c37322.m7893();
                    c37322.m7900(4);
                    strArr[i] = c37322.m7890(m78932 - 8, StandardCharsets.UTF_8);
                }
                C3732 c37323 = m31403.f3767;
                c37323.m7896(8);
                ArrayList arrayList = new ArrayList();
                while (c37323.m7904() > 8) {
                    int i2 = c37323.f14533;
                    int m78933 = c37323.m7893();
                    int m78934 = c37323.m7893() - 1;
                    if (m78934 < 0 || m78934 >= m7893) {
                        AbstractC2305.m5373(m78934, "Skipped metadata with unknown key index: ", "BoxParsers");
                    } else {
                        String str = strArr[m78934];
                        int i3 = i2 + m78933;
                        while (true) {
                            int i4 = c37323.f14533;
                            if (i4 >= i3) {
                                c0901 = null;
                                break;
                            }
                            int m78935 = c37323.m7893();
                            if (c37323.m7893() == 1684108385) {
                                int m78936 = c37323.m7893();
                                int m78937 = c37323.m7893();
                                int i5 = m78935 - 16;
                                byte[] bArr = new byte[i5];
                                c37323.m7875(bArr, 0, i5);
                                c0901 = new C0901(str, bArr, m78937, m78936);
                                break;
                            }
                            c37323.m7896(i4 + m78935);
                        }
                        if (c0901 != null) {
                            arrayList.add(c0901);
                        }
                    }
                    c37323.m7896(i2 + m78933);
                }
                if (!arrayList.isEmpty()) {
                    return new C1476(arrayList);
                }
            }
        }
        return null;
    }
}

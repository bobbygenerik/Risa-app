package p052;

import java.io.EOFException;
import java.io.IOException;
import p035.AbstractC1220;
import p164.C2571;
import p164.C2583;
import p164.C2599;
import p164.InterfaceC2592;
import p223.C3056;
import p435.AbstractC5154;
import ﹶﾞ.ⁱי;

/* renamed from: ʽᴵ.ʼᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1403 extends AbstractC1413 {

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public static final C2571 f5493;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public static final C2571 f5494;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public static final C2571 f5495;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public static final C2571 f5496;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public static final C2571 f5497;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public long f5498;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final C2599 f5499;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public String f5500;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public int f5501;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final InterfaceC2592 f5502;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public int f5503;

    static {
        C2571 c2571 = new C2571("'\\".getBytes(AbstractC5154.f19435));
        c2571.f9766 = "'\\";
        f5495 = c2571;
        C2571 c25712 = new C2571("\"\\".getBytes(AbstractC5154.f19435));
        c25712.f9766 = "\"\\";
        f5496 = c25712;
        C2571 c25713 = new C2571("{}[]:, \n\t\r\f/\\;#=".getBytes(AbstractC5154.f19435));
        c25713.f9766 = "{}[]:, \n\t\r\f/\\;#=";
        f5493 = c25713;
        C2571 c25714 = new C2571("\n\r".getBytes(AbstractC5154.f19435));
        c25714.f9766 = "\n\r";
        f5497 = c25714;
        C2571 c25715 = new C2571("*/".getBytes(AbstractC5154.f19435));
        c25715.f9766 = "*/";
        f5494 = c25715;
    }

    public C1403(InterfaceC2592 interfaceC2592) {
        this.f5526 = new int[32];
        this.f5523 = new String[32];
        this.f5525 = new int[32];
        this.f5501 = 0;
        if (interfaceC2592 == null) {
            throw new NullPointerException("source == null");
        }
        this.f5502 = interfaceC2592;
        this.f5499 = interfaceC2592.mo5794();
        m4152(6);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f5501 = 0;
        this.f5526[0] = 8;
        this.f5524 = 1;
        this.f5499.m5836();
        this.f5502.close();
    }

    public final String toString() {
        return "JsonReader(" + this.f5502 + ")";
    }

    /* renamed from: ʼـ, reason: contains not printable characters */
    public final boolean m4121(int i) {
        if (i == 9 || i == 10 || i == 12 || i == 13 || i == 32) {
            return false;
        }
        if (i != 35) {
            if (i == 44) {
                return false;
            }
            if (i != 47 && i != 61) {
                if (i == 123 || i == 125 || i == 58) {
                    return false;
                }
                if (i != 59) {
                    switch (i) {
                        case 91:
                        case 93:
                            return false;
                        case 92:
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        m4138();
        return false;
    }

    @Override // p052.AbstractC1413
    /* renamed from: ʽ, reason: contains not printable characters */
    public final void mo4122() {
        int i = this.f5501;
        if (i == 0) {
            i = m4134();
        }
        if (i == 3) {
            m4152(1);
            this.f5525[this.f5524 - 1] = 0;
            this.f5501 = 0;
        } else {
            throw new RuntimeException("Expected BEGIN_ARRAY but was " + AbstractC1220.m3776(mo4127()) + " at path " + m4151());
        }
    }

    /* renamed from: ʽⁱ, reason: contains not printable characters */
    public final String m4123(C2571 c2571) {
        StringBuilder sb = null;
        while (true) {
            long mo5807 = this.f5502.mo5807(c2571);
            if (mo5807 == -1) {
                m4150("Unterminated string");
                throw null;
            }
            C2599 c2599 = this.f5499;
            if (c2599.m5841(mo5807) != 92) {
                if (sb == null) {
                    String m5831 = c2599.m5831(mo5807, AbstractC5154.f19435);
                    c2599.readByte();
                    return m5831;
                }
                sb.append(c2599.m5831(mo5807, AbstractC5154.f19435));
                c2599.readByte();
                return sb.toString();
            }
            if (sb == null) {
                sb = new StringBuilder();
            }
            sb.append(c2599.m5831(mo5807, AbstractC5154.f19435));
            c2599.readByte();
            sb.append(m4142());
        }
    }

    /* renamed from: ʾˊ, reason: contains not printable characters */
    public final int m4124(String str, ⁱי r6) {
        int length = ((String[]) r6.ᴵˊ).length;
        for (int i = 0; i < length; i++) {
            if (str.equals(((String[]) r6.ᴵˊ)[i])) {
                this.f5501 = 0;
                this.f5523[this.f5524 - 1] = str;
                return i;
            }
        }
        return -1;
    }

    @Override // p052.AbstractC1413
    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final boolean mo4125() {
        int i = this.f5501;
        if (i == 0) {
            i = m4134();
        }
        return (i == 2 || i == 4 || i == 18) ? false : true;
    }

    /* renamed from: ʾﾞ, reason: contains not printable characters */
    public final String m4126() {
        long mo5807 = this.f5502.mo5807(f5493);
        C2599 c2599 = this.f5499;
        if (mo5807 == -1) {
            return c2599.m5843();
        }
        c2599.getClass();
        return c2599.m5831(mo5807, AbstractC5154.f19435);
    }

    @Override // p052.AbstractC1413
    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public final int mo4127() {
        int i = this.f5501;
        if (i == 0) {
            i = m4134();
        }
        switch (i) {
            case 1:
                return 3;
            case 2:
                return 4;
            case 3:
                return 1;
            case 4:
                return 2;
            case 5:
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return 8;
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                return 9;
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
            case 9:
            case 10:
            case 11:
                return 6;
            case 12:
            case 13:
            case 14:
            case 15:
                return 5;
            case 16:
            case 17:
                return 7;
            case 18:
                return 10;
            default:
                throw new AssertionError();
        }
    }

    @Override // p052.AbstractC1413
    /* renamed from: ˈʿ, reason: contains not printable characters */
    public final void mo4128() {
        int i = this.f5501;
        if (i == 0) {
            i = m4134();
        }
        if (i == 7) {
            this.f5501 = 0;
            int[] iArr = this.f5525;
            int i2 = this.f5524 - 1;
            iArr[i2] = iArr[i2] + 1;
            return;
        }
        throw new RuntimeException("Expected null but was " + AbstractC1220.m3776(mo4127()) + " at path " + m4151());
    }

    @Override // p052.AbstractC1413
    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final double mo4129() {
        int i = this.f5501;
        if (i == 0) {
            i = m4134();
        }
        if (i == 16) {
            this.f5501 = 0;
            int[] iArr = this.f5525;
            int i2 = this.f5524 - 1;
            iArr[i2] = iArr[i2] + 1;
            return this.f5498;
        }
        if (i == 17) {
            long j = this.f5503;
            C2599 c2599 = this.f5499;
            c2599.getClass();
            this.f5500 = c2599.m5831(j, AbstractC5154.f19435);
        } else if (i == 9) {
            this.f5500 = m4123(f5496);
        } else if (i == 8) {
            this.f5500 = m4123(f5495);
        } else if (i == 10) {
            this.f5500 = m4126();
        } else if (i != 11) {
            throw new RuntimeException("Expected a double but was " + AbstractC1220.m3776(mo4127()) + " at path " + m4151());
        }
        this.f5501 = 11;
        try {
            double parseDouble = Double.parseDouble(this.f5500);
            if (Double.isNaN(parseDouble) || Double.isInfinite(parseDouble)) {
                throw new IOException("JSON forbids NaN and infinities: " + parseDouble + " at path " + m4151());
            }
            this.f5500 = null;
            this.f5501 = 0;
            int[] iArr2 = this.f5525;
            int i3 = this.f5524 - 1;
            iArr2[i3] = iArr2[i3] + 1;
            return parseDouble;
        } catch (NumberFormatException unused) {
            throw new RuntimeException("Expected a double but was " + this.f5500 + " at path " + m4151());
        }
    }

    @Override // p052.AbstractC1413
    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final void mo4130() {
        int i = this.f5501;
        if (i == 0) {
            i = m4134();
        }
        if (i != 4) {
            throw new RuntimeException("Expected END_ARRAY but was " + AbstractC1220.m3776(mo4127()) + " at path " + m4151());
        }
        int i2 = this.f5524;
        this.f5524 = i2 - 1;
        int[] iArr = this.f5525;
        int i3 = i2 - 2;
        iArr[i3] = iArr[i3] + 1;
        this.f5501 = 0;
    }

    @Override // p052.AbstractC1413
    /* renamed from: ˊᵔ, reason: contains not printable characters */
    public final int mo4131(ⁱי r5) {
        int i = this.f5501;
        if (i == 0) {
            i = m4134();
        }
        if (i < 12 || i > 15) {
            return -1;
        }
        if (i == 15) {
            return m4124(this.f5500, r5);
        }
        int mo5800 = this.f5502.mo5800((C2583) r5.ʽʽ);
        if (mo5800 != -1) {
            this.f5501 = 0;
            this.f5523[this.f5524 - 1] = ((String[]) r5.ᴵˊ)[mo5800];
            return mo5800;
        }
        String str = this.f5523[this.f5524 - 1];
        String m4132 = m4132();
        int m4124 = m4124(m4132, r5);
        if (m4124 == -1) {
            this.f5501 = 15;
            this.f5500 = m4132;
            this.f5523[this.f5524 - 1] = str;
        }
        return m4124;
    }

    /* renamed from: ˎᐧ, reason: contains not printable characters */
    public final String m4132() {
        String str;
        int i = this.f5501;
        if (i == 0) {
            i = m4134();
        }
        if (i == 14) {
            str = m4126();
        } else if (i == 13) {
            str = m4123(f5496);
        } else if (i == 12) {
            str = m4123(f5495);
        } else {
            if (i != 15) {
                throw new RuntimeException("Expected a name but was " + AbstractC1220.m3776(mo4127()) + " at path " + m4151());
            }
            str = this.f5500;
            this.f5500 = null;
        }
        this.f5501 = 0;
        this.f5523[this.f5524 - 1] = str;
        return str;
    }

    /* renamed from: ˑ, reason: contains not printable characters */
    public final int m4133(String str, ⁱי r6) {
        int length = ((String[]) r6.ᴵˊ).length;
        for (int i = 0; i < length; i++) {
            if (str.equals(((String[]) r6.ᴵˊ)[i])) {
                this.f5501 = 0;
                int[] iArr = this.f5525;
                int i2 = this.f5524 - 1;
                iArr[i2] = iArr[i2] + 1;
                return i;
            }
        }
        return -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01cf, code lost:
    
        r8 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x01d5, code lost:
    
        r23.f5498 = r8;
        r11.skip(r4);
        r10 = 16;
        r23.f5501 = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x01d2, code lost:
    
        r8 = -r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x01c5, code lost:
    
        r3 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x01e0, code lost:
    
        if (r2 == r3) goto L160;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x01e3, code lost:
    
        if (r2 == 4) goto L160;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x01e6, code lost:
    
        if (r2 != 7) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x01e8, code lost:
    
        r23.f5503 = r4;
        r10 = 17;
        r23.f5501 = 17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x01b5, code lost:
    
        if (m4121(r7) != false) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0146, code lost:
    
        r3 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01b8, code lost:
    
        if (r2 != 2) goto L155;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01ba, code lost:
    
        if (r5 == 0) goto L147;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x01c0, code lost:
    
        if (r18 != Long.MIN_VALUE) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01c2, code lost:
    
        if (r6 == 0) goto L147;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01c9, code lost:
    
        if (r18 != r16) goto L151;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01cb, code lost:
    
        if (r6 != 0) goto L147;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x01cd, code lost:
    
        if (r6 == 0) goto L153;
     */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0267  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0134 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0216 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0217  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x00a5  */
    /* renamed from: י, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m4134() {
        /*
            Method dump skipped, instructions count: 733
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p052.C1403.m4134():int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0026, code lost:
    
        r1.skip(r3);
        r2 = p052.C1403.f5497;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0031, code lost:
    
        if (r6 != 47) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x008e, code lost:
    
        if (r6 != 35) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0090, code lost:
    
        m4138();
        r5 = r5.mo5807(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0099, code lost:
    
        if (r5 == (-1)) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x009b, code lost:
    
        r5 = r5 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x009f, code lost:
    
        r1.skip(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x009d, code lost:
    
        r5 = r1.f9835;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0039, code lost:
    
        if (r5.request(2) != false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x003d, code lost:
    
        m4138();
        r10 = r1.m5841(1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0046, code lost:
    
        if (r10 == 42) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0061, code lost:
    
        r1.readByte();
        r1.readByte();
        r5 = r5.mo5796(p052.C1403.f5494);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x006f, code lost:
    
        if (r5 == (-1)) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0071, code lost:
    
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0074, code lost:
    
        if (r3 == false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0076, code lost:
    
        r5 = r5 + r2.f9767.length;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x007e, code lost:
    
        r1.skip(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0081, code lost:
    
        if (r3 == false) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0085, code lost:
    
        m4150("Unterminated comment");
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x008b, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x007c, code lost:
    
        r5 = r1.f9835;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0073, code lost:
    
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0048, code lost:
    
        if (r10 == 47) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x004b, code lost:
    
        r1.readByte();
        r1.readByte();
        r5 = r5.mo5807(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0057, code lost:
    
        if (r5 == (-1)) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0059, code lost:
    
        r5 = r5 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x005d, code lost:
    
        r1.skip(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x005b, code lost:
    
        r5 = r1.f9835;
     */
    /* renamed from: יﹳ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m4135(boolean r13) {
        /*
            r12 = this;
            r0 = 0
        L1:
            r1 = r0
        L2:
            int r2 = r1 + 1
            long r3 = (long) r2
            ˊᐧ.ᵔᵢ r5 = r12.f5502
            boolean r3 = r5.request(r3)
            if (r3 == 0) goto La8
            long r3 = (long) r1
            ˊᐧ.ﾞᴵ r1 = r12.f5499
            byte r6 = r1.m5841(r3)
            r7 = 10
            if (r6 == r7) goto La5
            r7 = 32
            if (r6 == r7) goto La5
            r7 = 13
            if (r6 == r7) goto La5
            r7 = 9
            if (r6 != r7) goto L26
            goto La5
        L26:
            r1.skip(r3)
            ˊᐧ.ʼˎ r2 = p052.C1403.f5497
            r3 = -1
            r7 = 1
            r9 = 47
            if (r6 != r9) goto L8c
            r10 = 2
            boolean r10 = r5.request(r10)
            if (r10 != 0) goto L3d
            goto La4
        L3d:
            r12.m4138()
            byte r10 = r1.m5841(r7)
            r11 = 42
            if (r10 == r11) goto L61
            if (r10 == r9) goto L4b
            goto La4
        L4b:
            r1.readByte()
            r1.readByte()
            long r5 = r5.mo5807(r2)
            int r2 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r2 == 0) goto L5b
            long r5 = r5 + r7
            goto L5d
        L5b:
            long r5 = r1.f9835
        L5d:
            r1.skip(r5)
            goto L1
        L61:
            r1.readByte()
            r1.readByte()
            ˊᐧ.ʼˎ r2 = p052.C1403.f5494
            long r5 = r5.mo5796(r2)
            int r3 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r3 == 0) goto L73
            r3 = 1
            goto L74
        L73:
            r3 = r0
        L74:
            if (r3 == 0) goto L7c
            byte[] r2 = r2.f9767
            int r2 = r2.length
            long r7 = (long) r2
            long r5 = r5 + r7
            goto L7e
        L7c:
            long r5 = r1.f9835
        L7e:
            r1.skip(r5)
            if (r3 == 0) goto L85
            goto L1
        L85:
            java.lang.String r13 = "Unterminated comment"
            r12.m4150(r13)
            r13 = 0
            throw r13
        L8c:
            r9 = 35
            if (r6 != r9) goto La4
            r12.m4138()
            long r5 = r5.mo5807(r2)
            int r2 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r2 == 0) goto L9d
            long r5 = r5 + r7
            goto L9f
        L9d:
            long r5 = r1.f9835
        L9f:
            r1.skip(r5)
            goto L1
        La4:
            return r6
        La5:
            r1 = r2
            goto L2
        La8:
            if (r13 != 0) goto Lac
            r13 = -1
            return r13
        Lac:
            java.io.EOFException r13 = new java.io.EOFException
            java.lang.String r0 = "End of input"
            r13.<init>(r0)
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: p052.C1403.m4135(boolean):int");
    }

    @Override // p052.AbstractC1413
    /* renamed from: ـᵎ, reason: contains not printable characters */
    public final void mo4136() {
        int i = 0;
        do {
            int i2 = this.f5501;
            if (i2 == 0) {
                i2 = m4134();
            }
            if (i2 == 3) {
                m4152(1);
            } else if (i2 == 1) {
                m4152(3);
            } else {
                if (i2 == 4) {
                    i--;
                    if (i < 0) {
                        throw new RuntimeException("Expected a value but was " + AbstractC1220.m3776(mo4127()) + " at path " + m4151());
                    }
                    this.f5524--;
                } else if (i2 == 2) {
                    i--;
                    if (i < 0) {
                        throw new RuntimeException("Expected a value but was " + AbstractC1220.m3776(mo4127()) + " at path " + m4151());
                    }
                    this.f5524--;
                } else {
                    C2599 c2599 = this.f5499;
                    if (i2 == 14 || i2 == 10) {
                        long mo5807 = this.f5502.mo5807(f5493);
                        if (mo5807 == -1) {
                            mo5807 = c2599.f9835;
                        }
                        c2599.skip(mo5807);
                    } else if (i2 == 9 || i2 == 13) {
                        m4137(f5496);
                    } else if (i2 == 8 || i2 == 12) {
                        m4137(f5495);
                    } else if (i2 == 17) {
                        c2599.skip(this.f5503);
                    } else if (i2 == 18) {
                        throw new RuntimeException("Expected a value but was " + AbstractC1220.m3776(mo4127()) + " at path " + m4151());
                    }
                }
                this.f5501 = 0;
            }
            i++;
            this.f5501 = 0;
        } while (i != 0);
        int[] iArr = this.f5525;
        int i3 = this.f5524 - 1;
        iArr[i3] = iArr[i3] + 1;
        this.f5523[i3] = "null";
    }

    /* renamed from: ᐧˎ, reason: contains not printable characters */
    public final void m4137(C2571 c2571) {
        while (true) {
            long mo5807 = this.f5502.mo5807(c2571);
            if (mo5807 == -1) {
                m4150("Unterminated string");
                throw null;
            }
            C2599 c2599 = this.f5499;
            if (c2599.m5841(mo5807) != 92) {
                c2599.skip(mo5807 + 1);
                return;
            } else {
                c2599.skip(mo5807 + 1);
                m4142();
            }
        }
    }

    /* renamed from: ᐧﹶ, reason: contains not printable characters */
    public final void m4138() {
        m4150("Use JsonReader.setLenient(true) to accept malformed JSON");
        throw null;
    }

    @Override // p052.AbstractC1413
    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public final String mo4139() {
        String m5831;
        int i = this.f5501;
        if (i == 0) {
            i = m4134();
        }
        if (i == 10) {
            m5831 = m4126();
        } else if (i == 9) {
            m5831 = m4123(f5496);
        } else if (i == 8) {
            m5831 = m4123(f5495);
        } else if (i == 11) {
            m5831 = this.f5500;
            this.f5500 = null;
        } else if (i == 16) {
            m5831 = Long.toString(this.f5498);
        } else {
            if (i != 17) {
                throw new RuntimeException("Expected a string but was " + AbstractC1220.m3776(mo4127()) + " at path " + m4151());
            }
            long j = this.f5503;
            C2599 c2599 = this.f5499;
            c2599.getClass();
            m5831 = c2599.m5831(j, AbstractC5154.f19435);
        }
        this.f5501 = 0;
        int[] iArr = this.f5525;
        int i2 = this.f5524 - 1;
        iArr[i2] = iArr[i2] + 1;
        return m5831;
    }

    @Override // p052.AbstractC1413
    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final int mo4140() {
        int i = this.f5501;
        if (i == 0) {
            i = m4134();
        }
        if (i == 16) {
            long j = this.f5498;
            int i2 = (int) j;
            if (j == i2) {
                this.f5501 = 0;
                int[] iArr = this.f5525;
                int i3 = this.f5524 - 1;
                iArr[i3] = iArr[i3] + 1;
                return i2;
            }
            throw new RuntimeException("Expected an int but was " + this.f5498 + " at path " + m4151());
        }
        if (i == 17) {
            long j2 = this.f5503;
            C2599 c2599 = this.f5499;
            c2599.getClass();
            this.f5500 = c2599.m5831(j2, AbstractC5154.f19435);
        } else if (i == 9 || i == 8) {
            String m4123 = i == 9 ? m4123(f5496) : m4123(f5495);
            this.f5500 = m4123;
            try {
                int parseInt = Integer.parseInt(m4123);
                this.f5501 = 0;
                int[] iArr2 = this.f5525;
                int i4 = this.f5524 - 1;
                iArr2[i4] = iArr2[i4] + 1;
                return parseInt;
            } catch (NumberFormatException unused) {
            }
        } else if (i != 11) {
            throw new RuntimeException("Expected an int but was " + AbstractC1220.m3776(mo4127()) + " at path " + m4151());
        }
        this.f5501 = 11;
        try {
            double parseDouble = Double.parseDouble(this.f5500);
            int i5 = (int) parseDouble;
            if (i5 != parseDouble) {
                throw new RuntimeException("Expected an int but was " + this.f5500 + " at path " + m4151());
            }
            this.f5500 = null;
            this.f5501 = 0;
            int[] iArr3 = this.f5525;
            int i6 = this.f5524 - 1;
            iArr3[i6] = iArr3[i6] + 1;
            return i5;
        } catch (NumberFormatException unused2) {
            throw new RuntimeException("Expected an int but was " + this.f5500 + " at path " + m4151());
        }
    }

    @Override // p052.AbstractC1413
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void mo4141() {
        int i = this.f5501;
        if (i == 0) {
            i = m4134();
        }
        if (i == 1) {
            m4152(3);
            this.f5501 = 0;
        } else {
            throw new RuntimeException("Expected BEGIN_OBJECT but was " + AbstractC1220.m3776(mo4127()) + " at path " + m4151());
        }
    }

    /* renamed from: ⁱˉ, reason: contains not printable characters */
    public final char m4142() {
        int i;
        InterfaceC2592 interfaceC2592 = this.f5502;
        if (!interfaceC2592.request(1L)) {
            m4150("Unterminated escape sequence");
            throw null;
        }
        C2599 c2599 = this.f5499;
        byte readByte = c2599.readByte();
        if (readByte == 10 || readByte == 34 || readByte == 39 || readByte == 47 || readByte == 92) {
            return (char) readByte;
        }
        if (readByte == 98) {
            return '\b';
        }
        if (readByte == 102) {
            return '\f';
        }
        if (readByte == 110) {
            return '\n';
        }
        if (readByte == 114) {
            return '\r';
        }
        if (readByte == 116) {
            return '\t';
        }
        if (readByte != 117) {
            m4150("Invalid escape sequence: \\" + ((char) readByte));
            throw null;
        }
        if (!interfaceC2592.request(4L)) {
            throw new EOFException("Unterminated escape sequence at path " + m4151());
        }
        char c = 0;
        for (int i2 = 0; i2 < 4; i2++) {
            byte m5841 = c2599.m5841(i2);
            char c2 = (char) (c << 4);
            if (m5841 >= 48 && m5841 <= 57) {
                i = m5841 - 48;
            } else if (m5841 >= 97 && m5841 <= 102) {
                i = m5841 - 87;
            } else {
                if (m5841 < 65 || m5841 > 70) {
                    m4150("\\u".concat(c2599.m5831(4L, AbstractC5154.f19435)));
                    throw null;
                }
                i = m5841 - 55;
            }
            c = (char) (i + c2);
        }
        c2599.skip(4L);
        return c;
    }

    @Override // p052.AbstractC1413
    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final void mo4143() {
        int i = this.f5501;
        if (i == 0) {
            i = m4134();
        }
        if (i != 2) {
            throw new RuntimeException("Expected END_OBJECT but was " + AbstractC1220.m3776(mo4127()) + " at path " + m4151());
        }
        int i2 = this.f5524;
        int i3 = i2 - 1;
        this.f5524 = i3;
        this.f5523[i3] = null;
        int[] iArr = this.f5525;
        int i4 = i2 - 2;
        iArr[i4] = iArr[i4] + 1;
        this.f5501 = 0;
    }

    @Override // p052.AbstractC1413
    /* renamed from: ﹶᐧ, reason: contains not printable characters */
    public final void mo4144() {
        int i = this.f5501;
        if (i == 0) {
            i = m4134();
        }
        if (i == 14) {
            long mo5807 = this.f5502.mo5807(f5493);
            C2599 c2599 = this.f5499;
            if (mo5807 == -1) {
                mo5807 = c2599.f9835;
            }
            c2599.skip(mo5807);
        } else if (i == 13) {
            m4137(f5496);
        } else if (i == 12) {
            m4137(f5495);
        } else if (i != 15) {
            throw new RuntimeException("Expected a name but was " + AbstractC1220.m3776(mo4127()) + " at path " + m4151());
        }
        this.f5501 = 0;
        this.f5523[this.f5524 - 1] = "null";
    }
}

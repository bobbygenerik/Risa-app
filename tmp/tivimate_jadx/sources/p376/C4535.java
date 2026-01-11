package p376;

import android.util.Log;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import p307.AbstractC3740;

/* renamed from: ᵢٴ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4535 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public C4537 f16970;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public ByteBuffer f16972;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final byte[] f16973 = new byte[256];

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f16971 = 0;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int m9104() {
        try {
            return this.f16972.get() & 255;
        } catch (Exception unused) {
            this.f16970.f17002 = 1;
            return 0;
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m9105() {
        int m9104 = m9104();
        this.f16971 = m9104;
        if (m9104 <= 0) {
            return;
        }
        int i = 0;
        int i2 = 0;
        while (true) {
            try {
                i2 = this.f16971;
                if (i >= i2) {
                    return;
                }
                i2 -= i;
                this.f16972.get(this.f16973, i, i2);
                i += i2;
            } catch (Exception e) {
                if (Log.isLoggable("GifHeaderParser", 3)) {
                    StringBuilder m7944 = AbstractC3740.m7944("Error Reading Block n: ", i, " count: ", i2, " blockSize: ");
                    m7944.append(this.f16971);
                    m7944.toString();
                }
                this.f16970.f17002 = 1;
                return;
            }
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int[] m9106(int i) {
        byte[] bArr = new byte[i * 3];
        int[] iArr = null;
        try {
            this.f16972.get(bArr);
            iArr = new int[256];
            int i2 = 0;
            int i3 = 0;
            while (i2 < i) {
                int i4 = bArr[i3] & 255;
                int i5 = i3 + 2;
                int i6 = bArr[i3 + 1] & 255;
                i3 += 3;
                int i7 = i2 + 1;
                iArr[i2] = (i6 << 8) | (i4 << 16) | (-16777216) | (bArr[i5] & 255);
                i2 = i7;
            }
            return iArr;
        } catch (BufferUnderflowException e) {
            if (Log.isLoggable("GifHeaderParser", 3)) {
            }
            this.f16970.f17002 = 1;
            return iArr;
        }
    }

    /* JADX WARN: Type inference failed for: r6v29, types: [ᵢٴ.ﹳٴ, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v37, types: [ᵢٴ.ﹳٴ, java.lang.Object] */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C4537 m9107() {
        byte[] bArr;
        if (this.f16972 == null) {
            throw new IllegalStateException("You must call setData() before parseHeader()");
        }
        if (m9108()) {
            return this.f16970;
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 6; i++) {
            sb.append((char) m9104());
        }
        if (sb.toString().startsWith("GIF")) {
            this.f16970.f17004 = this.f16972.getShort();
            this.f16970.f17000 = this.f16972.getShort();
            int m9104 = m9104();
            C4537 c4537 = this.f16970;
            c4537.f17001 = (m9104 & 128) != 0;
            c4537.f16994 = (int) Math.pow(2.0d, (m9104 & 7) + 1);
            this.f16970.f16996 = m9104();
            C4537 c45372 = this.f16970;
            m9104();
            c45372.getClass();
            if (this.f16970.f17001 && !m9108()) {
                C4537 c45373 = this.f16970;
                c45373.f17003 = m9106(c45373.f16994);
                C4537 c45374 = this.f16970;
                c45374.f16999 = c45374.f17003[c45374.f16996];
            }
        } else {
            this.f16970.f17002 = 1;
        }
        if (!m9108()) {
            boolean z = false;
            while (!z && !m9108() && this.f16970.f16995 <= Integer.MAX_VALUE) {
                int m91042 = m9104();
                if (m91042 == 33) {
                    int m91043 = m9104();
                    if (m91043 == 1) {
                        m9109();
                    } else if (m91043 == 249) {
                        this.f16970.f16997 = new Object();
                        m9104();
                        int m91044 = m9104();
                        C4538 c4538 = this.f16970.f16997;
                        int i2 = (m91044 & 28) >> 2;
                        c4538.f17011 = i2;
                        if (i2 == 0) {
                            c4538.f17011 = 1;
                        }
                        c4538.f17015 = (m91044 & 1) != 0;
                        short s = this.f16972.getShort();
                        if (s < 2) {
                            s = 10;
                        }
                        C4538 c45382 = this.f16970.f16997;
                        c45382.f17005 = s * 10;
                        c45382.f17012 = m9104();
                        m9104();
                    } else if (m91043 == 254) {
                        m9109();
                    } else if (m91043 != 255) {
                        m9109();
                    } else {
                        m9105();
                        StringBuilder sb2 = new StringBuilder();
                        int i3 = 0;
                        while (true) {
                            bArr = this.f16973;
                            if (i3 >= 11) {
                                break;
                            }
                            sb2.append((char) bArr[i3]);
                            i3++;
                        }
                        if (sb2.toString().equals("NETSCAPE2.0")) {
                            do {
                                m9105();
                                if (bArr[0] == 1) {
                                    byte b = bArr[1];
                                    byte b2 = bArr[2];
                                    this.f16970.getClass();
                                }
                                if (this.f16971 > 0) {
                                }
                            } while (!m9108());
                        } else {
                            m9109();
                        }
                    }
                } else if (m91042 == 44) {
                    C4537 c45375 = this.f16970;
                    if (c45375.f16997 == null) {
                        c45375.f16997 = new Object();
                    }
                    c45375.f16997.f17014 = this.f16972.getShort();
                    this.f16970.f16997.f17013 = this.f16972.getShort();
                    this.f16970.f16997.f17006 = this.f16972.getShort();
                    this.f16970.f16997.f17008 = this.f16972.getShort();
                    int m91045 = m9104();
                    boolean z2 = (m91045 & 128) != 0;
                    int pow = (int) Math.pow(2.0d, (m91045 & 7) + 1);
                    C4538 c45383 = this.f16970.f16997;
                    c45383.f17009 = (m91045 & 64) != 0;
                    if (z2) {
                        c45383.f17010 = m9106(pow);
                    } else {
                        c45383.f17010 = null;
                    }
                    this.f16970.f16997.f17007 = this.f16972.position();
                    m9104();
                    m9109();
                    if (!m9108()) {
                        C4537 c45376 = this.f16970;
                        c45376.f16995++;
                        c45376.f16998.add(c45376.f16997);
                    }
                } else if (m91042 != 59) {
                    this.f16970.f17002 = 1;
                } else {
                    z = true;
                }
            }
            C4537 c45377 = this.f16970;
            if (c45377.f16995 < 0) {
                c45377.f17002 = 1;
            }
        }
        return this.f16970;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean m9108() {
        return this.f16970.f17002 != 0;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m9109() {
        int m9104;
        do {
            m9104 = m9104();
            this.f16972.position(Math.min(this.f16972.position() + m9104, this.f16972.limit()));
        } while (m9104 > 0);
    }
}

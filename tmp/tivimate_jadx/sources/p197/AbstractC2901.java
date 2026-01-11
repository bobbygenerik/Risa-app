package p197;

import java.nio.charset.Charset;
import java.nio.charset.UnsupportedCharsetException;
import p035.AbstractC1220;
import p307.AbstractC3740;
import p317.AbstractC3913;
import p449.AbstractC5359;

/* renamed from: ˎʿ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2901 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f10937;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f10938;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C2900 f10939;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public byte[] f10940;

    static {
        AbstractC5359.m10750(AbstractC2901.class);
    }

    public AbstractC2901() {
        this(new byte[m6409(256)], false, C2900.f10933);
    }

    public AbstractC2901(byte[] bArr, boolean z, C2900 c2900) {
        this.f10940 = bArr;
        this.f10939 = c2900;
        this.f10937 = 0;
        this.f10938 = z ? bArr.length : 0;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static int m6409(int i) {
        int i2 = 1;
        while (i2 < i) {
            i2 <<= 1;
            if (i2 <= 0) {
                throw new IllegalArgumentException(AbstractC1220.m3773(i, "Cannot get next power of 2; ", " is too large"));
            }
        }
        return i2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Buffer [rpos=");
        sb.append(this.f10937);
        sb.append(", wpos=");
        sb.append(this.f10938);
        sb.append(", size=");
        return AbstractC1220.m3782(sb, this.f10940.length, "]");
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final byte m6410() {
        if (m6421() < 1) {
            throw new Exception("Underflow");
        }
        byte[] bArr = this.f10940;
        int i = this.f10937;
        this.f10937 = i + 1;
        return bArr[i];
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void m6411(int i, byte[] bArr) {
        if (m6421() < i) {
            throw new Exception("Underflow");
        }
        System.arraycopy(this.f10940, this.f10937, bArr, 0, i);
        this.f10937 += i;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public AbstractC2901 mo6412(byte b) {
        int length = this.f10940.length;
        int i = this.f10938;
        if (length - i < 1) {
            byte[] bArr = new byte[m6409(i + 1)];
            byte[] bArr2 = this.f10940;
            System.arraycopy(bArr2, 0, bArr, 0, bArr2.length);
            this.f10940 = bArr;
        }
        byte[] bArr3 = this.f10940;
        int i2 = this.f10938;
        this.f10938 = i2 + 1;
        bArr3[i2] = b;
        return this;
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final void m6413() {
        this.f10939.m6406(this);
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final void m6414(int i) {
        if (m6421() < i) {
            throw new Exception("Underflow");
        }
        this.f10937 += i;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public AbstractC2901 mo6415(int i, byte[] bArr) {
        int length = this.f10940.length;
        int i2 = this.f10938;
        if (length - i2 < i) {
            byte[] bArr2 = new byte[m6409(i2 + i)];
            byte[] bArr3 = this.f10940;
            System.arraycopy(bArr3, 0, bArr2, 0, bArr3.length);
            this.f10940 = bArr2;
        }
        System.arraycopy(bArr, 0, this.f10940, this.f10938, i);
        this.f10938 += i;
        return this;
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final byte[] m6416(int i) {
        byte[] bArr = new byte[i];
        m6411(i, bArr);
        return bArr;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m6417(int i) {
        this.f10939.m6404(this, i);
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final int m6418() {
        return (int) this.f10939.m6402(this);
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void m6419(long j) {
        switch (this.f10939.f10936) {
            case 0:
                if (j < 0 || j > 4294967295L) {
                    throw new IllegalArgumentException(AbstractC3740.m7926("Invalid uint32 value: ", j));
                }
                mo6415(4, new byte[]{(byte) (j >> 24), (byte) (j >> 16), (byte) (j >> 8), (byte) j});
                return;
            default:
                if (j < 0 || j > 4294967295L) {
                    throw new IllegalArgumentException(AbstractC3740.m7926("Invalid uint32 value: ", j));
                }
                mo6415(4, new byte[]{(byte) j, (byte) (j >> 8), (byte) (j >> 16), (byte) (j >> 24)});
                return;
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final byte[] m6420() {
        int m6421 = m6421();
        if (m6421 <= 0) {
            return new byte[0];
        }
        byte[] bArr = new byte[m6421];
        System.arraycopy(this.f10940, this.f10937, bArr, 0, m6421);
        return bArr;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int m6421() {
        return this.f10938 - this.f10937;
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final String m6422(int i, Charset charset) {
        String name = charset.name();
        name.getClass();
        char c = 65535;
        switch (name.hashCode()) {
            case -1781783509:
                if (name.equals("UTF-16")) {
                    c = 0;
                    break;
                }
                break;
            case 81070450:
                if (name.equals("UTF-8")) {
                    c = 1;
                    break;
                }
                break;
            case 1398001070:
                if (name.equals("UTF-16BE")) {
                    c = 2;
                    break;
                }
                break;
            case 1398001380:
                if (name.equals("UTF-16LE")) {
                    c = 3;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                switch (this.f10939.f10936) {
                    case 0:
                        return C2900.m6400(this, i, AbstractC3913.f15174);
                    default:
                        return C2900.m6400(this, i, AbstractC3913.f15172);
                }
            case 1:
                byte[] bArr = new byte[i];
                m6411(i, bArr);
                return new String(bArr, charset);
            case 2:
                return C2900.m6400(this, i, AbstractC3913.f15174);
            case 3:
                return C2900.m6400(this, i, AbstractC3913.f15172);
            default:
                throw new UnsupportedCharsetException(charset.name());
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m6423(String str, Charset charset) {
        String name = charset.name();
        name.getClass();
        char c = 65535;
        switch (name.hashCode()) {
            case -1781783509:
                if (name.equals("UTF-16")) {
                    c = 0;
                    break;
                }
                break;
            case 81070450:
                if (name.equals("UTF-8")) {
                    c = 1;
                    break;
                }
                break;
            case 1398001070:
                if (name.equals("UTF-16BE")) {
                    c = 2;
                    break;
                }
                break;
            case 1398001380:
                if (name.equals("UTF-16LE")) {
                    c = 3;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                this.f10939.m6401(this, str);
                return;
            case 1:
                byte[] bytes = str.getBytes(charset);
                mo6415(bytes.length, bytes);
                return;
            case 2:
                C2900.f10934.m6401(this, str);
                return;
            case 3:
                C2900.f10933.m6401(this, str);
                return;
            default:
                throw new UnsupportedCharsetException(charset.name());
        }
    }
}

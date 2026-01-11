package p164;

import com.bumptech.glide.ˈ;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Arrays;
import p035.AbstractC1220;
import p393.AbstractC4707;
import p435.AbstractC5154;
import ˈˆ.ﾞᴵ;

/* renamed from: ˊᐧ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C2571 implements Serializable, Comparable {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final C2571 f9765 = new C2571(new byte[0]);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public transient String f9766;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final byte[] f9767;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public transient int f9768;

    public C2571(byte[] bArr) {
        this.f9767 = bArr;
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static /* synthetic */ C2571 m5745(C2571 c2571, int i, int i2, int i3) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = -1234567890;
        }
        return c2571.mo5752(i, i2);
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static int m5746(C2571 c2571, C2571 c25712) {
        c2571.getClass();
        return c2571.mo5754(0, c25712.mo5756());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C2571) {
            C2571 c2571 = (C2571) obj;
            int mo5749 = c2571.mo5749();
            byte[] bArr = this.f9767;
            if (mo5749 == bArr.length && c2571.mo5750(0, 0, bArr.length, bArr)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int i = this.f9768;
        if (i != 0) {
            return i;
        }
        int hashCode = Arrays.hashCode(this.f9767);
        this.f9768 = hashCode;
        return hashCode;
    }

    /* JADX WARN: Code restructure failed: missing block: B:105:0x00f6, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0130, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0134, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x00d6, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x0173, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x017a, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x016c, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x01aa, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x01ad, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x01b0, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x0140, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x01b3, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0096, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00c4, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0085, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x00fe, code lost:
    
        if (r6 == 64) goto L180;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            Method dump skipped, instructions count: 619
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p164.C2571.toString():java.lang.String");
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public int mo5747(byte[] bArr) {
        int mo5749 = mo5749();
        byte[] bArr2 = this.f9767;
        for (int min = Math.min(mo5749, bArr2.length - bArr.length); -1 < min; min--) {
            if (ˈ.ⁱˊ(bArr2, min, bArr, 0, bArr.length)) {
                return min;
            }
        }
        return -1;
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final String m5748() {
        String str = this.f9766;
        if (str != null) {
            return str;
        }
        String str2 = new String(mo5756(), AbstractC5154.f19435);
        this.f9766 = str2;
        return str2;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public int mo5749() {
        return this.f9767.length;
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public boolean mo5750(int i, int i2, int i3, byte[] bArr) {
        if (i < 0) {
            return false;
        }
        byte[] bArr2 = this.f9767;
        return i <= bArr2.length - i3 && i2 >= 0 && i2 <= bArr.length - i3 && ˈ.ⁱˊ(bArr2, i, bArr, i2, i3);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public String mo5751() {
        byte[] bArr = this.f9767;
        char[] cArr = new char[bArr.length * 2];
        int i = 0;
        for (byte b : bArr) {
            int i2 = i + 1;
            char[] cArr2 = AbstractC4707.f17795;
            cArr[i] = cArr2[(b >> 4) & 15];
            i += 2;
            cArr[i2] = cArr2[b & 15];
        }
        return new String(cArr);
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public C2571 mo5752(int i, int i2) {
        if (i2 == -1234567890) {
            i2 = mo5749();
        }
        if (i < 0) {
            throw new IllegalArgumentException("beginIndex < 0");
        }
        byte[] bArr = this.f9767;
        if (i2 > bArr.length) {
            throw new IllegalArgumentException(AbstractC1220.m3784(new StringBuilder("endIndex > length("), bArr.length, ')').toString());
        }
        if (i2 - i < 0) {
            throw new IllegalArgumentException("endIndex < beginIndex");
        }
        if (i == 0 && i2 == bArr.length) {
            return this;
        }
        ﾞᴵ.ᵎﹶ(i2, bArr.length);
        return new C2571(Arrays.copyOfRange(bArr, i, i2));
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public C2571 mo5753() {
        int i = 0;
        while (true) {
            byte[] bArr = this.f9767;
            if (i >= bArr.length) {
                return this;
            }
            byte b = bArr[i];
            if (b >= 65 && b <= 90) {
                byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
                copyOf[i] = (byte) (b + 32);
                for (int i2 = i + 1; i2 < copyOf.length; i2++) {
                    byte b2 = copyOf[i2];
                    if (b2 >= 65 && b2 <= 90) {
                        copyOf[i2] = (byte) (b2 + 32);
                    }
                }
                return new C2571(copyOf);
            }
            i++;
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int mo5754(int i, byte[] bArr) {
        byte[] bArr2 = this.f9767;
        int length = bArr2.length - bArr.length;
        int max = Math.max(i, 0);
        if (max > length) {
            return -1;
        }
        while (!ˈ.ⁱˊ(bArr2, max, bArr, 0, bArr.length)) {
            if (max == length) {
                return -1;
            }
            max++;
        }
        return max;
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public boolean mo5755(int i, C2571 c2571, int i2) {
        return c2571.mo5750(0, i, i2, this.f9767);
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public byte[] mo5756() {
        return this.f9767;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public byte mo5757(int i) {
        return this.f9767[i];
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public void mo5758(C2599 c2599, int i) {
        c2599.write(this.f9767, 0, i);
    }

    @Override // java.lang.Comparable
    /* renamed from: ⁱˊ, reason: contains not printable characters and merged with bridge method [inline-methods] */
    public final int compareTo(C2571 c2571) {
        int mo5749 = mo5749();
        int mo57492 = c2571.mo5749();
        int min = Math.min(mo5749, mo57492);
        for (int i = 0; i < min; i++) {
            int mo5757 = mo5757(i) & 255;
            int mo57572 = c2571.mo5757(i) & 255;
            if (mo5757 != mo57572) {
                return mo5757 < mo57572 ? -1 : 1;
            }
        }
        if (mo5749 == mo57492) {
            return 0;
        }
        return mo5749 < mo57492 ? -1 : 1;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public String mo5760() {
        byte[] bArr = AbstractC2596.f9832;
        byte[] bArr2 = this.f9767;
        byte[] bArr3 = new byte[((bArr2.length + 2) / 3) * 4];
        int length = bArr2.length - (bArr2.length % 3);
        int i = 0;
        int i2 = 0;
        while (i < length) {
            byte b = bArr2[i];
            int i3 = i + 2;
            byte b2 = bArr2[i + 1];
            i += 3;
            byte b3 = bArr2[i3];
            bArr3[i2] = bArr[(b & 255) >> 2];
            bArr3[i2 + 1] = bArr[((b & 3) << 4) | ((b2 & 255) >> 4)];
            int i4 = i2 + 3;
            bArr3[i2 + 2] = bArr[((b2 & 15) << 2) | ((b3 & 255) >> 6)];
            i2 += 4;
            bArr3[i4] = bArr[b3 & 63];
        }
        int length2 = bArr2.length - length;
        if (length2 == 1) {
            byte b4 = bArr2[i];
            bArr3[i2] = bArr[(b4 & 255) >> 2];
            bArr3[i2 + 1] = bArr[(b4 & 3) << 4];
            bArr3[i2 + 2] = 61;
            bArr3[i2 + 3] = 61;
        } else if (length2 == 2) {
            int i5 = i + 1;
            byte b5 = bArr2[i];
            byte b6 = bArr2[i5];
            bArr3[i2] = bArr[(b5 & 255) >> 2];
            bArr3[i2 + 1] = bArr[((b5 & 3) << 4) | ((b6 & 255) >> 4)];
            bArr3[i2 + 2] = bArr[(b6 & 15) << 2];
            bArr3[i2 + 3] = 61;
        }
        return new String(bArr3, AbstractC5154.f19435);
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public String mo5761(Charset charset) {
        return new String(this.f9767, charset);
    }
}

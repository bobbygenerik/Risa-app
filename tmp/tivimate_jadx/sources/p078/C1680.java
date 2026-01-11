package p078;

import com.hierynomus.mssmb2.SMBApiException;
import com.hierynomus.protocol.transport.TransportException;
import java.io.InputStream;
import java.util.concurrent.TimeUnit;
import p033.C1181;
import p033.C1184;
import p154.C2488;
import p154.C2504;
import p173.InterfaceC2655;
import p183.C2762;
import p449.AbstractC5359;
import p449.InterfaceC5360;
import ʽⁱ.ᵎﹶ;
import ˈˆ.ﾞᴵ;
import ᵎˉ.ⁱˊ;

/* renamed from: ʿʼ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1680 extends InputStream {

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public static final InterfaceC5360 f6818 = AbstractC5359.m10750(C1680.class);

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final long f6820;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final int f6822;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public boolean f6823;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public C2762 f6824;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public C1673 f6825;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public byte[] f6826;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public long f6819 = 0;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public int f6821 = 0;

    public C1680(C1673 c1673, int i, long j) {
        this.f6825 = c1673;
        this.f6822 = i;
        this.f6820 = j;
    }

    @Override // java.io.InputStream
    public final int available() {
        return 0;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f6823 = true;
        this.f6825 = null;
        this.f6826 = null;
    }

    @Override // java.io.InputStream
    public final int read() {
        byte[] bArr = this.f6826;
        if (bArr == null || this.f6821 >= bArr.length) {
            m4570();
        }
        if (this.f6823) {
            return -1;
        }
        byte[] bArr2 = this.f6826;
        int i = this.f6821;
        this.f6821 = i + 1;
        return bArr2[i] & 255;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        byte[] bArr2 = this.f6826;
        if (bArr2 == null || this.f6821 >= bArr2.length) {
            m4570();
        }
        if (this.f6823) {
            return -1;
        }
        byte[] bArr3 = this.f6826;
        int length = bArr3.length;
        int i3 = this.f6821;
        if (length - i3 <= i2) {
            i2 = bArr3.length - i3;
        }
        System.arraycopy(bArr3, i3, bArr, i, i2);
        this.f6821 += i2;
        return i2;
    }

    @Override // java.io.InputStream
    public final long skip(long j) {
        if (this.f6826 == null) {
            this.f6819 += j;
            return j;
        }
        long j2 = this.f6821 + j;
        if (j2 < r0.length) {
            this.f6821 = (int) j2;
            return j;
        }
        this.f6819 = (j2 - r0.length) + this.f6819;
        this.f6826 = null;
        this.f6824 = null;
        return j;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m4570() {
        if (this.f6823) {
            return;
        }
        if (this.f6824 == null) {
            this.f6824 = m4571();
        }
        C2762 c2762 = this.f6824;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        ⁱˊ r1 = TransportException.f3098;
        C2504 c2504 = (C2504) ﾞᴵ.ﹳᐧ(c2762, this.f6820);
        long j = ((C1181) ((InterfaceC2655) ((ᵎﹶ) c2504).ʾˋ)).f4580;
        if (j == 0) {
            this.f6826 = c2504.f9531;
            this.f6821 = 0;
            this.f6819 += c2504.f9530;
        }
        if (j == 3221225489L || c2504.f9530 == 0) {
            f6818.mo4098(Long.valueOf(this.f6819), "EOF, {} bytes read");
            this.f6823 = true;
        } else {
            if (j == 0) {
                this.f6824 = m4571();
                return;
            }
            throw new SMBApiException((C1181) ((InterfaceC2655) ((ᵎﹶ) c2504).ʾˋ), "Read failed for " + this);
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final C2762 m4571() {
        C1673 c1673 = this.f6825;
        long j = this.f6819;
        C1671 c1671 = c1673.f6782;
        C1184 c1184 = c1673.f6779;
        return c1671.m4568(new C2488(c1671.f6814, c1184, c1671.f6817, c1671.f6805, j, Math.min(this.f6822, c1671.f6810)));
    }
}

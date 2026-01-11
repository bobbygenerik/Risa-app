package p171;

import java.io.EOFException;
import java.io.InterruptedIOException;
import java.util.Arrays;
import p055.AbstractC1449;
import p055.InterfaceC1455;
import p305.AbstractC3712;

/* renamed from: ˊﾞ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2651 implements InterfaceC2622 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final long f10067;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public long f10069;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public int f10070;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public int f10071;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final InterfaceC1455 f10072;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public byte[] f10073 = new byte[65536];

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final byte[] f10068 = new byte[4096];

    static {
        AbstractC1449.m4241("media3.extractor");
    }

    public C2651(InterfaceC1455 interfaceC1455, long j, long j2) {
        this.f10072 = interfaceC1455;
        this.f10069 = j;
        this.f10067 = j2;
    }

    @Override // p171.InterfaceC2622
    public final long getLength() {
        return this.f10067;
    }

    @Override // p171.InterfaceC2622
    public final long getPosition() {
        return this.f10069;
    }

    @Override // p055.InterfaceC1455
    public final int read(byte[] bArr, int i, int i2) {
        C2651 c2651;
        int i3 = this.f10071;
        int i4 = 0;
        if (i3 != 0) {
            int min = Math.min(i3, i2);
            System.arraycopy(this.f10073, 0, bArr, i, min);
            m5931(min);
            i4 = min;
        }
        if (i4 == 0) {
            c2651 = this;
            i4 = c2651.m5930(bArr, i, i2, 0, true);
        } else {
            c2651 = this;
        }
        if (i4 != -1) {
            c2651.f10069 += i4;
        }
        return i4;
    }

    @Override // p171.InterfaceC2622
    public final void readFully(byte[] bArr, int i, int i2) {
        mo4601(bArr, i, i2, false);
    }

    @Override // p171.InterfaceC2622
    /* renamed from: ʻٴ */
    public final boolean mo4572(byte[] bArr, int i, int i2, boolean z) {
        if (!m5932(i2, z)) {
            return false;
        }
        System.arraycopy(this.f10073, this.f10070 - i2, bArr, i, i2);
        return true;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m5929(int i) {
        int i2 = this.f10070 + i;
        byte[] bArr = this.f10073;
        if (i2 > bArr.length) {
            this.f10073 = Arrays.copyOf(this.f10073, AbstractC3712.m7758(bArr.length * 2, 65536 + i2, i2 + 524288));
        }
    }

    @Override // p171.InterfaceC2622
    /* renamed from: ʾˋ */
    public final void mo4576(byte[] bArr, int i, int i2) {
        mo4572(bArr, i, i2, false);
    }

    @Override // p171.InterfaceC2622
    /* renamed from: ʾᵎ */
    public final long mo4577() {
        return this.f10069 + this.f10070;
    }

    @Override // p171.InterfaceC2622
    /* renamed from: ˆʾ */
    public final int mo4578(byte[] bArr, int i, int i2) {
        C2651 c2651;
        int min;
        m5929(i2);
        int i3 = this.f10071;
        int i4 = this.f10070;
        int i5 = i3 - i4;
        if (i5 == 0) {
            c2651 = this;
            min = c2651.m5930(this.f10073, i4, i2, 0, true);
            if (min == -1) {
                return -1;
            }
            c2651.f10071 += min;
        } else {
            c2651 = this;
            min = Math.min(i2, i5);
        }
        System.arraycopy(c2651.f10073, c2651.f10070, bArr, i, min);
        c2651.f10070 += min;
        return min;
    }

    @Override // p171.InterfaceC2622
    /* renamed from: ˈ */
    public final int mo4580(int i) {
        C2651 c2651;
        int min = Math.min(this.f10071, i);
        m5931(min);
        if (min == 0) {
            byte[] bArr = this.f10068;
            c2651 = this;
            min = c2651.m5930(bArr, 0, Math.min(i, bArr.length), 0, true);
        } else {
            c2651 = this;
        }
        if (min != -1) {
            c2651.f10069 += min;
        }
        return min;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int m5930(byte[] bArr, int i, int i2, int i3, boolean z) {
        if (Thread.interrupted()) {
            throw new InterruptedIOException();
        }
        int read = this.f10072.read(bArr, i + i3, i2 - i3);
        if (read != -1) {
            return i3 + read;
        }
        if (i3 == 0 && z) {
            return -1;
        }
        throw new EOFException();
    }

    @Override // p171.InterfaceC2622
    /* renamed from: ᴵˊ */
    public final void mo4590(int i) {
        m5932(i, false);
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m5931(int i) {
        int i2 = this.f10071 - i;
        this.f10071 = i2;
        this.f10070 = 0;
        byte[] bArr = this.f10073;
        byte[] bArr2 = i2 < bArr.length - 524288 ? new byte[65536 + i2] : bArr;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        this.f10073 = bArr2;
    }

    @Override // p171.InterfaceC2622
    /* renamed from: ᵔʾ */
    public final void mo4595(int i) {
        mo4599(i, false);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean m5932(int i, boolean z) {
        m5929(i);
        int i2 = this.f10071 - this.f10070;
        while (i2 < i) {
            int i3 = i;
            boolean z2 = z;
            i2 = m5930(this.f10073, this.f10070, i3, i2, z2);
            if (i2 == -1) {
                return false;
            }
            this.f10071 = this.f10070 + i2;
            i = i3;
            z = z2;
        }
        this.f10070 += i;
        return true;
    }

    @Override // p171.InterfaceC2622
    /* renamed from: ﹳᐧ */
    public final boolean mo4599(int i, boolean z) {
        int min = Math.min(this.f10071, i);
        m5931(min);
        int i2 = min;
        while (i2 < i && i2 != -1) {
            byte[] bArr = this.f10068;
            i2 = m5930(bArr, -i2, Math.min(i, bArr.length + i2), i2, z);
        }
        if (i2 != -1) {
            this.f10069 += i2;
        }
        return i2 != -1;
    }

    @Override // p171.InterfaceC2622
    /* renamed from: ﾞʻ */
    public final void mo4600() {
        this.f10070 = 0;
    }

    @Override // p171.InterfaceC2622
    /* renamed from: ﾞᴵ */
    public final boolean mo4601(byte[] bArr, int i, int i2, boolean z) {
        int min;
        int i3 = this.f10071;
        if (i3 == 0) {
            min = 0;
        } else {
            min = Math.min(i3, i2);
            System.arraycopy(this.f10073, 0, bArr, i, min);
            m5931(min);
        }
        int i4 = min;
        while (i4 < i2 && i4 != -1) {
            i4 = m5930(bArr, i, i2, i4, z);
        }
        if (i4 != -1) {
            this.f10069 += i4;
        }
        return i4 != -1;
    }
}

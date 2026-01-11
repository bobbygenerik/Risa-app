package p079;

import com.parse.ٴʼ;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicLong;
import p164.InterfaceC2592;
import p171.C2628;
import p171.InterfaceC2622;
import p171.InterfaceC2626;
import p171.InterfaceC2639;
import p171.InterfaceC2646;
import p208.C2950;
import p220.InterfaceC3028;
import p274.InterfaceC3486;
import p291.C3613;
import p296.AbstractC3659;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p347.C4279;
import p435.AbstractC5143;

/* renamed from: ʿʽ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1681 implements InterfaceC2622, InterfaceC2646, InterfaceC3486, InterfaceC3028 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public Object f6827;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f6828;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public long f6829;

    public C1681() {
        this.f6828 = 4;
        this.f6829 = 0L;
    }

    public /* synthetic */ C1681(long j, Object obj, int i) {
        this.f6828 = i;
        this.f6829 = j;
        this.f6827 = obj;
    }

    public /* synthetic */ C1681(Object obj, long j, int i) {
        this.f6828 = i;
        this.f6827 = obj;
        this.f6829 = j;
    }

    public C1681(InterfaceC2592 interfaceC2592) {
        this.f6828 = 5;
        this.f6827 = interfaceC2592;
        this.f6829 = 262144L;
    }

    public C1681(InterfaceC2622 interfaceC2622, long j) {
        this.f6828 = 1;
        this.f6827 = interfaceC2622;
        AbstractC3731.m7849(interfaceC2622.getPosition() >= j);
        this.f6829 = j;
    }

    public C1681(C4279 c4279) {
        this.f6828 = 8;
        AbstractC3659.m7687(c4279);
        this.f6827 = c4279;
    }

    @Override // p171.InterfaceC2622
    public long getLength() {
        return ((InterfaceC2622) this.f6827).getLength() - this.f6829;
    }

    @Override // p171.InterfaceC2622
    public long getPosition() {
        return ((InterfaceC2622) this.f6827).getPosition() - this.f6829;
    }

    @Override // p055.InterfaceC1455
    public int read(byte[] bArr, int i, int i2) {
        return ((InterfaceC2622) this.f6827).read(bArr, i, i2);
    }

    @Override // p171.InterfaceC2622
    public void readFully(byte[] bArr, int i, int i2) {
        ((InterfaceC2622) this.f6827).readFully(bArr, i, i2);
    }

    public String toString() {
        switch (this.f6828) {
            case 4:
                if (((C1681) this.f6827) == null) {
                    return Long.toBinaryString(this.f6829);
                }
                return ((C1681) this.f6827).toString() + "xx" + Long.toBinaryString(this.f6829);
            default:
                return super.toString();
        }
    }

    @Override // p171.InterfaceC2622
    /* renamed from: ʻٴ, reason: contains not printable characters */
    public boolean mo4572(byte[] bArr, int i, int i2, boolean z) {
        return ((InterfaceC2622) this.f6827).mo4572(bArr, i, i2, z);
    }

    @Override // p274.InterfaceC3486
    /* renamed from: ʼʼ, reason: contains not printable characters */
    public long mo4573() {
        return 0L;
    }

    @Override // p274.InterfaceC3486
    /* renamed from: ʽ, reason: contains not printable characters */
    public long mo4574(long j) {
        return ((C2628) this.f6827).f9952[(int) j] - this.f6829;
    }

    @Override // p274.InterfaceC3486
    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public C3613 mo4575(long j) {
        return new C3613(((C2628) this.f6827).f9950[(int) j], r1.f9953[r7], null);
    }

    @Override // p171.InterfaceC2622
    /* renamed from: ʾˋ, reason: contains not printable characters */
    public void mo4576(byte[] bArr, int i, int i2) {
        ((InterfaceC2622) this.f6827).mo4576(bArr, i, i2);
    }

    @Override // p171.InterfaceC2622
    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public long mo4577() {
        return ((InterfaceC2622) this.f6827).mo4577() - this.f6829;
    }

    @Override // p171.InterfaceC2622
    /* renamed from: ˆʾ, reason: contains not printable characters */
    public int mo4578(byte[] bArr, int i, int i2) {
        return ((InterfaceC2622) this.f6827).mo4578(bArr, i, i2);
    }

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public boolean m4579(int i) {
        if (i >= 64) {
            m4584();
            return ((C1681) this.f6827).m4579(i - 64);
        }
        long j = 1 << i;
        long j2 = this.f6829;
        boolean z = (j2 & j) != 0;
        long j3 = j2 & (~j);
        this.f6829 = j3;
        long j4 = j - 1;
        this.f6829 = (j3 & j4) | Long.rotateRight((~j4) & j3, 1);
        C1681 c1681 = (C1681) this.f6827;
        if (c1681 != null) {
            if (c1681.m4593(0)) {
                m4581(63);
            }
            ((C1681) this.f6827).m4579(0);
        }
        return z;
    }

    @Override // p171.InterfaceC2622
    /* renamed from: ˈ, reason: contains not printable characters */
    public int mo4580(int i) {
        return ((InterfaceC2622) this.f6827).mo4580(i);
    }

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public void m4581(int i) {
        if (i < 64) {
            this.f6829 |= 1 << i;
        } else {
            m4584();
            ((C1681) this.f6827).m4581(i - 64);
        }
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public void m4582(int i) {
        if (i < 64) {
            this.f6829 &= ~(1 << i);
            return;
        }
        C1681 c1681 = (C1681) this.f6827;
        if (c1681 != null) {
            c1681.m4582(i - 64);
        }
    }

    @Override // p274.InterfaceC3486
    /* renamed from: ˉˆ, reason: contains not printable characters */
    public long mo4583(long j, long j2) {
        return 0L;
    }

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public void m4584() {
        if (((C1681) this.f6827) == null) {
            this.f6827 = new C1681();
        }
    }

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public int m4585(int i) {
        C1681 c1681 = (C1681) this.f6827;
        if (c1681 == null) {
            return i >= 64 ? Long.bitCount(this.f6829) : Long.bitCount(this.f6829 & ((1 << i) - 1));
        }
        if (i < 64) {
            return Long.bitCount(this.f6829 & ((1 << i) - 1));
        }
        return Long.bitCount(this.f6829) + c1681.m4585(i - 64);
    }

    @Override // p274.InterfaceC3486
    /* renamed from: ˏי, reason: contains not printable characters */
    public long mo4586(long j, long j2) {
        return -9223372036854775807L;
    }

    @Override // p171.InterfaceC2646
    /* renamed from: ˑﹳ */
    public void mo1133(InterfaceC2626 interfaceC2626) {
        ((InterfaceC2646) this.f6827).mo1133(new C1682(this, interfaceC2626, interfaceC2626));
    }

    @Override // p274.InterfaceC3486
    /* renamed from: ـˆ, reason: contains not printable characters */
    public boolean mo4587() {
        return true;
    }

    @Override // p220.InterfaceC3028
    /* renamed from: ٴʼ, reason: contains not printable characters */
    public /* synthetic */ void mo4588(Exception exc) {
        ٴʼ r3 = (ٴʼ) this.f6827;
        ((AtomicLong) r3.ˈٴ).set(this.f6829);
    }

    @Override // p274.InterfaceC3486
    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public long mo4589(long j, long j2) {
        return ((C2628) this.f6827).f9954;
    }

    @Override // p171.InterfaceC2622
    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public void mo4590(int i) {
        ((InterfaceC2622) this.f6827).mo4590(i);
    }

    @Override // p274.InterfaceC3486
    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public long mo4591(long j) {
        return ((C2628) this.f6827).f9954;
    }

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public void m4592(int i, boolean z) {
        if (i >= 64) {
            m4584();
            ((C1681) this.f6827).m4592(i - 64, z);
            return;
        }
        long j = this.f6829;
        boolean z2 = (Long.MIN_VALUE & j) != 0;
        long j2 = (1 << i) - 1;
        this.f6829 = ((j & (~j2)) << 1) | (j & j2);
        if (z) {
            m4581(i);
        } else {
            m4582(i);
        }
        if (z2 || ((C1681) this.f6827) != null) {
            m4584();
            ((C1681) this.f6827).m4592(0, z2);
        }
    }

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public boolean m4593(int i) {
        if (i < 64) {
            return (this.f6829 & (1 << i)) != 0;
        }
        m4584();
        return ((C1681) this.f6827).m4593(i - 64);
    }

    @Override // p274.InterfaceC3486
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public long mo4594(long j, long j2) {
        return ((C2628) this.f6827).f9951[(int) j];
    }

    @Override // p171.InterfaceC2622
    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public void mo4595(int i) {
        ((InterfaceC2622) this.f6827).mo4595(i);
    }

    /* renamed from: ᵔי, reason: contains not printable characters */
    public C2950 m4596() {
        ArrayList arrayList = new ArrayList(20);
        while (true) {
            String mo5797 = ((InterfaceC2592) this.f6827).mo5797(this.f6829);
            this.f6829 -= mo5797.length();
            if (mo5797.length() == 0) {
                return new C2950((String[]) arrayList.toArray(new String[0]));
            }
            int m10118 = AbstractC5143.m10118(mo5797, ':', 1, 4);
            if (m10118 != -1) {
                String substring = mo5797.substring(0, m10118);
                String substring2 = mo5797.substring(m10118 + 1);
                arrayList.add(substring);
                arrayList.add(AbstractC5143.m10114(substring2).toString());
            } else if (mo5797.charAt(0) == ':') {
                String substring3 = mo5797.substring(1);
                arrayList.add("");
                arrayList.add(AbstractC5143.m10114(substring3).toString());
            } else {
                arrayList.add("");
                arrayList.add(AbstractC5143.m10114(mo5797).toString());
            }
        }
    }

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public void m4597() {
        this.f6829 = 0L;
        C1681 c1681 = (C1681) this.f6827;
        if (c1681 != null) {
            c1681.m4597();
        }
    }

    @Override // p171.InterfaceC2646
    /* renamed from: ᵔᵢ */
    public void mo1137() {
        ((InterfaceC2646) this.f6827).mo1137();
    }

    @Override // p171.InterfaceC2646
    /* renamed from: ᵔﹳ */
    public InterfaceC2639 mo1138(int i, int i2) {
        return ((InterfaceC2646) this.f6827).mo1138(i, i2);
    }

    @Override // p274.InterfaceC3486
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public long mo4598(long j, long j2) {
        C2628 c2628 = (C2628) this.f6827;
        return AbstractC3712.m7783(c2628.f9952, j + this.f6829, true);
    }

    @Override // p171.InterfaceC2622
    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public boolean mo4599(int i, boolean z) {
        return ((InterfaceC2622) this.f6827).mo4599(i, true);
    }

    @Override // p171.InterfaceC2622
    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public void mo4600() {
        ((InterfaceC2622) this.f6827).mo4600();
    }

    @Override // p171.InterfaceC2622
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public boolean mo4601(byte[] bArr, int i, int i2, boolean z) {
        return ((InterfaceC2622) this.f6827).mo4601(bArr, 0, i2, z);
    }
}

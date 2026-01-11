package p004;

import android.support.v4.media.session.ⁱˊ;
import java.util.Arrays;
import p171.C2645;
import p171.InterfaceC2621;
import p171.InterfaceC2622;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p305.C3724;
import p305.C3732;

/* renamed from: ʻˆ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0815 implements InterfaceC2621 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public Object f3476;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public int f3477;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public Object f3478;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int f3479;

    public C0815() {
        this.f3476 = new long[10];
        this.f3478 = new Object[10];
    }

    public C0815(int i, float[] fArr, float[] fArr2, int i2) {
        this.f3477 = i;
        AbstractC3731.m7849(((long) fArr.length) * 2 == ((long) fArr2.length) * 3);
        this.f3476 = fArr;
        this.f3478 = fArr2;
        this.f3479 = i2;
    }

    public C0815(C0815 c0815) {
        float[] fArr = (float[]) c0815.f3476;
        this.f3477 = fArr.length / 3;
        this.f3476 = AbstractC3731.m7861(fArr);
        this.f3478 = AbstractC3731.m7861((float[]) c0815.f3478);
        int i = c0815.f3479;
        if (i == 1) {
            this.f3479 = 5;
        } else if (i != 2) {
            this.f3479 = 4;
        } else {
            this.f3479 = 6;
        }
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public Object m2958() {
        AbstractC3731.m7857(this.f3479 > 0);
        Object[] objArr = (Object[]) this.f3478;
        int i = this.f3477;
        Object obj = objArr[i];
        objArr[i] = null;
        this.f3477 = (i + 1) % objArr.length;
        this.f3479--;
        return obj;
    }

    @Override // p171.InterfaceC2621
    /* renamed from: ʽ, reason: contains not printable characters */
    public C2645 mo2959(InterfaceC2622 interfaceC2622, long j) {
        long j2;
        long position = interfaceC2622.getPosition();
        int min = (int) Math.min(this.f3479, interfaceC2622.getLength() - position);
        C3732 c3732 = (C3732) this.f3478;
        c3732.m7886(min);
        interfaceC2622.mo4576(c3732.f14534, 0, min);
        int i = c3732.f14532;
        long j3 = -1;
        long j4 = -1;
        long j5 = -9223372036854775807L;
        while (true) {
            if (c3732.m7904() < 188) {
                j2 = -9223372036854775807L;
                break;
            }
            byte[] bArr = c3732.f14534;
            int i2 = c3732.f14533;
            while (true) {
                if (i2 >= i) {
                    j2 = -9223372036854775807L;
                    break;
                }
                j2 = -9223372036854775807L;
                if (bArr[i2] == 71) {
                    break;
                }
                i2++;
            }
            int i3 = i2 + 188;
            if (i3 > i) {
                break;
            }
            long j6 = ⁱˊ.ˉˆ(c3732, i2, this.f3477);
            if (j6 != j2) {
                long m7831 = ((C3724) this.f3476).m7831(j6);
                if (m7831 > j) {
                    return j5 == j2 ? new C2645(-1, m7831, position) : new C2645(0, -9223372036854775807L, position + j4);
                }
                if (100000 + m7831 > j) {
                    return new C2645(0, -9223372036854775807L, position + i2);
                }
                j5 = m7831;
                j4 = i2;
            }
            c3732.m7896(i3);
            j3 = i3;
        }
        return j5 != j2 ? new C2645(-2, j5, position + j3) : C2645.f10029;
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public synchronized int m2960() {
        return this.f3479;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public void m2961() {
        int length = ((Object[]) this.f3478).length;
        if (this.f3479 < length) {
            return;
        }
        int i = length * 2;
        long[] jArr = new long[i];
        Object[] objArr = new Object[i];
        int i2 = this.f3477;
        int i3 = length - i2;
        System.arraycopy((long[]) this.f3476, i2, jArr, 0, i3);
        System.arraycopy((Object[]) this.f3478, this.f3477, objArr, 0, i3);
        int i4 = this.f3477;
        if (i4 > 0) {
            System.arraycopy((long[]) this.f3476, 0, jArr, i3, i4);
            System.arraycopy((Object[]) this.f3478, 0, objArr, i3, this.f3477);
        }
        this.f3476 = jArr;
        this.f3478 = objArr;
        this.f3477 = 0;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public Object m2962(boolean z, long j) {
        Object obj = null;
        long j2 = Long.MAX_VALUE;
        while (this.f3479 > 0) {
            long j3 = j - ((long[]) this.f3476)[this.f3477];
            if (j3 < 0 && (z || (-j3) >= j2)) {
                break;
            }
            obj = m2958();
            j2 = j3;
        }
        return obj;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public synchronized Object m2963() {
        return this.f3479 == 0 ? null : m2958();
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public synchronized Object m2964(long j) {
        return m2962(true, j);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public synchronized void m2965() {
        this.f3477 = 0;
        this.f3479 = 0;
        Arrays.fill((Object[]) this.f3478, (Object) null);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public synchronized void m2966(long j, Object obj) {
        if (this.f3479 > 0) {
            if (j <= ((long[]) this.f3476)[((this.f3477 + r0) - 1) % ((Object[]) this.f3478).length]) {
                m2965();
            }
        }
        m2961();
        int i = this.f3477;
        int i2 = this.f3479;
        Object[] objArr = (Object[]) this.f3478;
        int length = (i + i2) % objArr.length;
        ((long[]) this.f3476)[length] = j;
        objArr[length] = obj;
        this.f3479 = i2 + 1;
    }

    @Override // p171.InterfaceC2621
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public void mo2967() {
        C3732 c3732 = (C3732) this.f3478;
        byte[] bArr = AbstractC3712.f14480;
        c3732.getClass();
        c3732.m7897(bArr.length, bArr);
    }
}

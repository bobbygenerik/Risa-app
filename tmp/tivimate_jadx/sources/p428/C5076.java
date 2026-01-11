package p428;

import android.os.SystemClock;
import java.util.ArrayList;
import java.util.List;
import p017.AbstractC0993;
import p017.AbstractC1004;
import p017.C0968;
import p055.C1474;
import p055.C1495;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p305.C3721;
import p364.C4446;
import p364.InterfaceC4440;
import p372.AbstractC4526;
import p372.InterfaceC4518;

/* renamed from: ﹶʽ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5076 extends AbstractC5060 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final long f19113;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final C3721 f19114;

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public AbstractC4526 f19115;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final long f19116;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final float f19117;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final AbstractC0993 f19118;

    /* renamed from: ˏי, reason: contains not printable characters */
    public long f19119;

    /* renamed from: יـ, reason: contains not printable characters */
    public int f19120;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final int f19121;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final InterfaceC4440 f19122;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final float f19123;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final long f19124;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public float f19125;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public int f19126;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final int f19127;

    public C5076(C1474 c1474, int[] iArr, InterfaceC4440 interfaceC4440, long j, long j2, long j3, float f, AbstractC0993 abstractC0993) {
        super(c1474, iArr);
        if (j3 < j) {
            AbstractC3731.m7850("AdaptiveTrackSelection", "Adjusting minDurationToRetainAfterDiscardMs to be at least minDurationForQualityIncreaseMs");
            j3 = j;
        }
        this.f19122 = interfaceC4440;
        this.f19124 = j * 1000;
        this.f19113 = j2 * 1000;
        this.f19116 = j3 * 1000;
        this.f19121 = 1279;
        this.f19127 = 719;
        this.f19117 = 0.7f;
        this.f19123 = f;
        this.f19118 = AbstractC0993.m3264(abstractC0993);
        this.f19114 = C3721.f14496;
        this.f19125 = 1.0f;
        this.f19120 = 0;
        this.f19119 = -9223372036854775807L;
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public static void m9976(ArrayList arrayList, long[] jArr) {
        long j = 0;
        for (long j2 : jArr) {
            j += j2;
        }
        for (int i = 0; i < arrayList.size(); i++) {
            C0968 c0968 = (C0968) arrayList.get(i);
            if (c0968 != null) {
                c0968.m3239(new C5077(j, jArr[i]));
            }
        }
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public static long m9977(List list) {
        if (!list.isEmpty()) {
            AbstractC4526 abstractC4526 = (AbstractC4526) AbstractC1004.m3281(list);
            long j = abstractC4526.f16904;
            if (j != -9223372036854775807L) {
                long j2 = abstractC4526.f16902;
                if (j2 != -9223372036854775807L) {
                    return j2 - j;
                }
            }
        }
        return -9223372036854775807L;
    }

    @Override // p428.InterfaceC5067
    /* renamed from: ˉʿ */
    public final int mo9760() {
        return this.f19120;
    }

    @Override // p428.AbstractC5060, p428.InterfaceC5067
    /* renamed from: ˑﹳ */
    public final void mo9763() {
        this.f19119 = -9223372036854775807L;
        this.f19115 = null;
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final int m9978(long j) {
        long j2;
        C4446 c4446 = (C4446) this.f19122;
        synchronized (c4446) {
            j2 = c4446.f16630;
        }
        long j3 = ((float) j2) * this.f19117;
        this.f19122.getClass();
        long j4 = ((float) j3) / this.f19125;
        if (!this.f19118.isEmpty()) {
            int i = 1;
            while (i < this.f19118.size() - 1 && ((C5077) this.f19118.get(i)).f19129 < j4) {
                i++;
            }
            C5077 c5077 = (C5077) this.f19118.get(i - 1);
            C5077 c50772 = (C5077) this.f19118.get(i);
            long j5 = c5077.f19129;
            float f = ((float) (j4 - j5)) / ((float) (c50772.f19129 - j5));
            j4 = c5077.f19128 + (f * ((float) (c50772.f19128 - r1)));
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.f19049; i3++) {
            if (j == Long.MIN_VALUE || !mo9756(i3, j)) {
                if (this.f19047[i3].f5908 <= j4) {
                    return i3;
                }
                i2 = i3;
            }
        }
        return i2;
    }

    @Override // p428.InterfaceC5067
    /* renamed from: ٴﹶ */
    public final void mo9765(long j, long j2, long j3, List list, InterfaceC4518[] interfaceC4518Arr) {
        long m9977;
        this.f19114.getClass();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        int i = this.f19126;
        if (i >= interfaceC4518Arr.length || !interfaceC4518Arr[i].next()) {
            int length = interfaceC4518Arr.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    m9977 = m9977(list);
                    break;
                }
                InterfaceC4518 interfaceC4518 = interfaceC4518Arr[i2];
                if (interfaceC4518.next()) {
                    m9977 = interfaceC4518.mo7010() - interfaceC4518.mo7009();
                    break;
                }
                i2++;
            }
        } else {
            InterfaceC4518 interfaceC45182 = interfaceC4518Arr[this.f19126];
            m9977 = interfaceC45182.mo7010() - interfaceC45182.mo7009();
        }
        int i3 = this.f19120;
        if (i3 == 0) {
            this.f19120 = 1;
            this.f19126 = m9978(elapsedRealtime);
            return;
        }
        int i4 = this.f19126;
        int mo9755 = list.isEmpty() ? -1 : mo9755(((AbstractC4526) AbstractC1004.m3281(list)).f16901);
        if (mo9755 != -1) {
            i3 = ((AbstractC4526) AbstractC1004.m3281(list)).f16906;
            i4 = mo9755;
        }
        int m9978 = m9978(elapsedRealtime);
        if (m9978 != i4 && !mo9756(i4, elapsedRealtime)) {
            C1495[] c1495Arr = this.f19047;
            C1495 c1495 = c1495Arr[i4];
            C1495 c14952 = c1495Arr[m9978];
            long j4 = this.f19124;
            if (j3 != -9223372036854775807L) {
                j4 = Math.min(((float) (m9977 != -9223372036854775807L ? j3 - m9977 : j3)) * this.f19123, j4);
            }
            int i5 = c14952.f5908;
            int i6 = c1495.f5908;
            if ((i5 > i6 && j2 < j4) || (i5 < i6 && j2 >= this.f19113)) {
                m9978 = i4;
            }
        }
        if (m9978 != i4) {
            i3 = 3;
        }
        this.f19120 = i3;
        this.f19126 = m9978;
    }

    @Override // p428.AbstractC5060, p428.InterfaceC5067
    /* renamed from: ᵎﹶ */
    public final int mo9766(long j, List list) {
        int i;
        int i2;
        this.f19114.getClass();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long j2 = this.f19119;
        if (j2 != -9223372036854775807L && elapsedRealtime - j2 < 1000 && (list.isEmpty() || ((AbstractC4526) AbstractC1004.m3281(list)).equals(this.f19115))) {
            return list.size();
        }
        this.f19119 = elapsedRealtime;
        this.f19115 = list.isEmpty() ? null : (AbstractC4526) AbstractC1004.m3281(list);
        if (list.isEmpty()) {
            return 0;
        }
        int size = list.size();
        long m7777 = AbstractC3712.m7777(((AbstractC4526) list.get(size - 1)).f16904 - j, this.f19125);
        long j3 = this.f19116;
        if (m7777 >= j3) {
            m9977(list);
            C1495 c1495 = this.f19047[m9978(elapsedRealtime)];
            for (int i3 = 0; i3 < size; i3++) {
                AbstractC4526 abstractC4526 = (AbstractC4526) list.get(i3);
                C1495 c14952 = abstractC4526.f16901;
                if (AbstractC3712.m7777(abstractC4526.f16904 - j, this.f19125) >= j3 && c14952.f5908 < c1495.f5908 && (i = c14952.f5899) != -1 && i <= this.f19127 && (i2 = c14952.f5905) != -1 && i2 <= this.f19121 && i < c1495.f5899) {
                    return i3;
                }
            }
        }
        return size;
    }

    @Override // p428.InterfaceC5067
    /* renamed from: ᵔʾ */
    public final int mo9767() {
        return this.f19126;
    }

    @Override // p428.AbstractC5060, p428.InterfaceC5067
    /* renamed from: ᵔᵢ */
    public final void mo9768() {
        this.f19115 = null;
    }

    @Override // p428.AbstractC5060, p428.InterfaceC5067
    /* renamed from: ᵔﹳ */
    public final void mo9769(float f) {
        this.f19125 = f;
    }

    @Override // p428.InterfaceC5067
    /* renamed from: ﹳᐧ */
    public final Object mo9772() {
        return null;
    }
}

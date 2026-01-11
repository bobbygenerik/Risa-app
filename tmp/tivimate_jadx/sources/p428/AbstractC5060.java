package p428;

import android.os.SystemClock;
import com.parse.ʼᐧ;
import java.util.Arrays;
import java.util.List;
import p055.C1474;
import p055.C1495;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p372.AbstractC4519;

/* renamed from: ﹶʽ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC5060 implements InterfaceC5067 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int[] f19046;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C1495[] f19047;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final long[] f19048;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f19049;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C1474 f19050;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f19051;

    public AbstractC5060(C1474 c1474, int[] iArr) {
        int i = 0;
        AbstractC3731.m7857(iArr.length > 0);
        c1474.getClass();
        this.f19050 = c1474;
        int length = iArr.length;
        this.f19049 = length;
        this.f19047 = new C1495[length];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            this.f19047[i2] = c1474.f5767[iArr[i2]];
        }
        Arrays.sort(this.f19047, new ʼᐧ(16));
        this.f19046 = new int[this.f19049];
        while (true) {
            int i3 = this.f19049;
            if (i >= i3) {
                this.f19048 = new long[i3];
                return;
            } else {
                this.f19046[i] = c1474.m4280(this.f19047[i]);
                i++;
            }
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            AbstractC5060 abstractC5060 = (AbstractC5060) obj;
            if (this.f19050.equals(abstractC5060.f19050) && Arrays.equals(this.f19046, abstractC5060.f19046)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        if (this.f19051 == 0) {
            this.f19051 = Arrays.hashCode(this.f19046) + (System.identityHashCode(this.f19050) * 31);
        }
        return this.f19051;
    }

    @Override // p428.InterfaceC5067
    public final int length() {
        return this.f19046.length;
    }

    @Override // p428.InterfaceC5067
    /* renamed from: ʼˎ */
    public final int mo9754() {
        return this.f19046[mo9767()];
    }

    @Override // p428.InterfaceC5067
    /* renamed from: ʼᐧ */
    public final int mo9755(C1495 c1495) {
        for (int i = 0; i < this.f19049; i++) {
            if (this.f19047[i] == c1495) {
                return i;
            }
        }
        return -1;
    }

    @Override // p428.InterfaceC5067
    /* renamed from: ʽ */
    public final boolean mo9756(int i, long j) {
        return this.f19048[i] > j;
    }

    @Override // p428.InterfaceC5067
    /* renamed from: ʽﹳ */
    public final int mo9757(int i) {
        for (int i2 = 0; i2 < this.f19049; i2++) {
            if (this.f19046[i2] == i) {
                return i2;
            }
        }
        return -1;
    }

    @Override // p428.InterfaceC5067
    /* renamed from: ˆʾ */
    public final C1474 mo9758() {
        return this.f19050;
    }

    @Override // p428.InterfaceC5067
    /* renamed from: ˈ */
    public final C1495 mo9759(int i) {
        return this.f19047[i];
    }

    @Override // p428.InterfaceC5067
    /* renamed from: ˉˆ */
    public final boolean mo9761(int i, long j) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        boolean mo9756 = mo9756(i, elapsedRealtime);
        int i2 = 0;
        while (i2 < this.f19049 && !mo9756) {
            mo9756 = (i2 == i || mo9756(i2, elapsedRealtime)) ? false : true;
            i2++;
        }
        if (!mo9756) {
            return false;
        }
        long[] jArr = this.f19048;
        long j2 = jArr[i];
        String str = AbstractC3712.f14481;
        long j3 = elapsedRealtime + j;
        if (((j ^ j3) & (elapsedRealtime ^ j3)) < 0) {
            j3 = Long.MAX_VALUE;
        }
        jArr[i] = Math.max(j2, j3);
        return true;
    }

    @Override // p428.InterfaceC5067
    /* renamed from: ˏי */
    public final /* synthetic */ void mo9762() {
    }

    @Override // p428.InterfaceC5067
    /* renamed from: ˑﹳ */
    public void mo9763() {
    }

    @Override // p428.InterfaceC5067
    /* renamed from: יـ */
    public final /* synthetic */ void mo9764() {
    }

    @Override // p428.InterfaceC5067
    /* renamed from: ᵎﹶ */
    public int mo9766(long j, List list) {
        return list.size();
    }

    @Override // p428.InterfaceC5067
    /* renamed from: ᵔᵢ */
    public void mo9768() {
    }

    @Override // p428.InterfaceC5067
    /* renamed from: ᵔﹳ */
    public void mo9769(float f) {
    }

    @Override // p428.InterfaceC5067
    /* renamed from: ⁱˊ */
    public final /* synthetic */ boolean mo9770(long j, AbstractC4519 abstractC4519, List list) {
        return false;
    }

    @Override // p428.InterfaceC5067
    /* renamed from: ﹳٴ */
    public final void mo9771(boolean z) {
    }

    @Override // p428.InterfaceC5067
    /* renamed from: ﾞʻ */
    public final C1495 mo9773() {
        return this.f19047[mo9767()];
    }

    @Override // p428.InterfaceC5067
    /* renamed from: ﾞᴵ */
    public final int mo9774(int i) {
        return this.f19046[i];
    }
}

package p251;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.ArrayList;
import p055.C1459;
import p055.C1476;
import p055.C1482;
import p055.C1495;
import p055.InterfaceC1465;
import p112.C1962;
import p262.C3433;
import p283.C3569;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p307.AbstractC3740;
import p392.AbstractC4671;
import p392.C4644;
import p392.SurfaceHolderCallbackC4642;
import p420.C4987;
import ˈˋ.ʾˊ;
import ᐧˎ.ˉʿ;

/* renamed from: יˉ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3307 extends AbstractC4671 implements Handler.Callback {

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public final C3308 f12724;

    /* renamed from: ʿ, reason: contains not printable characters */
    public boolean f12725;

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public long f12726;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public final C1962 f12727;

    /* renamed from: ˉـ, reason: contains not printable characters */
    public boolean f12728;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public final SurfaceHolderCallbackC4642 f12729;

    /* renamed from: ᐧﾞ, reason: contains not printable characters */
    public long f12730;

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public ʾˊ f12731;

    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public C1476 f12732;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public final Handler f12733;

    public C3307(SurfaceHolderCallbackC4642 surfaceHolderCallbackC4642, Looper looper) {
        super(5);
        this.f12729 = surfaceHolderCallbackC4642;
        this.f12733 = looper == null ? null : new Handler(looper, this);
        this.f12724 = C3308.f12734;
        this.f12727 = new C1962();
        this.f12730 = -9223372036854775807L;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        if (message.what != 1) {
            throw new IllegalStateException();
        }
        m7118((C1476) message.obj);
        return true;
    }

    @Override // p392.AbstractC4671
    /* renamed from: ʻٴ */
    public final void mo756(C1495[] c1495Arr, long j, long j2, C4987 c4987) {
        this.f12731 = this.f12724.m7120(c1495Arr[0]);
        C1476 c1476 = this.f12732;
        if (c1476 != null) {
            long j3 = c1476.f5772;
            long j4 = (this.f12730 + j3) - j2;
            if (j3 != j4) {
                c1476 = new C1476(j4, c1476.f5773);
            }
            this.f12732 = c1476;
        }
        this.f12730 = j2;
    }

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final void m7116(C1476 c1476, ArrayList arrayList) {
        int i = 0;
        while (true) {
            InterfaceC1465[] interfaceC1465Arr = c1476.f5773;
            if (i >= interfaceC1465Arr.length) {
                return;
            }
            C1495 mo2791 = interfaceC1465Arr[i].mo2791();
            if (mo2791 != null) {
                C3308 c3308 = this.f12724;
                if (c3308.m7119(mo2791)) {
                    ʾˊ m7120 = c3308.m7120(mo2791);
                    byte[] mo2790 = interfaceC1465Arr[i].mo2790();
                    mo2790.getClass();
                    C1962 c1962 = this.f12727;
                    c1962.mo3629();
                    c1962.m9843(mo2790.length);
                    c1962.f18672.put(mo2790);
                    c1962.m9845();
                    C1476 c14762 = m7120.ﾞʻ(c1962);
                    if (c14762 != null) {
                        m7116(c14762, arrayList);
                    }
                    i++;
                }
            }
            arrayList.add(interfaceC1465Arr[i]);
            i++;
        }
    }

    @Override // p392.AbstractC4671
    /* renamed from: ʾˋ */
    public final int mo762(C1495 c1495) {
        if (this.f12724.m7119(c1495)) {
            return AbstractC3740.m7927(c1495.f5911 == 0 ? 4 : 2, 0, 0, 0);
        }
        return AbstractC3740.m7927(0, 0, 0, 0);
    }

    @Override // p392.AbstractC4671
    /* renamed from: ʾᵎ */
    public final void mo763(long j, long j2) {
        boolean z = true;
        while (z) {
            if (!this.f12728 && this.f12732 == null) {
                C1962 c1962 = this.f12727;
                c1962.mo3629();
                C3433 c3433 = this.f17503;
                c3433.m7345();
                int m9273 = m9273(c3433, c1962, 0);
                if (m9273 == -4) {
                    if (c1962.m3177(4)) {
                        this.f12728 = true;
                    } else if (c1962.f18671 >= this.f17519) {
                        c1962.f7805 = this.f12726;
                        c1962.m9845();
                        ʾˊ r1 = this.f12731;
                        String str = AbstractC3712.f14481;
                        C1476 c1476 = r1.ﾞʻ(c1962);
                        if (c1476 != null) {
                            ArrayList arrayList = new ArrayList(c1476.f5773.length);
                            m7116(c1476, arrayList);
                            if (!arrayList.isEmpty()) {
                                this.f12732 = new C1476(m7117(c1962.f18671), (InterfaceC1465[]) arrayList.toArray(new InterfaceC1465[0]));
                            }
                        }
                    }
                } else if (m9273 == -5) {
                    C1495 c1495 = (C1495) c3433.f13456;
                    c1495.getClass();
                    this.f12726 = c1495.f5920;
                }
            }
            C1476 c14762 = this.f12732;
            if (c14762 == null || c14762.f5772 > m7117(j)) {
                z = false;
            } else {
                C1476 c14763 = this.f12732;
                Handler handler = this.f12733;
                if (handler != null) {
                    handler.obtainMessage(1, c14763).sendToTarget();
                } else {
                    m7118(c14763);
                }
                this.f12732 = null;
                z = true;
            }
            if (this.f12728 && this.f12732 == null) {
                this.f12725 = true;
            }
        }
    }

    @Override // p392.AbstractC4671
    /* renamed from: ˆʾ */
    public final String mo764() {
        return "MetadataRenderer";
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final long m7117(long j) {
        AbstractC3731.m7857(j != -9223372036854775807L);
        AbstractC3731.m7857(this.f12730 != -9223372036854775807L);
        return j - this.f12730;
    }

    @Override // p392.AbstractC4671
    /* renamed from: ˉʿ */
    public final boolean mo766() {
        return true;
    }

    @Override // p392.AbstractC4671
    /* renamed from: ˉˆ */
    public final void mo767() {
        this.f12732 = null;
        this.f12731 = null;
        this.f12730 = -9223372036854775807L;
    }

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final void m7118(C1476 c1476) {
        SurfaceHolderCallbackC4642 surfaceHolderCallbackC4642 = this.f12729;
        C4644 c4644 = surfaceHolderCallbackC4642.f17344;
        C1482 c1482 = c4644.f17410;
        ˉʿ r3 = c4644.f17365;
        C1459 m4292 = c1482.m4292();
        int i = 0;
        while (true) {
            InterfaceC1465[] interfaceC1465Arr = c1476.f5773;
            if (i >= interfaceC1465Arr.length) {
                break;
            }
            interfaceC1465Arr[i].mo2792(m4292);
            i++;
        }
        c4644.f17410 = new C1482(m4292);
        C1482 m9256 = c4644.m9256();
        if (!m9256.equals(c4644.f17395)) {
            c4644.f17395 = m9256;
            r3.ˈ(14, new C3569(22, surfaceHolderCallbackC4642));
        }
        r3.ˈ(28, new C3569(23, c1476));
        r3.ʽ();
    }

    @Override // p392.AbstractC4671
    /* renamed from: ᵔﹳ */
    public final void mo779(boolean z, long j) {
        this.f12732 = null;
        this.f12728 = false;
        this.f12725 = false;
    }

    @Override // p392.AbstractC4671
    /* renamed from: ﾞʻ */
    public final boolean mo781() {
        return this.f12725;
    }
}

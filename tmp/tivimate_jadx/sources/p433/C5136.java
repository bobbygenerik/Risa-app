package p433;

import android.os.SystemClock;
import java.util.List;
import p372.InterfaceC4518;
import p428.AbstractC5060;

/* renamed from: ﹶˎ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5136 extends AbstractC5060 {

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public int f19407;

    @Override // p428.InterfaceC5067
    /* renamed from: ˉʿ */
    public final int mo9760() {
        return 0;
    }

    @Override // p428.InterfaceC5067
    /* renamed from: ٴﹶ */
    public final void mo9765(long j, long j2, long j3, List list, InterfaceC4518[] interfaceC4518Arr) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (mo9756(this.f19407, elapsedRealtime)) {
            for (int i = this.f19049 - 1; i >= 0; i--) {
                if (!mo9756(i, elapsedRealtime)) {
                    this.f19407 = i;
                    return;
                }
            }
            throw new IllegalStateException();
        }
    }

    @Override // p428.InterfaceC5067
    /* renamed from: ᵔʾ */
    public final int mo9767() {
        return this.f19407;
    }

    @Override // p428.InterfaceC5067
    /* renamed from: ﹳᐧ */
    public final Object mo9772() {
        return null;
    }
}

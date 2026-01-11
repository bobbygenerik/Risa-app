package p409;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import java.util.Map;
import java.util.concurrent.Executor;
import p220.AbstractC3033;
import p220.C3029;
import p220.C3031;
import p220.C3032;
import p220.InterfaceC3026;
import p229.C3125;
import p262.C3433;
import p319.C3926;
import p366.C4483;
import ٴʽ.יـ;

/* renamed from: ﹳˊ.ᵔﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4853 extends AbstractC4845 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C3032 f18193;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C4483 f18194;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final יـ f18195;

    public C4853(יـ r2, C3032 c3032, C4483 c4483) {
        super(2);
        this.f18193 = c3032;
        this.f18195 = r2;
        this.f18194 = c4483;
        if (r2.ﹳٴ) {
            throw new IllegalArgumentException("Best-effort write calls cannot pass methods that should auto-resolve missing features.");
        }
    }

    @Override // p409.AbstractC4845
    /* renamed from: ʽ */
    public final void mo9659(Status status) {
        this.f18194.getClass();
        this.f18193.m6578(status.f1720 != null ? new ApiException(status) : new ApiException(status));
    }

    @Override // p409.AbstractC4845
    /* renamed from: ˈ */
    public final void mo9660(Exception exc) {
        this.f18193.m6578(exc);
    }

    @Override // p409.AbstractC4845
    /* renamed from: ˑﹳ */
    public final void mo9661(C4840 c4840) {
        C3032 c3032 = this.f18193;
        try {
            this.f18195.ﹳٴ(c4840.f18153, c3032);
        } catch (DeadObjectException e) {
            throw e;
        } catch (RemoteException e2) {
            mo9659(AbstractC4845.m9658(e2));
        } catch (RuntimeException e3) {
            c3032.m6578(e3);
        }
    }

    @Override // p409.AbstractC4845
    /* renamed from: ⁱˊ */
    public final C3926[] mo9662(C4840 c4840) {
        return (C3926[]) this.f18195.ⁱˊ;
    }

    @Override // p409.AbstractC4845
    /* renamed from: ﹳٴ */
    public final boolean mo9663(C4840 c4840) {
        return this.f18195.ﹳٴ;
    }

    @Override // p409.AbstractC4845
    /* renamed from: ﾞᴵ */
    public final void mo9664(C3125 c3125, boolean z) {
        Boolean valueOf = Boolean.valueOf(z);
        Map map = (Map) c3125.f11941;
        C3032 c3032 = this.f18193;
        map.put(c3032, valueOf);
        C3029 c3029 = c3032.f11560;
        C3433 c3433 = new C3433(c3125, c3032, 16, false);
        c3029.getClass();
        c3029.f11553.m1588(new C3031((Executor) AbstractC3033.f11562, (InterfaceC3026) c3433));
        c3029.m6568();
    }
}

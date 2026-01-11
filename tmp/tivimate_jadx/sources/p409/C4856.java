package p409;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import p220.C3032;
import p229.C3125;
import p319.C3926;

/* renamed from: ﹳˊ.ﹳᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4856 extends AbstractC4845 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C3032 f18200;

    public C4856(C3032 c3032) {
        super(4);
        this.f18200 = c3032;
    }

    @Override // p409.AbstractC4845
    /* renamed from: ʽ */
    public final void mo9659(Status status) {
        this.f18200.m6578(new ApiException(status));
    }

    @Override // p409.AbstractC4845
    /* renamed from: ˈ */
    public final void mo9660(Exception exc) {
        this.f18200.m6578(exc);
    }

    @Override // p409.AbstractC4845
    /* renamed from: ˑﹳ */
    public final void mo9661(C4840 c4840) {
        try {
            m9667(c4840);
        } catch (DeadObjectException e) {
            mo9659(AbstractC4845.m9658(e));
            throw e;
        } catch (RemoteException e2) {
            mo9659(AbstractC4845.m9658(e2));
        } catch (RuntimeException e3) {
            this.f18200.m6578(e3);
        }
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void m9667(C4840 c4840) {
        if (c4840.f18149.remove(null) != null) {
            throw new ClassCastException();
        }
        this.f18200.m6577(Boolean.FALSE);
    }

    @Override // p409.AbstractC4845
    /* renamed from: ⁱˊ */
    public final C3926[] mo9662(C4840 c4840) {
        if (c4840.f18149.get(null) == null) {
            return null;
        }
        throw new ClassCastException();
    }

    @Override // p409.AbstractC4845
    /* renamed from: ﹳٴ */
    public final boolean mo9663(C4840 c4840) {
        if (c4840.f18149.get(null) == null) {
            return false;
        }
        throw new ClassCastException();
    }

    @Override // p409.AbstractC4845
    /* renamed from: ﾞᴵ */
    public final /* bridge */ /* synthetic */ void mo9664(C3125 c3125, boolean z) {
    }
}

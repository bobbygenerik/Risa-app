package p409;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import p229.C3125;
import p319.C3926;

/* renamed from: ﹳˊ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4845 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f18186;

    public AbstractC4845(int i) {
        this.f18186 = i;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static Status m9658(RemoteException remoteException) {
        return new Status(19, remoteException.getClass().getSimpleName() + ": " + remoteException.getLocalizedMessage(), null, null);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public abstract void mo9659(Status status);

    /* renamed from: ˈ, reason: contains not printable characters */
    public abstract void mo9660(Exception exc);

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public abstract void mo9661(C4840 c4840);

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public abstract C3926[] mo9662(C4840 c4840);

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public abstract boolean mo9663(C4840 c4840);

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public abstract void mo9664(C3125 c3125, boolean z);
}

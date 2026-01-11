package p296;

import android.accounts.Account;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.internal.measurement.AbstractC0292;
import p195.AbstractC2888;
import p319.C3926;
import p339.AbstractC4228;
import ˋˋ.ᵎˊ;

/* renamed from: ٴﾞ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3682 extends AbstractC4228 {
    public static final Parcelable.Creator<C3682> CREATOR = new ᵎˊ(24);

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public static final Scope[] f14408 = new Scope[0];

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public static final C3926[] f14409 = new C3926[0];

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final int f14410;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f14411;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final boolean f14412;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public String f14413;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public Account f14414;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public Scope[] f14415;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public C3926[] f14416;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public Bundle f14417;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final int f14418;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public IBinder f14419;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final boolean f14420;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public C3926[] f14421;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final int f14422;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public final String f14423;

    public C3682(int i, int i2, int i3, String str, IBinder iBinder, Scope[] scopeArr, Bundle bundle, Account account, C3926[] c3926Arr, C3926[] c3926Arr2, boolean z, int i4, boolean z2, String str2) {
        Scope[] scopeArr2 = scopeArr == null ? f14408 : scopeArr;
        Bundle bundle2 = bundle == null ? new Bundle() : bundle;
        C3926[] c3926Arr3 = f14409;
        C3926[] c3926Arr4 = c3926Arr == null ? c3926Arr3 : c3926Arr;
        c3926Arr3 = c3926Arr2 != null ? c3926Arr2 : c3926Arr3;
        this.f14411 = i;
        this.f14418 = i2;
        this.f14410 = i3;
        if ("com.google.android.gms".equals(str)) {
            this.f14413 = "com.google.android.gms";
        } else {
            this.f14413 = str;
        }
        if (i < 2) {
            Account account2 = null;
            if (iBinder != null) {
                int i5 = AbstractBinderC3688.f14428;
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
                IInterface abstractC0292 = queryLocalInterface instanceof InterfaceC3684 ? (InterfaceC3684) queryLocalInterface : new AbstractC0292(iBinder, "com.google.android.gms.common.internal.IAccountAccessor", 2);
                long clearCallingIdentity = Binder.clearCallingIdentity();
                try {
                    C3672 c3672 = (C3672) abstractC0292;
                    Parcel m1301 = c3672.m1301(c3672.m1305(), 2);
                    Account account3 = (Account) AbstractC2888.m6390(m1301, Account.CREATOR);
                    m1301.recycle();
                    Binder.restoreCallingIdentity(clearCallingIdentity);
                    account2 = account3;
                } catch (RemoteException unused) {
                    Binder.restoreCallingIdentity(clearCallingIdentity);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(clearCallingIdentity);
                    throw th;
                }
            }
            this.f14414 = account2;
        } else {
            this.f14419 = iBinder;
            this.f14414 = account;
        }
        this.f14415 = scopeArr2;
        this.f14417 = bundle2;
        this.f14421 = c3926Arr4;
        this.f14416 = c3926Arr3;
        this.f14420 = z;
        this.f14422 = i4;
        this.f14412 = z2;
        this.f14423 = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        ᵎˊ.ﹳٴ(this, parcel, i);
    }
}

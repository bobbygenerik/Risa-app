package p120;

import android.os.Parcel;
import com.google.android.gms.internal.measurement.AbstractC0292;
import p088.BinderC1753;
import p088.InterfaceC1754;
import p195.AbstractC2888;

/* renamed from: ˈˆ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2007 extends AbstractC0292 {
    /* renamed from: ʼˈ, reason: contains not printable characters */
    public final InterfaceC1754 m4984(BinderC1753 binderC1753, String str, boolean z, long j) {
        Parcel m1305 = m1305();
        AbstractC2888.m6388(m1305, binderC1753);
        m1305.writeString(str);
        m1305.writeInt(z ? 1 : 0);
        m1305.writeLong(j);
        Parcel m1301 = m1301(m1305, 7);
        InterfaceC1754 m4714 = BinderC1753.m4714(m1301.readStrongBinder());
        m1301.recycle();
        return m4714;
    }

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public final InterfaceC1754 m4985(BinderC1753 binderC1753, String str, int i) {
        Parcel m1305 = m1305();
        AbstractC2888.m6388(m1305, binderC1753);
        m1305.writeString(str);
        m1305.writeInt(i);
        Parcel m1301 = m1301(m1305, 4);
        InterfaceC1754 m4714 = BinderC1753.m4714(m1301.readStrongBinder());
        m1301.recycle();
        return m4714;
    }

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public final InterfaceC1754 m4986(BinderC1753 binderC1753, String str, int i, BinderC1753 binderC17532) {
        Parcel m1305 = m1305();
        AbstractC2888.m6388(m1305, binderC1753);
        m1305.writeString(str);
        m1305.writeInt(i);
        AbstractC2888.m6388(m1305, binderC17532);
        Parcel m1301 = m1301(m1305, 8);
        InterfaceC1754 m4714 = BinderC1753.m4714(m1301.readStrongBinder());
        m1301.recycle();
        return m4714;
    }

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public final InterfaceC1754 m4987(BinderC1753 binderC1753, String str, int i) {
        Parcel m1305 = m1305();
        AbstractC2888.m6388(m1305, binderC1753);
        m1305.writeString(str);
        m1305.writeInt(i);
        Parcel m1301 = m1301(m1305, 2);
        InterfaceC1754 m4714 = BinderC1753.m4714(m1301.readStrongBinder());
        m1301.recycle();
        return m4714;
    }
}

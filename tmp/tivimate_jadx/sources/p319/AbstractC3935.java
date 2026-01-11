package p319;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamite.DynamiteModule$LoadingException;
import com.google.android.gms.internal.measurement.AbstractC0292;
import p088.BinderC1753;
import p120.C2010;
import p121.AbstractC2026;
import p195.AbstractC2888;
import p296.AbstractBinderC3674;
import p296.AbstractC3659;
import p296.C3676;
import p296.InterfaceC3665;

/* renamed from: ᴵˈ.ᵔﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3935 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static volatile InterfaceC3665 f15217;

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final Object f15218;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static Context f15219;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final BinderC3927 f15220;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final BinderC3927 f15221;

    static {
        new BinderC3927(0, AbstractBinderC3933.m8101("0\u0082\u0005È0\u0082\u0003° \u0003\u0002\u0001\u0002\u0002\u0014\u0010\u008ae\bsù/\u008eQí"));
        new BinderC3927(1, AbstractBinderC3933.m8101("0\u0082\u0006\u00040\u0082\u0003ì \u0003\u0002\u0001\u0002\u0002\u0014\u0003£²\u00ad×árÊkì"));
        f15221 = new BinderC3927(2, AbstractBinderC3933.m8101("0\u0082\u0004C0\u0082\u0003+ \u0003\u0002\u0001\u0002\u0002\t\u0000Âà\u0087FdJ0\u008d0"));
        f15220 = new BinderC3927(3, AbstractBinderC3933.m8101("0\u0082\u0004¨0\u0082\u0003\u0090 \u0003\u0002\u0001\u0002\u0002\t\u0000Õ\u0085¸l}ÓNõ0"));
        f15218 = new Object();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v8, types: [ٴﾞ.ʽﹳ] */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* renamed from: ʽ, reason: contains not printable characters */
    public static void m8107() {
        ?? r1;
        if (f15217 != null) {
            return;
        }
        AbstractC3659.m7687(f15219);
        synchronized (f15218) {
            try {
                if (f15217 == null) {
                    IBinder m4998 = C2010.m4991(f15219, C2010.f7892, "com.google.android.gms.googlecertificates").m4998("com.google.android.gms.common.GoogleCertificatesImpl");
                    int i = AbstractBinderC3674.f14370;
                    if (m4998 == null) {
                        r1 = 0;
                    } else {
                        IInterface queryLocalInterface = m4998.queryLocalInterface("com.google.android.gms.common.internal.IGoogleCertificatesApi");
                        r1 = queryLocalInterface instanceof InterfaceC3665 ? (InterfaceC3665) queryLocalInterface : new AbstractC0292(m4998, "com.google.android.gms.common.internal.IGoogleCertificatesApi", 2);
                    }
                    f15217 = r1;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static C3929 m8108(String str, BinderC3928 binderC3928, boolean z, boolean z2) {
        try {
            m8107();
            AbstractC3659.m7687(f15219);
            try {
                InterfaceC3665 interfaceC3665 = f15217;
                BinderC1753 binderC1753 = new BinderC1753(f15219.getPackageManager());
                C3676 c3676 = (C3676) interfaceC3665;
                Parcel m1305 = c3676.m1305();
                int i = AbstractC2888.f10847;
                boolean z3 = true;
                m1305.writeInt(1);
                int m5058 = AbstractC2026.m5058(m1305, 20293);
                AbstractC2026.m5054(m1305, 1, str);
                AbstractC2026.m5055(m1305, 2, binderC3928);
                AbstractC2026.m5045(m1305, 3, 4);
                m1305.writeInt(z ? 1 : 0);
                AbstractC2026.m5045(m1305, 4, 4);
                m1305.writeInt(z2 ? 1 : 0);
                AbstractC2026.m5047(m1305, m5058);
                AbstractC2888.m6388(m1305, binderC1753);
                Parcel m1301 = c3676.m1301(m1305, 5);
                if (m1301.readInt() == 0) {
                    z3 = false;
                }
                m1301.recycle();
                return z3 ? C3929.f15201 : new C3931(new CallableC3939(z, str, binderC3928));
            } catch (RemoteException e) {
                return new C3929(false, "module call", e);
            }
        } catch (DynamiteModule$LoadingException e2) {
            return new C3929(false, "module init: ".concat(String.valueOf(e2.getMessage())), e2);
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static synchronized void m8109(Context context) {
        synchronized (AbstractC3935.class) {
            if (f15219 == null) {
                if (context != null) {
                    f15219 = context.getApplicationContext();
                }
            }
        }
    }
}

package p056;

import com.bumptech.glide.ˈ;

/* renamed from: ʽﹳ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1504 extends ˈ {
    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final void m4307(C1512 c1512, C1512 c15122) {
        c1512.f5978 = c15122;
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final void m4308(C1512 c1512, Thread thread) {
        c1512.f5979 = thread;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final boolean m4309(AbstractC1506 abstractC1506, C1499 c1499, C1499 c14992) {
        synchronized (abstractC1506) {
            try {
                if (abstractC1506.f5965 != c1499) {
                    return false;
                }
                abstractC1506.f5965 = c14992;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final boolean m4310(AbstractC1506 abstractC1506, C1512 c1512, C1512 c15122) {
        synchronized (abstractC1506) {
            try {
                if (abstractC1506.f5963 != c1512) {
                    return false;
                }
                abstractC1506.f5963 = c15122;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final boolean m4311(AbstractC1506 abstractC1506, Object obj, Object obj2) {
        synchronized (abstractC1506) {
            try {
                if (abstractC1506.f5964 != obj) {
                    return false;
                }
                abstractC1506.f5964 = obj2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

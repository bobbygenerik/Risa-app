package p279;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.bumptech.glide.ComponentCallbacks2C0236;
import com.bumptech.glide.ComponentCallbacks2C0238;
import p087.AbstractC1746;
import p229.C3125;
import p363.AbstractActivityC4410;
import p366.C4461;
import ـˎ.ˈ;
import ᵎˉ.ⁱˊ;

/* renamed from: ٴʽ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3557 implements Handler.Callback {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final ⁱˊ f13909 = new Object();

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C3125 f13910 = new C3125(f13909);

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public volatile ComponentCallbacks2C0236 f13911;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final InterfaceC3558 f13912;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [ٴʽ.ﾞᴵ] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    public C3557() {
        this.f13912 = (C4461.f16692 && C4461.f16689) ? new C3548() : new Object();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static Activity m7500(Context context) {
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            return m7500(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        return false;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, ٴʽ.ᵎﹶ] */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final ComponentCallbacks2C0236 m7501(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("You cannot start a load on a null Context");
        }
        char[] cArr = AbstractC1746.f7105;
        if (Looper.myLooper() == Looper.getMainLooper() && !(context instanceof Application)) {
            if (context instanceof AbstractActivityC4410) {
                AbstractActivityC4410 abstractActivityC4410 = (AbstractActivityC4410) context;
                if (!(Looper.myLooper() == Looper.getMainLooper())) {
                    return m7501(abstractActivityC4410.getApplicationContext());
                }
                if (abstractActivityC4410.isDestroyed()) {
                    throw new IllegalArgumentException("You cannot start a load for a destroyed activity");
                }
                this.f13912.mo7496(abstractActivityC4410);
                Activity m7500 = m7500(abstractActivityC4410);
                return this.f13910.m6846(abstractActivityC4410, ComponentCallbacks2C0238.m1182(abstractActivityC4410.getApplicationContext()), abstractActivityC4410.f4894, abstractActivityC4410.m8914(), m7500 == null || !m7500.isFinishing());
            }
            if (context instanceof ContextWrapper) {
                ContextWrapper contextWrapper = (ContextWrapper) context;
                if (contextWrapper.getBaseContext().getApplicationContext() != null) {
                    return m7501(contextWrapper.getBaseContext());
                }
            }
        }
        if (this.f13911 == null) {
            synchronized (this) {
                try {
                    if (this.f13911 == null) {
                        this.f13911 = new ComponentCallbacks2C0236(ComponentCallbacks2C0238.m1182(context.getApplicationContext()), new Object(), new ˈ(26), context.getApplicationContext());
                    }
                } finally {
                }
            }
        }
        return this.f13911;
    }
}

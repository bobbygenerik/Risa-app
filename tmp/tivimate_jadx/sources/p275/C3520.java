package p275;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Handler;
import androidx.lifecycle.RunnableC0197;
import j$.util.DesugarCollections;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p035.AbstractC1220;
import p254.C3351;
import p360.AbstractC4365;
import p360.C4366;
import p360.C4369;
import ˈˊ.ˉˆ;
import ˉᵎ.ⁱˊ;
import ﹳˋ.ʼˎ;

/* renamed from: ـﹶ.ᵔﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3520 implements InterfaceC3503 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final ʼˎ f13852;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Context f13853;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final Object f13854 = new Object();

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public ⁱˊ f13855;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public ThreadPoolExecutor f13856;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public ThreadPoolExecutor f13857;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C4366 f13858;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public Handler f13859;

    public C3520(Context context, C4366 c4366) {
        ˉˆ.ﾞᴵ(context, "Context cannot be null");
        this.f13853 = context.getApplicationContext();
        this.f13858 = c4366;
        this.f13852 = C3524.f13864;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m7485() {
        synchronized (this.f13854) {
            try {
                if (this.f13855 == null) {
                    return;
                }
                if (this.f13856 == null) {
                    ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new ThreadFactoryC3523(0, "emojiCompat"));
                    threadPoolExecutor.allowCoreThreadTimeOut(true);
                    this.f13857 = threadPoolExecutor;
                    this.f13856 = threadPoolExecutor;
                }
                this.f13856.execute(new RunnableC0197(29, this));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C4369 m7486() {
        try {
            ʼˎ r0 = this.f13852;
            Context context = this.f13853;
            C4366 c4366 = this.f13858;
            r0.getClass();
            Object[] objArr = {c4366};
            ArrayList arrayList = new ArrayList(1);
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            arrayList.add(obj);
            C3351 m8840 = AbstractC4365.m8840(context, DesugarCollections.unmodifiableList(arrayList));
            int i = m8840.f13110;
            if (i != 0) {
                throw new RuntimeException(AbstractC1220.m3773(i, "fetchFonts failed (", ")"));
            }
            C4369[] c4369Arr = (C4369[]) m8840.f13109.get(0);
            if (c4369Arr == null || c4369Arr.length == 0) {
                throw new RuntimeException("fetchFonts failed (empty result)");
            }
            return c4369Arr[0];
        } catch (PackageManager.NameNotFoundException e) {
            throw new RuntimeException("provider not found", e);
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m7487() {
        synchronized (this.f13854) {
            try {
                this.f13855 = null;
                Handler handler = this.f13859;
                if (handler != null) {
                    handler.removeCallbacks(null);
                }
                this.f13859 = null;
                ThreadPoolExecutor threadPoolExecutor = this.f13857;
                if (threadPoolExecutor != null) {
                    threadPoolExecutor.shutdown();
                }
                this.f13856 = null;
                this.f13857 = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p275.InterfaceC3503
    /* renamed from: ﹳٴ */
    public final void mo7447(ⁱˊ r2) {
        synchronized (this.f13854) {
            this.f13855 = r2;
        }
        m7485();
    }
}

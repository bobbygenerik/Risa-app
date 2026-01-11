package p275;

import android.os.Trace;
import com.google.android.gms.internal.measurement.C0390;
import java.lang.reflect.Method;
import p114.AbstractC1984;
import p409.AbstractBinderC4841;

/* renamed from: ـﹶ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC3510 implements Runnable {

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final /* synthetic */ RunnableC3510 f13838 = new RunnableC3510(2);

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f13839;

    public /* synthetic */ RunnableC3510(int i) {
        this.f13839 = i;
    }

    public RunnableC3510(AbstractBinderC4841 abstractBinderC4841) {
        this.f13839 = 1;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f13839) {
            case 0:
                try {
                    Method method = AbstractC1984.f7844;
                    Trace.beginSection("EmojiCompat.EmojiCompatInitializer.run");
                    if (C3508.f13826 != null) {
                        C3508.m7473().m7474();
                    }
                    Trace.endSection();
                    return;
                } catch (Throwable th) {
                    Method method2 = AbstractC1984.f7844;
                    Trace.endSection();
                    throw th;
                }
            case 1:
                throw null;
            default:
                C0390.f2045.incrementAndGet();
                return;
        }
    }
}

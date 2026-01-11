package p322;

import android.content.Context;
import androidx.work.WorkerParameters;
import java.util.Collections;
import java.util.List;

/* renamed from: ᴵˋ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3959 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C3959 f15270 = new Object();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C3959 f15269 = new Object();

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C3958 f15267 = new C3958(1);

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C3958 f15268 = new C3958(0);

    public C3959() {
        List list = Collections.EMPTY_LIST;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public AbstractC3967 m8125(Context context, String str, WorkerParameters workerParameters) {
        try {
            try {
                AbstractC3967 abstractC3967 = (AbstractC3967) Class.forName(str).asSubclass(AbstractC3967.class).getDeclaredConstructor(Context.class, WorkerParameters.class).newInstance(context, workerParameters);
                if (!abstractC3967.f15299) {
                    return abstractC3967;
                }
                throw new IllegalStateException("WorkerFactory (" + getClass().getName() + ") returned an instance of a ListenableWorker (" + str + ") which has already been invoked. createWorker() must always return a new instance of a ListenableWorker.");
            } catch (Throwable th) {
                C3965.m8127().m8130(AbstractC3969.f15303, "Could not instantiate ".concat(str), th);
                throw th;
            }
        } catch (Throwable th2) {
            C3965.m8127().m8130(AbstractC3969.f15303, "Invalid class: ".concat(str), th2);
            throw th2;
        }
    }
}

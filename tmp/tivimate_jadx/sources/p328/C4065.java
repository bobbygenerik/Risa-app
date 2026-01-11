package p328;

import java.util.ArrayList;

/* renamed from: ᴵᵔ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4065 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final ThreadLocal f15466 = new ThreadLocal();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final ArrayList f15468 = new ArrayList();

    /* renamed from: ʽ, reason: contains not printable characters */
    public boolean f15467 = false;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ChoreographerFrameCallbackC4080 f15469 = new ChoreographerFrameCallbackC4080(this);

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C4065 m8271() {
        ThreadLocal threadLocal = f15466;
        if (threadLocal.get() == null) {
            threadLocal.set(new C4065());
        }
        return (C4065) threadLocal.get();
    }
}

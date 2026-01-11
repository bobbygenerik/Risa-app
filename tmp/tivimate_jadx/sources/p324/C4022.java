package p324;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* renamed from: ᴵי.יـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C4022 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f15403 = AtomicIntegerFieldUpdater.newUpdater(C4022.class, "_handled$volatile");
    private volatile /* synthetic */ int _handled$volatile;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Throwable f15404;

    public C4022(Throwable th, boolean z) {
        this.f15404 = th;
        this._handled$volatile = z ? 1 : 0;
    }

    public final String toString() {
        return getClass().getSimpleName() + '[' + this.f15404 + ']';
    }
}

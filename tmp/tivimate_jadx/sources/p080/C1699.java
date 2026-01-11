package p080;

import java.util.concurrent.Executor;
import p399.C4751;

/* renamed from: ʿʾ.ˉˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1699 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Executor f6945;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C4751 f6946;

    public C1699(C4751 c4751, Executor executor) {
        this.f6946 = c4751;
        this.f6945 = executor;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C1699) {
            return this.f6946.equals(((C1699) obj).f6946);
        }
        return false;
    }

    public final int hashCode() {
        return this.f6946.hashCode();
    }
}

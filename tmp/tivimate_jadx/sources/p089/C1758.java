package p089;

import kotlinx.coroutines.flow.internal.ChildCancelledException;
import p153.C2480;

/* renamed from: ʿᵔ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1758 extends C2480 {
    @Override // p324.C4031
    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final boolean mo4718(Throwable th) {
        if (th instanceof ChildCancelledException) {
            return true;
        }
        return m8256(th);
    }
}

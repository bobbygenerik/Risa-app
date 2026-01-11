package p311;

import java.util.concurrent.CompletableFuture;

/* renamed from: ᐧᵢ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3790 extends CompletableFuture {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C3821 f14704;

    public C3790(C3821 c3821) {
        this.f14704 = c3821;
    }

    @Override // java.util.concurrent.CompletableFuture, java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        if (z) {
            this.f14704.cancel();
        }
        return super.cancel(z);
    }
}

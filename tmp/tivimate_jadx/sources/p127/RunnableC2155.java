package p127;

import android.os.Handler;
import com.google.android.gms.internal.play_billing.ʽﹳ;
import java.io.Closeable;
import p017.C0987;
import p305.AbstractC3712;

/* renamed from: ˈـ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC2155 implements Runnable, Closeable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public boolean f8379;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Handler f8380 = AbstractC3712.m7759(null);

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ C2170 f8381;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final long f8382;

    public RunnableC2155(C2170 c2170, long j) {
        this.f8381 = c2170;
        this.f8382 = j;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f8379 = false;
        this.f8380.removeCallbacks(this);
    }

    @Override // java.lang.Runnable
    public final void run() {
        C2170 c2170 = this.f8381;
        ʽﹳ r1 = c2170.f8484;
        r1.ᴵˊ(r1.ˉˆ(4, c2170.f8487, C0987.f3963, c2170.f8478));
        this.f8380.postDelayed(this, this.f8382);
    }
}

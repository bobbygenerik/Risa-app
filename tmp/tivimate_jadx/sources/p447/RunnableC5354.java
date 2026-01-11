package p447;

import j$.util.Objects;
import p262.C3433;
import p409.RunnableC4848;
import ʽⁱ.ᵎﹶ;

/* renamed from: ﹶﾞ.ﾞˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC5354 implements Runnable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ C3433 f20379;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final long f20380;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final long f20381;

    public RunnableC5354(C3433 c3433, long j, long j2) {
        Objects.requireNonNull(c3433);
        this.f20379 = c3433;
        this.f20380 = j;
        this.f20381 = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C5215 c5215 = ((C5322) ((ᵎﹶ) ((C5256) this.f20379.f13456)).ʾˋ).f20200;
        C5322.m10556(c5215);
        c5215.m10200(new RunnableC4848(6, this));
    }
}

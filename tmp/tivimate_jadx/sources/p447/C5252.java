package p447;

import java.lang.Thread;
import ʽⁱ.ᵎﹶ;

/* renamed from: ﹶﾞ.ˈˏ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5252 implements Thread.UncaughtExceptionHandler {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ C5215 f19797;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f19798;

    public C5252(C5215 c5215, String str) {
        this.f19797 = c5215;
        this.f19798 = str;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final synchronized void uncaughtException(Thread thread, Throwable th) {
        C5344 c5344 = ((C5322) ((ᵎﹶ) this.f19797).ʾˋ).f20193;
        C5322.m10556(c5344);
        c5344.f20343.m10216(th, this.f19798);
    }
}

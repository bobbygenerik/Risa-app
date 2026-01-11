package p322;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import p010.AbstractC0844;

/* renamed from: ᴵˋ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ThreadFactoryC3954 implements ThreadFactory {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ boolean f15262;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final AtomicInteger f15263 = new AtomicInteger(0);

    public ThreadFactoryC3954(boolean z) {
        this.f15262 = z;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        StringBuilder m3020 = AbstractC0844.m3020(this.f15262 ? "WM.task-" : "androidx.work-");
        m3020.append(this.f15263.incrementAndGet());
        return new Thread(runnable, m3020.toString());
    }
}

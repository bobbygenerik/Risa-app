package p164;

import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import p307.AbstractC3740;

/* renamed from: ˊᐧ.ˈٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C2580 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C2574 f9797 = new Object();

    /* renamed from: ʽ, reason: contains not printable characters */
    public long f9798;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public long f9799;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public boolean f9800;

    /* renamed from: ʽ, reason: contains not printable characters */
    public long mo5780() {
        if (this.f9800) {
            return this.f9799;
        }
        throw new IllegalStateException("No deadline");
    }

    /* renamed from: ˈ */
    public C2580 mo5764(long j) {
        this.f9800 = true;
        this.f9799 = j;
        return this;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public boolean mo5781() {
        return this.f9800;
    }

    /* renamed from: ᵎﹶ */
    public C2580 mo5765(long j) {
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        if (j < 0) {
            throw new IllegalArgumentException(AbstractC3740.m7926("timeout < 0: ", j).toString());
        }
        this.f9798 = timeUnit.toNanos(j);
        return this;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public C2580 mo5782() {
        this.f9798 = 0L;
        return this;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public C2580 mo5783() {
        this.f9800 = false;
        return this;
    }

    /* renamed from: ﾞᴵ */
    public void mo5766() {
        if (Thread.currentThread().isInterrupted()) {
            throw new InterruptedIOException("interrupted");
        }
        if (this.f9800 && this.f9799 - System.nanoTime() <= 0) {
            throw new InterruptedIOException("deadline reached");
        }
    }
}

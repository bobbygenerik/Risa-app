package p164;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import p027.C1090;
import ـˎ.ˈ;

/* renamed from: ˊᐧ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C2579 extends C2580 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static C2579 f9788;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static final ReentrantLock f9789;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static final long f9790;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static final Condition f9791;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static final C1090 f9792;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static final long f9793;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f9794;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public long f9795;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f9796 = -1;

    static {
        C1090 c1090 = new C1090((char) 0, 6);
        c1090.f4252 = new C2579[8];
        f9792 = c1090;
        ReentrantLock reentrantLock = new ReentrantLock();
        f9789 = reentrantLock;
        f9791 = reentrantLock.newCondition();
        long millis = TimeUnit.SECONDS.toMillis(60L);
        f9793 = millis;
        f9790 = TimeUnit.MILLISECONDS.toNanos(millis);
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final boolean m5777() {
        ReentrantLock reentrantLock = f9789;
        reentrantLock.lock();
        try {
            int i = this.f9794;
            this.f9794 = 0;
            if (i != 1) {
                return i == 2;
            }
            f9792.m3476(this);
            return false;
        } finally {
            reentrantLock.unlock();
        }
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public void mo5778() {
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void m5779() {
        long j = this.f9798;
        boolean z = this.f9800;
        if (j != 0 || z) {
            ReentrantLock reentrantLock = f9789;
            reentrantLock.lock();
            try {
                if (this.f9794 != 0) {
                    throw new IllegalStateException("Unbalanced enter/exit");
                }
                this.f9794 = 1;
                ˈ.ˉʿ(this, j, z);
            } finally {
                reentrantLock.unlock();
            }
        }
    }
}

package p220;

import com.google.android.gms.internal.measurement.C0344;
import com.google.android.gms.tasks.DuplicateTaskCompletionException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import p296.AbstractC3659;

/* renamed from: ˏـ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3029 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public boolean f11550;

    /* renamed from: ˈ, reason: contains not printable characters */
    public volatile boolean f11551;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public Object f11552;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public Exception f11555;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Object f11554 = new Object();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C0344 f11553 = new C0344(3);

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void m6560(Exception exc) {
        AbstractC3659.m7683(exc, "Exception must not be null");
        synchronized (this.f11554) {
            m6564();
            this.f11550 = true;
            this.f11555 = exc;
        }
        this.f11553.m1593(this);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C3029 m6561(Executor executor, InterfaceC3035 interfaceC3035) {
        C3029 c3029 = new C3029();
        this.f11553.m1588(new C3027(executor, interfaceC3035, c3029, 1));
        m6568();
        return c3029;
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void m6562(Object obj) {
        synchronized (this.f11554) {
            m6564();
            this.f11550 = true;
            this.f11552 = obj;
        }
        this.f11553.m1593(this);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final Exception m6563() {
        Exception exc;
        synchronized (this.f11554) {
            exc = this.f11555;
        }
        return exc;
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final void m6564() {
        if (this.f11550) {
            int i = DuplicateTaskCompletionException.f2523;
            if (!m6573()) {
                throw new IllegalStateException("DuplicateTaskCompletionException can only be created from completed Task.");
            }
            Exception m6563 = m6563();
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final Object m6565() {
        Object obj;
        synchronized (this.f11554) {
            try {
                AbstractC3659.m7684("Task is not yet complete", this.f11550);
                if (this.f11551) {
                    throw new CancellationException("Task is already canceled.");
                }
                Exception exc = this.f11555;
                if (exc != null) {
                    throw new RuntimeException(exc);
                }
                obj = this.f11552;
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final void m6566() {
        synchronized (this.f11554) {
            try {
                if (this.f11550) {
                    return;
                }
                this.f11550 = true;
                this.f11551 = true;
                this.f11553.m1593(this);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final boolean m6567() {
        boolean z;
        synchronized (this.f11554) {
            try {
                z = false;
                if (this.f11550 && !this.f11551 && this.f11555 == null) {
                    z = true;
                }
            } finally {
            }
        }
        return z;
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final void m6568() {
        synchronized (this.f11554) {
            try {
                if (this.f11550) {
                    this.f11553.m1593(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final C3029 m6569(Executor executor, InterfaceC3037 interfaceC3037) {
        C3029 c3029 = new C3029();
        this.f11553.m1588(new C3031(executor, interfaceC3037, c3029));
        m6568();
        return c3029;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m6570(Executor executor, InterfaceC3030 interfaceC3030) {
        this.f11553.m1588(new C3031(executor, interfaceC3030));
        m6568();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m6571(Executor executor, InterfaceC3028 interfaceC3028) {
        this.f11553.m1588(new C3031(executor, interfaceC3028));
        m6568();
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final boolean m6572(Object obj) {
        synchronized (this.f11554) {
            try {
                if (this.f11550) {
                    return false;
                }
                this.f11550 = true;
                this.f11552 = obj;
                this.f11553.m1593(this);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final boolean m6573() {
        boolean z;
        synchronized (this.f11554) {
            z = this.f11550;
        }
        return z;
    }
}

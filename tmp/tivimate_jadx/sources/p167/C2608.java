package p167;

import android.os.Looper;
import android.util.AndroidRuntimeException;
import com.google.android.gms.internal.play_billing.י;
import java.util.ArrayList;
import p188.InterfaceC2843;
import p230.C3170;
import p230.C3183;
import p404.C4790;

/* renamed from: ˊᵔ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2608 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public long f9874;

    /* renamed from: ʽ, reason: contains not printable characters */
    public boolean f9875;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public float f9876;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final InterfaceC2843 f9877;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public C2603 f9878;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public boolean f9879;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final י f9880;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final ArrayList f9881;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public float f9882;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public float f9883;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public float f9884;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public float f9885;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public float f9886;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final ArrayList f9887;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public boolean f9888;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public static final C2605 f9868 = new C2605(1);

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public static final C2605 f9872 = new C2605(2);

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public static final C2605 f9873 = new C2605(3);

    /* renamed from: יـ, reason: contains not printable characters */
    public static final C2605 f9871 = new C2605(4);

    /* renamed from: ˏי, reason: contains not printable characters */
    public static final C2605 f9870 = new C2605(5);

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public static final C2605 f9869 = new C2605(0);

    public C2608(C2607 c2607) {
        this.f9886 = 0.0f;
        this.f9885 = Float.MAX_VALUE;
        this.f9875 = false;
        this.f9888 = false;
        this.f9882 = Float.MAX_VALUE;
        this.f9884 = -3.4028235E38f;
        this.f9874 = 0L;
        this.f9881 = new ArrayList();
        this.f9887 = new ArrayList();
        this.f9877 = null;
        this.f9880 = new C2606(c2607);
        this.f9876 = 1.0f;
        this.f9878 = null;
        this.f9883 = Float.MAX_VALUE;
        this.f9879 = false;
    }

    public C2608(InterfaceC2843 interfaceC2843, י r6) {
        this.f9886 = 0.0f;
        this.f9885 = Float.MAX_VALUE;
        this.f9875 = false;
        this.f9888 = false;
        this.f9882 = Float.MAX_VALUE;
        this.f9884 = -3.4028235E38f;
        this.f9874 = 0L;
        this.f9881 = new ArrayList();
        this.f9887 = new ArrayList();
        this.f9877 = interfaceC2843;
        this.f9880 = r6;
        if (r6 == f9873 || r6 == f9871 || r6 == f9870) {
            this.f9876 = 0.1f;
        } else if (r6 == f9869) {
            this.f9876 = 0.00390625f;
        } else if (r6 == f9868 || r6 == f9872) {
            this.f9876 = 0.002f;
        } else {
            this.f9876 = 1.0f;
        }
        this.f9878 = null;
        this.f9883 = Float.MAX_VALUE;
        this.f9879 = false;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static C2604 m5858() {
        ThreadLocal threadLocal = C2604.f9856;
        if (threadLocal.get() == null) {
            threadLocal.set(new C2604(new C4790(18)));
        }
        return (C2604) threadLocal.get();
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m5859(float f) {
        ArrayList arrayList;
        this.f9880.ʽʽ(this.f9877, f);
        int i = 0;
        while (true) {
            arrayList = this.f9887;
            if (i >= arrayList.size()) {
                break;
            }
            if (arrayList.get(i) != null) {
                C3183 c3183 = (C3183) arrayList.get(i);
                float f2 = this.f9885;
                C3170 c3170 = c3183.f12141;
                long max = Math.max(-1L, Math.min(c3170.f12032 + 1, Math.round(f2)));
                c3170.mo6926(max, c3183.f12143);
                c3183.f12143 = max;
            }
            i++;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size) == null) {
                arrayList.remove(size);
            }
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m5860() {
        if (this.f9878.f9853 <= 0.0d) {
            throw new UnsupportedOperationException("Spring animations can only come to an end when there is damping");
        }
        C4790 c4790 = m5858().f9859;
        c4790.getClass();
        if (Thread.currentThread() != ((Looper) c4790.f18034).getThread()) {
            throw new AndroidRuntimeException("Animations may only be started on the same thread as the animation handler");
        }
        if (this.f9888) {
            this.f9879 = true;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m5861(float f) {
        if (this.f9888) {
            this.f9883 = f;
            return;
        }
        if (this.f9878 == null) {
            this.f9878 = new C2603(f);
        }
        C2603 c2603 = this.f9878;
        double d = f;
        c2603.f9846 = d;
        double d2 = (float) d;
        if (d2 > this.f9882) {
            throw new UnsupportedOperationException("Final position of the spring cannot be greater than the max value.");
        }
        if (d2 < this.f9884) {
            throw new UnsupportedOperationException("Final position of the spring cannot be less than the min value.");
        }
        double abs = Math.abs(this.f9876 * 0.75f);
        c2603.f9849 = abs;
        c2603.f9850 = abs * 62.5d;
        C4790 c4790 = m5858().f9859;
        c4790.getClass();
        if (Thread.currentThread() != ((Looper) c4790.f18034).getThread()) {
            throw new AndroidRuntimeException("Animations may only be started on the same thread as the animation handler");
        }
        boolean z = this.f9888;
        if (z || z) {
            return;
        }
        this.f9888 = true;
        if (!this.f9875) {
            this.f9885 = this.f9880.ʽﹳ(this.f9877);
        }
        float f2 = this.f9885;
        if (f2 > this.f9882 || f2 < this.f9884) {
            throw new IllegalArgumentException("Starting value need to be in between min value and max value");
        }
        m5858().m5853(this);
    }
}

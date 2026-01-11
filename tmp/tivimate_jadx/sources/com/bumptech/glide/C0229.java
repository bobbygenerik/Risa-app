package com.bumptech.glide;

import android.content.SharedPreferences;
import android.opengl.Matrix;
import android.os.Trace;
import android.util.SparseArray;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.concurrent.atomic.AtomicMarkableReference;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.ReentrantLock;
import p048.InterfaceC1374;
import p048.InterfaceC1375;
import p051.C1391;
import p051.InterfaceC1389;
import p087.InterfaceC1745;
import p105.C1924;
import p121.AbstractC2026;
import p137.C2282;
import p171.InterfaceC2626;
import p171.InterfaceC2639;
import p171.InterfaceC2646;
import p208.C2959;
import p283.RunnableC3568;
import p292.C3632;
import p292.C3648;
import p296.AbstractC3659;
import p305.C3711;
import p355.C4335;
import p355.C4338;
import p447.C5313;

/* renamed from: com.bumptech.glide.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0229 implements InterfaceC1745, InterfaceC2646 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public Object f1643;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public boolean f1644;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public Object f1645;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public Object f1646;

    public /* synthetic */ C0229(Object obj, Object obj2, Object obj3) {
        this.f1646 = obj;
        this.f1643 = obj2;
        this.f1645 = obj3;
    }

    public C0229(C2282 c2282, boolean z) {
        this.f1645 = c2282;
        this.f1643 = new AtomicReference(null);
        this.f1644 = z;
        this.f1646 = new AtomicMarkableReference(new C1924(z ? 8192 : 1024), false);
    }

    public C0229(InterfaceC2646 interfaceC2646, InterfaceC1389 interfaceC1389) {
        this.f1646 = interfaceC2646;
        this.f1643 = interfaceC1389;
        this.f1645 = new SparseArray();
    }

    public C0229(C4335 c4335, C4338 c4338) {
        this.f1645 = c4335;
        this.f1646 = c4338;
        this.f1643 = c4338.f16150 ? null : new boolean[c4335.f16135];
    }

    public C0229(C5313 c5313, String str) {
        this.f1645 = c5313;
        AbstractC3659.m7680(str);
        this.f1646 = str;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static void m1127(float[] fArr, float[] fArr2) {
        Matrix.setIdentityM(fArr, 0);
        float f = fArr2[10];
        float f2 = fArr2[8];
        float sqrt = (float) Math.sqrt((f2 * f2) + (f * f));
        float f3 = fArr2[10] / sqrt;
        fArr[0] = f3;
        float f4 = fArr2[8];
        fArr[2] = f4 / sqrt;
        fArr[8] = (-f4) / sqrt;
        fArr[10] = f3;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static IOException m1128(C0229 c0229, IOException iOException, int i) {
        boolean z = (i & 2) == 0;
        boolean z2 = (i & 4) == 0;
        if (iOException != null) {
            c0229.m1140(iOException);
        }
        return ((C3632) c0229.f1646).m7608(c0229, z2, z, iOException);
    }

    @Override // p087.InterfaceC1745
    public Object get() {
        if (this.f1644) {
            throw new IllegalStateException("Recursive Registry initialization! In your AppGlideModule and LibraryGlideModules, Make sure you're using the provided Registry rather calling glide.getRegistry()!");
        }
        Trace.beginSection(ʽ.ˊʻ("Glide registry"));
        this.f1644 = true;
        try {
            return AbstractC2026.m5048((ComponentCallbacks2C0238) this.f1646, (List) this.f1643, (ʼ.ᵎﹶ) this.f1645);
        } finally {
            this.f1644 = false;
            Trace.endSection();
        }
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public boolean m1129(int[] iArr) {
        ReentrantLock reentrantLock = (ReentrantLock) this.f1646;
        reentrantLock.lock();
        try {
            boolean z = false;
            for (int i : iArr) {
                long[] jArr = (long[]) this.f1643;
                long j = jArr[i];
                jArr[i] = j - 1;
                if (j == 1) {
                    z = true;
                    this.f1644 = true;
                }
            }
            return z;
        } finally {
            reentrantLock.unlock();
        }
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public C2959 m1130(boolean z) {
        try {
            C2959 mo4055 = ((InterfaceC1375) this.f1645).mo4055(z);
            if (mo4055 == null) {
                return mo4055;
            }
            mo4055.f11292 = this;
            return mo4055;
        } catch (IOException e) {
            m1140(e);
            throw e;
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public C3648 m1131() {
        InterfaceC1374 mo4059 = ((InterfaceC1375) this.f1645).mo4059();
        C3648 c3648 = mo4059 instanceof C3648 ? (C3648) mo4059 : null;
        if (c3648 != null) {
            return c3648;
        }
        throw new IllegalStateException("no connection for CONNECT tunnels");
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public String m1132() {
        if (!this.f1644) {
            this.f1644 = true;
            C5313 c5313 = (C5313) this.f1645;
            this.f1643 = c5313.m10545().getString((String) this.f1646, null);
        }
        return (String) this.f1643;
    }

    @Override // p171.InterfaceC2646
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public void mo1133(InterfaceC2626 interfaceC2626) {
        ((InterfaceC2646) this.f1646).mo1133(interfaceC2626);
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public void m1134() {
        C3711 c3711 = (C3711) this.f1645;
        if (this.f1644) {
            c3711.m7750(new RunnableC3568(8, this));
            this.f1644 = false;
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public boolean m1135(int[] iArr) {
        ReentrantLock reentrantLock = (ReentrantLock) this.f1646;
        reentrantLock.lock();
        try {
            boolean z = false;
            for (int i : iArr) {
                long[] jArr = (long[]) this.f1643;
                long j = jArr[i];
                jArr[i] = 1 + j;
                if (j == 0) {
                    z = true;
                    this.f1644 = true;
                }
            }
            return z;
        } finally {
            reentrantLock.unlock();
        }
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public void m1136(String str) {
        SharedPreferences.Editor edit = ((C5313) this.f1645).m10545().edit();
        edit.putString((String) this.f1646, str);
        edit.apply();
        this.f1643 = str;
    }

    @Override // p171.InterfaceC2646
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public void mo1137() {
        SparseArray sparseArray = (SparseArray) this.f1645;
        ((InterfaceC2646) this.f1646).mo1137();
        if (this.f1644) {
            for (int i = 0; i < sparseArray.size(); i++) {
                ((C1391) sparseArray.valueAt(i)).f5448 = true;
            }
        }
    }

    @Override // p171.InterfaceC2646
    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public InterfaceC2639 mo1138(int i, int i2) {
        SparseArray sparseArray = (SparseArray) this.f1645;
        InterfaceC2646 interfaceC2646 = (InterfaceC2646) this.f1646;
        if (i2 != 3) {
            this.f1644 = true;
            return interfaceC2646.mo1138(i, i2);
        }
        C1391 c1391 = (C1391) sparseArray.get(i);
        if (c1391 != null) {
            return c1391;
        }
        C1391 c13912 = new C1391(interfaceC2646.mo1138(i, i2), (InterfaceC1389) this.f1643);
        sparseArray.put(i, c13912);
        return c13912;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public void m1139() {
        C4335.m8785((C4335) this.f1645, this, false);
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public void m1140(IOException iOException) {
        this.f1644 = true;
        ((InterfaceC1375) this.f1645).mo4059().mo4052((C3632) this.f1646, iOException);
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public File m1141() {
        File file;
        synchronized (((C4335) this.f1645)) {
            try {
                C4338 c4338 = (C4338) this.f1646;
                if (c4338.f16154 != this) {
                    throw new IllegalStateException();
                }
                if (!c4338.f16150) {
                    ((boolean[]) this.f1643)[0] = true;
                }
                file = c4338.f16149[0];
                ((C4335) this.f1645).f16129.mkdirs();
            } catch (Throwable th) {
                throw th;
            }
        }
        return file;
    }
}

package com.bumptech.glide;

import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import androidx.leanback.widget.RunnableC0142;
import com.google.android.gms.internal.measurement.C0344;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import p066.InterfaceC1616;
import p087.AbstractC1746;
import p279.C3547;
import p279.InterfaceC3540;
import p279.InterfaceC3545;
import p279.InterfaceC3550;
import p279.InterfaceC3554;
import p331.C4194;
import p399.AbstractC4754;
import p399.C4755;
import p399.InterfaceC4748;

/* renamed from: com.bumptech.glide.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ComponentCallbacks2C0236 implements ComponentCallbacks2, InterfaceC3540 {

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public static final C4755 f1680;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final InterfaceC3550 f1681;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final ComponentCallbacks2C0238 f1682;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final C0344 f1683;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final InterfaceC3554 f1684;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final C3547 f1685;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public C4755 f1686;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final RunnableC0142 f1687;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Context f1688;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final InterfaceC3545 f1689;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final CopyOnWriteArrayList f1690;

    static {
        C4755 c4755 = (C4755) new AbstractC4754().m9510(Bitmap.class);
        c4755.f17967 = true;
        f1680 = c4755;
        ((C4755) new AbstractC4754().m9510(C4194.class)).f17967 = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x004f, code lost:
    
        r0 = new p279.C3542(r9, r10);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [ٴʽ.ʼˎ, ٴʽ.ⁱˊ] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r8v0, types: [ٴʽ.ᵎﹶ] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ComponentCallbacks2C0236(com.bumptech.glide.ComponentCallbacks2C0238 r7, p279.InterfaceC3550 r8, p279.InterfaceC3545 r9, android.content.Context r10) {
        /*
            r6 = this;
            com.google.android.gms.internal.measurement.ˊـ r0 = new com.google.android.gms.internal.measurement.ˊـ
            r1 = 4
            r0.<init>(r1)
            ﹳˋ.ʼˎ r1 = r7.f1708
            r6.<init>()
            ٴʽ.ˏי r2 = new ٴʽ.ˏי
            r2.<init>()
            r6.f1685 = r2
            androidx.leanback.widget.ᵔʾ r2 = new androidx.leanback.widget.ᵔʾ
            r3 = 3
            r2.<init>(r3, r6)
            r6.f1687 = r2
            r6.f1682 = r7
            r6.f1681 = r8
            r6.f1689 = r9
            r6.f1683 = r0
            r6.f1688 = r10
            android.content.Context r9 = r10.getApplicationContext()
            com.bumptech.glide.ˉʿ r10 = new com.bumptech.glide.ˉʿ
            r10.<init>(r6, r0)
            r1.getClass()
            java.lang.String r0 = "ConnectivityMonitor"
            java.lang.String r1 = "android.permission.ACCESS_NETWORK_STATE"
            int r1 = p021.AbstractC1031.m3366(r9, r1)
            r4 = 0
            r5 = 1
            if (r1 != 0) goto L3e
            r1 = r5
            goto L3f
        L3e:
            r1 = r4
        L3f:
            boolean r3 = android.util.Log.isLoggable(r0, r3)
            if (r3 == 0) goto L4d
            if (r1 == 0) goto L4a
            java.lang.String r3 = "ACCESS_NETWORK_STATE permission granted, registering connectivity monitor"
            goto L4c
        L4a:
            java.lang.String r3 = "ACCESS_NETWORK_STATE permission missing, cannot register connectivity monitor"
        L4c:
        L4d:
            if (r1 == 0) goto L55
            ٴʽ.ʽ r0 = new ٴʽ.ʽ
            r0.<init>(r9, r10)
            goto L5a
        L55:
            ٴʽ.ٴﹶ r0 = new ٴʽ.ٴﹶ
            r0.<init>()
        L5a:
            r6.f1684 = r0
            java.util.ArrayList r9 = r7.f1706
            monitor-enter(r9)
            java.util.ArrayList r10 = r7.f1706     // Catch: java.lang.Throwable -> L9f
            boolean r10 = r10.contains(r6)     // Catch: java.lang.Throwable -> L9f
            if (r10 != 0) goto La1
            java.util.ArrayList r10 = r7.f1706     // Catch: java.lang.Throwable -> L9f
            r10.add(r6)     // Catch: java.lang.Throwable -> L9f
            monitor-exit(r9)     // Catch: java.lang.Throwable -> L9f
            char[] r9 = p087.AbstractC1746.f7105
            android.os.Looper r9 = android.os.Looper.myLooper()
            android.os.Looper r10 = android.os.Looper.getMainLooper()
            if (r9 != r10) goto L7a
            r4 = r5
        L7a:
            if (r4 != 0) goto L84
            android.os.Handler r9 = p087.AbstractC1746.m4705()
            r9.post(r2)
            goto L87
        L84:
            r8.mo7498(r6)
        L87:
            r8.mo7498(r0)
            java.util.concurrent.CopyOnWriteArrayList r8 = new java.util.concurrent.CopyOnWriteArrayList
            com.bumptech.glide.ˑﹳ r9 = r7.f1705
            java.util.List r9 = r9.f1657
            r8.<init>(r9)
            r6.f1690 = r8
            com.bumptech.glide.ˑﹳ r7 = r7.f1705
            ⁱⁱ.ﾞᴵ r7 = r7.m1145()
            r6.m1158(r7)
            return
        L9f:
            r7 = move-exception
            goto La9
        La1:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L9f
            java.lang.String r8 = "Cannot register already registered manager"
            r7.<init>(r8)     // Catch: java.lang.Throwable -> L9f
            throw r7     // Catch: java.lang.Throwable -> L9f
        La9:
            monitor-exit(r9)     // Catch: java.lang.Throwable -> L9f
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.ComponentCallbacks2C0236.<init>(com.bumptech.glide.ⁱˊ, ٴʽ.ᵎﹶ, ٴʽ.ˉʿ, android.content.Context):void");
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i) {
    }

    public final synchronized String toString() {
        return super.toString() + "{tracker=" + this.f1683 + ", treeNode=" + this.f1689 + "}";
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final synchronized void m1158(C4755 c4755) {
        C4755 c47552 = (C4755) c4755.clone();
        if (c47552.f17967 && !c47552.f17954) {
            throw new IllegalStateException("You cannot auto lock an already locked options object, try clone() first");
        }
        c47552.f17954 = true;
        c47552.f17967 = true;
        this.f1686 = c47552;
    }

    @Override // p279.InterfaceC3540
    /* renamed from: ʽ, reason: contains not printable characters */
    public final synchronized void mo1159() {
        this.f1685.mo1159();
        m1164();
    }

    @Override // p279.InterfaceC3540
    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final synchronized void mo1160() {
        m1162();
        this.f1685.mo1160();
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final synchronized void m1161() {
        try {
            ArrayList m4700 = AbstractC1746.m4700(this.f1685.f13894);
            int size = m4700.size();
            int i = 0;
            while (i < size) {
                Object obj = m4700.get(i);
                i++;
                m1166((InterfaceC1616) obj);
            }
            this.f1685.f13894.clear();
        } catch (Throwable th) {
            throw th;
        }
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final synchronized void m1162() {
        C0344 c0344 = this.f1683;
        int i = 0;
        c0344.f2000 = false;
        ArrayList m4700 = AbstractC1746.m4700((Set) c0344.f1997);
        int size = m4700.size();
        while (i < size) {
            Object obj = m4700.get(i);
            i++;
            InterfaceC4748 interfaceC4748 = (InterfaceC4748) obj;
            if (!interfaceC4748.mo9488() && !interfaceC4748.isRunning()) {
                interfaceC4748.mo9490();
            }
        }
        ((HashSet) c0344.f1999).clear();
    }

    @Override // p279.InterfaceC3540
    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final synchronized void mo1163() {
        this.f1685.mo1163();
        m1161();
        C0344 c0344 = this.f1683;
        ArrayList m4700 = AbstractC1746.m4700((Set) c0344.f1997);
        int size = m4700.size();
        int i = 0;
        while (i < size) {
            Object obj = m4700.get(i);
            i++;
            c0344.m1595((InterfaceC4748) obj);
        }
        ((HashSet) c0344.f1999).clear();
        this.f1681.mo7497(this);
        this.f1681.mo7497(this.f1684);
        AbstractC1746.m4705().removeCallbacks(this.f1687);
        this.f1682.m1183(this);
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final synchronized void m1164() {
        C0344 c0344 = this.f1683;
        c0344.f2000 = true;
        ArrayList m4700 = AbstractC1746.m4700((Set) c0344.f1997);
        int size = m4700.size();
        int i = 0;
        while (i < size) {
            Object obj = m4700.get(i);
            i++;
            InterfaceC4748 interfaceC4748 = (InterfaceC4748) obj;
            if (interfaceC4748.isRunning()) {
                interfaceC4748.mo9485();
                ((HashSet) c0344.f1999).add(interfaceC4748);
            }
        }
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final synchronized boolean m1165(InterfaceC1616 interfaceC1616) {
        InterfaceC4748 mo1189 = interfaceC1616.mo1189();
        if (mo1189 == null) {
            return true;
        }
        if (!this.f1683.m1595(mo1189)) {
            return false;
        }
        this.f1685.f13894.remove(interfaceC1616);
        interfaceC1616.mo1191(null);
        return true;
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final void m1166(InterfaceC1616 interfaceC1616) {
        if (interfaceC1616 == null) {
            return;
        }
        boolean m1165 = m1165(interfaceC1616);
        InterfaceC4748 mo1189 = interfaceC1616.mo1189();
        if (m1165) {
            return;
        }
        ComponentCallbacks2C0238 componentCallbacks2C0238 = this.f1682;
        synchronized (componentCallbacks2C0238.f1706) {
            try {
                ArrayList arrayList = componentCallbacks2C0238.f1706;
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    if (((ComponentCallbacks2C0236) obj).m1165(interfaceC1616)) {
                        return;
                    }
                }
                if (mo1189 != null) {
                    interfaceC1616.mo1191(null);
                    mo1189.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

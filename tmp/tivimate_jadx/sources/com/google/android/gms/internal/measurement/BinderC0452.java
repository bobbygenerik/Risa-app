package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: com.google.android.gms.internal.measurement.ᵎⁱ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class BinderC0452 extends AbstractBinderC0257 implements InterfaceC0462 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public final AtomicReference f2202;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public boolean f2203;

    public BinderC0452() {
        super("com.google.android.gms.measurement.api.internal.IBundleReceiver");
        this.f2202 = new AtomicReference();
    }

    /* JADX WARN: Code restructure failed: missing block: B:2:0x0002, code lost:
    
        r3 = r3.get("r");
     */
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m1883(android.os.Bundle r3, java.lang.Class r4) {
        /*
            if (r3 == 0) goto L36
            java.lang.String r0 = "r"
            java.lang.Object r3 = r3.get(r0)
            if (r3 == 0) goto L36
            java.lang.Object r3 = r4.cast(r3)     // Catch: java.lang.ClassCastException -> Lf
            return r3
        Lf:
            r0 = move-exception
            java.lang.String r4 = r4.getCanonicalName()
            java.lang.Class r3 = r3.getClass()
            java.lang.String r3 = r3.getCanonicalName()
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "Unexpected object type. Expected, Received: "
            r1.<init>(r2)
            r1.append(r4)
            java.lang.String r4 = ", "
            r1.append(r4)
            r1.append(r3)
            java.lang.String r3 = r1.toString()
            java.lang.String r4 = "AM"
            throw r0
        L36:
            r3 = 0
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.BinderC0452.m1883(android.os.Bundle, java.lang.Class):java.lang.Object");
    }

    @Override // com.google.android.gms.internal.measurement.AbstractBinderC0257
    /* renamed from: ʽ */
    public final boolean mo1204(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            return false;
        }
        Bundle bundle = (Bundle) AbstractC0472.m1912(parcel, Bundle.CREATOR);
        AbstractC0472.m1910(parcel);
        mo1551(bundle);
        parcel2.writeNoException();
        return true;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final Bundle m1884(long j) {
        Bundle bundle;
        AtomicReference atomicReference = this.f2202;
        synchronized (atomicReference) {
            if (!this.f2203) {
                try {
                    atomicReference.wait(j);
                } catch (InterruptedException unused) {
                    return null;
                }
            }
            bundle = (Bundle) this.f2202.get();
        }
        return bundle;
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0462
    /* renamed from: ᵔﹳ */
    public final void mo1551(Bundle bundle) {
        AtomicReference atomicReference = this.f2202;
        synchronized (atomicReference) {
            try {
                try {
                    atomicReference.set(bundle);
                    this.f2203 = true;
                } finally {
                    this.f2202.notify();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

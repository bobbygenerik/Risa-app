package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;
import j$.util.Objects;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import p137.C2282;

/* renamed from: com.google.android.gms.internal.measurement.יⁱ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0396 extends ContentObserver {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ Object f2062;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f2063 = 1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0396(C0289 c0289) {
        super(null);
        this.f2062 = c0289;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0396(C2282 c2282) {
        super(null);
        Objects.requireNonNull(c2282);
        this.f2062 = c2282;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        switch (this.f2063) {
            case 0:
                ((AtomicBoolean) ((C2282) this.f2062).f8929).set(true);
                return;
            default:
                C0289 c0289 = (C0289) this.f2062;
                synchronized (c0289.f1901) {
                    c0289.f1897 = null;
                    c0289.f1894.run();
                }
                synchronized (c0289) {
                    try {
                        Iterator it = c0289.f1898.iterator();
                        if (it.hasNext()) {
                            if (it.next() != null) {
                                throw new ClassCastException();
                            }
                            throw null;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
        }
    }
}

package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;

/* renamed from: com.google.android.gms.internal.measurement.ᴵᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0444 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final ᵢ.ﹳٴ f2191;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C0371 f2192;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public ˏˆ.ﹳٴ f2193;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ˏˆ.ﹳٴ f2194;

    public C0444() {
        ˏˆ.ﹳٴ r0 = new ˏˆ.ﹳٴ(3);
        this.f2194 = r0;
        this.f2193 = ((ˏˆ.ﹳٴ) r0.ʽʽ).ˈⁱ();
        this.f2191 = new ᵢ.ﹳٴ(1);
        this.f2192 = new C0371(3);
        final int i = 1;
        Callable callable = new Callable(this) { // from class: com.google.android.gms.internal.measurement.ﹳٴ

            /* renamed from: ⁱˊ, reason: contains not printable characters */
            public final /* synthetic */ C0444 f2257;

            {
                this.f2257 = this;
            }

            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                switch (i) {
                    case 0:
                        return new C0380(this.f2257.f2191);
                    default:
                        return new C0380(this.f2257.f2192);
                }
            }
        };
        C0425 c0425 = (C0425) r0.ᴵᵔ;
        ((HashMap) c0425.f2169).put("internal.registerCallback", callable);
        final int i2 = 0;
        ((HashMap) c0425.f2169).put("internal.eventLogger", new Callable(this) { // from class: com.google.android.gms.internal.measurement.ﹳٴ

            /* renamed from: ⁱˊ, reason: contains not printable characters */
            public final /* synthetic */ C0444 f2257;

            {
                this.f2257 = this;
            }

            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                switch (i2) {
                    case 0:
                        return new C0380(this.f2257.f2191);
                    default:
                        return new C0380(this.f2257.f2192);
                }
            }
        });
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m1873(C0442 c0442) {
        AbstractC0465 abstractC0465;
        try {
            ˏˆ.ﹳٴ r0 = this.f2194;
            this.f2193 = ((ˏˆ.ﹳٴ) r0.ʽʽ).ˈⁱ();
            if (r0.ـˏ(this.f2193, (C0385[]) c0442.m1871().toArray(new C0385[0])) instanceof C0515) {
                throw new IllegalStateException("Program loading failed");
            }
            for (C0387 c0387 : c0442.m1872().m1571()) {
                List m1765 = c0387.m1765();
                String m1764 = c0387.m1764();
                Iterator it = m1765.iterator();
                while (it.hasNext()) {
                    InterfaceC0457 interfaceC0457 = r0.ـˏ(this.f2193, new C0385[]{(C0385) it.next()});
                    if (!(interfaceC0457 instanceof C0422)) {
                        throw new IllegalArgumentException("Invalid rule definition");
                    }
                    ˏˆ.ﹳٴ r6 = this.f2193;
                    if (r6.ᴵˑ(m1764)) {
                        InterfaceC0457 interfaceC04572 = r6.ʿᵢ(m1764);
                        if (!(interfaceC04572 instanceof AbstractC0465)) {
                            throw new IllegalStateException("Invalid function name: ".concat(String.valueOf(m1764)));
                        }
                        abstractC0465 = (AbstractC0465) interfaceC04572;
                    } else {
                        abstractC0465 = null;
                    }
                    if (abstractC0465 == null) {
                        throw new IllegalStateException("Rule function is undefined: ".concat(String.valueOf(m1764)));
                    }
                    abstractC0465.mo1199(this.f2193, Collections.singletonList(interfaceC0457));
                }
            }
        } catch (Throwable th) {
            throw new Exception(th);
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean m1874(C0484 c0484) {
        ᵢ.ﹳٴ r0 = this.f2191;
        try {
            r0.ᴵˊ = c0484;
            r0.ʽʽ = c0484.clone();
            ((ArrayList) r0.ˈٴ).clear();
            ((ˏˆ.ﹳٴ) this.f2194.ˈٴ).ˉـ("runtime.counter", new C0453(Double.valueOf(0.0d)));
            this.f2192.m1699(this.f2193.ˈⁱ(), r0);
            if (((C0484) r0.ʽʽ).equals((C0484) r0.ᴵˊ)) {
                return !((ArrayList) r0.ˈٴ).isEmpty();
            }
            return true;
        } catch (Throwable th) {
            throw new Exception(th);
        }
    }
}

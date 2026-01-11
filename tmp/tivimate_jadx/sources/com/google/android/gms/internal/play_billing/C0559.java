package com.google.android.gms.internal.play_billing;

import java.util.logging.Logger;
import p121.AbstractC2021;
import p153.C2469;
import p329.InterfaceC4106;

/* renamed from: com.google.android.gms.internal.play_billing.ˈⁱ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0559 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Object f2347;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public volatile Object f2348;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f2349;

    public C0559() {
        this.f2347 = new Object();
        this.f2349 = AbstractC2021.class.getName();
    }

    public C0559(Class cls) {
        this.f2347 = new Object();
        this.f2349 = cls.getName();
    }

    public C0559(String str, InterfaceC4106 interfaceC4106, C2469 c2469) {
        this.f2349 = str;
        this.f2347 = new Object();
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public Logger m2135() {
        Logger logger = (Logger) this.f2348;
        if (logger != null) {
            return logger;
        }
        synchronized (((C0562) this.f2347)) {
            try {
                Logger logger2 = (Logger) this.f2348;
                if (logger2 != null) {
                    return logger2;
                }
                Logger logger3 = Logger.getLogger(this.f2349);
                this.f2348 = logger3;
                return logger3;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public Logger m2136() {
        Logger logger = (Logger) this.f2348;
        if (logger != null) {
            return logger;
        }
        synchronized (this.f2347) {
            try {
                Logger logger2 = (Logger) this.f2348;
                if (logger2 != null) {
                    return logger2;
                }
                Logger logger3 = Logger.getLogger(this.f2349);
                this.f2348 = logger3;
                return logger3;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

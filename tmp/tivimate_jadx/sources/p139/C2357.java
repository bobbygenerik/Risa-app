package p139;

import android.content.Context;
import j$.util.DesugarCollections;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
import p070.C1629;
import p189.InterfaceC2870;
import p283.RunnableC3568;
import p287.C3588;
import p318.C3919;
import p419.InterfaceC4934;
import ˏˆ.ﹳٴ;
import ˑי.ʽ;

/* renamed from: ˉˋ.ʼᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2357 {

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static volatile C2359 f9113;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final InterfaceC2870 f9114;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C1629 f9115;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final InterfaceC4934 f9116;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC4934 f9117;

    public C2357(InterfaceC4934 interfaceC4934, InterfaceC4934 interfaceC49342, InterfaceC2870 interfaceC2870, C1629 c1629, ﹳٴ r5) {
        this.f9117 = interfaceC4934;
        this.f9116 = interfaceC49342;
        this.f9114 = interfaceC2870;
        this.f9115 = c1629;
        ((Executor) r5.ᴵˊ).execute(new RunnableC3568(1, r5));
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [ʾⁱ.ˑﹳ, java.lang.Object] */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static void m5443(Context context) {
        if (f9113 == null) {
            synchronized (C2357.class) {
                try {
                    if (f9113 == null) {
                        ?? obj = new Object();
                        context.getClass();
                        obj.f6687 = context;
                        f9113 = obj.m4505();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C2357 m5444() {
        C2359 c2359 = f9113;
        if (c2359 != null) {
            return (C2357) c2359.f9124.get();
        }
        throw new IllegalStateException("Not initialized!");
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C2362 m5445(InterfaceC2364 interfaceC2364) {
        byte[] bytes;
        Set unmodifiableSet = interfaceC2364 != null ? DesugarCollections.unmodifiableSet(C3588.f14022) : Collections.singleton(new C3919("proto"));
        ʽ m5441 = C2356.m5441();
        interfaceC2364.getClass();
        m5441.ʾˋ = "cct";
        C3588 c3588 = (C3588) interfaceC2364;
        String str = c3588.f14026;
        String str2 = c3588.f14025;
        if (str2 == null && str == null) {
            bytes = null;
        } else {
            if (str2 == null) {
                str2 = "";
            }
            bytes = ("1$" + str + "\\" + str2).getBytes(Charset.forName("UTF-8"));
        }
        m5441.ᴵˊ = bytes;
        return new C2362(unmodifiableSet, m5441.ᵔﹳ(), this);
    }
}

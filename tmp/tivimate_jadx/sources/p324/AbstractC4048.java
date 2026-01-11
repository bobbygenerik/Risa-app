package p324;

import p091.C1842;
import p153.AbstractC2472;
import p153.AbstractC2478;
import p299.C3694;

/* renamed from: ᴵי.ᵢˏ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4048 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final InterfaceC3995 f15437;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [ᐧʼ.ʽ] */
    /* JADX WARN: Type inference failed for: r0v7, types: [ᴵי.ʼʼ] */
    /* JADX WARN: Type inference failed for: r0v8, types: [ᴵי.ʽʽ] */
    /* JADX WARN: Type inference failed for: r0v9, types: [ᴵי.ʼʼ] */
    static {
        String str;
        ?? r0;
        int i = AbstractC2472.f9448;
        try {
            str = System.getProperty("kotlinx.coroutines.main.delay");
        } catch (SecurityException unused) {
            str = null;
        }
        if (str != null ? Boolean.parseBoolean(str) : false) {
            C1842 c1842 = AbstractC4028.f15408;
            r0 = AbstractC2478.f9460;
            C3694 c3694 = r0.f14442;
            if (!(r0 != 0)) {
                r0 = RunnableC3990.f15359;
            }
        } else {
            r0 = RunnableC3990.f15359;
        }
        f15437 = r0;
    }
}

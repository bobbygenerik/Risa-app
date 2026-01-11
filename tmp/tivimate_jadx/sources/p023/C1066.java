package p023;

import android.support.v4.media.session.ⁱˊ;
import androidx.lifecycle.C0185;
import java.util.concurrent.atomic.AtomicBoolean;
import p303.C3709;
import p303.EnumC3707;
import p329.InterfaceC4104;
import p417.InterfaceC4932;
import ﹳٴ.ﹳٴ;
import ﹶﾞ.ⁱי;

/* renamed from: ʼˋ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1066 implements InterfaceC1069 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C1060 f4206;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C1060 f4208;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final long f4209;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final ThreadLocal f4205 = new ThreadLocal();

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final AtomicBoolean f4207 = new AtomicBoolean(false);

    public C1066(ⁱי r4) {
        int i = C3709.f14467;
        this.f4209 = ﹳٴ.ﹳـ(30, EnumC3707.SECONDS);
        C1060 c1060 = new C1060(1, new C0185(2, r4));
        this.f4206 = c1060;
        this.f4208 = c1060;
    }

    public C1066(final ⁱי r5, final String str, int i) {
        final int i2 = 0;
        int i3 = C3709.f14467;
        this.f4209 = ﹳٴ.ﹳـ(30, EnumC3707.SECONDS);
        if (i <= 0) {
            throw new IllegalArgumentException("Maximum number of readers must be greater than 0");
        }
        this.f4206 = new C1060(i, new InterfaceC4104() { // from class: ʼˋ.ʽ
            @Override // p329.InterfaceC4104
            /* renamed from: ʽ */
            public final Object mo716() {
                switch (i2) {
                    case 0:
                        InterfaceC4932 interfaceC4932 = r5.ﾞᴵ(str);
                        ⁱˊ.ˑﹳ(interfaceC4932, "PRAGMA query_only = 1");
                        return interfaceC4932;
                    default:
                        return r5.ﾞᴵ(str);
                }
            }
        });
        final int i4 = 1;
        this.f4208 = new C1060(1, new InterfaceC4104() { // from class: ʼˋ.ʽ
            @Override // p329.InterfaceC4104
            /* renamed from: ʽ */
            public final Object mo716() {
                switch (i4) {
                    case 0:
                        InterfaceC4932 interfaceC4932 = r5.ﾞᴵ(str);
                        ⁱˊ.ˑﹳ(interfaceC4932, "PRAGMA query_only = 1");
                        return interfaceC4932;
                    default:
                        return r5.ﾞᴵ(str);
                }
            }
        });
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        if (this.f4207.compareAndSet(false, true)) {
            this.f4206.m3400();
            this.f4208.m3400();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x016a A[Catch: all -> 0x017f, TRY_LEAVE, TryCatch #8 {all -> 0x017f, blocks: (B:17:0x0164, B:19:0x016a, B:24:0x0175, B:21:0x0178), top: B:16:0x0164 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0134 A[Catch: all -> 0x0180, TRY_LEAVE, TryCatch #0 {all -> 0x0180, blocks: (B:61:0x0113, B:65:0x0129, B:67:0x0134, B:71:0x0183, B:72:0x018a), top: B:60:0x0113 }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0183 A[Catch: all -> 0x0180, TRY_ENTER, TryCatch #0 {all -> 0x0180, blocks: (B:61:0x0113, B:65:0x0129, B:67:0x0134, B:71:0x0183, B:72:0x018a), top: B:60:0x0113 }] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0031  */
    /* JADX WARN: Type inference failed for: r6v4, types: [java.lang.Object, ˊʼ.ˏי] */
    @Override // p023.InterfaceC1069
    /* renamed from: ʼʼ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object mo3412(boolean r17, p329.InterfaceC4087 r18, p316.AbstractC3902 r19) {
        /*
            Method dump skipped, instructions count: 446
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p023.C1066.mo3412(boolean, ᴵⁱ.ʼᐧ, ᴵʾ.ʽ):java.lang.Object");
    }
}

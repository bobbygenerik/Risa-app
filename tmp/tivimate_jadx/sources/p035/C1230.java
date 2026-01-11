package p035;

import android.content.Intent;
import java.util.LinkedHashMap;
import java.util.concurrent.locks.ReentrantLock;
import p013.C0907;
import p013.C0913;
import p316.AbstractC3906;
import p329.InterfaceC4104;
import p329.InterfaceC4106;
import p373.EnumC4532;
import p404.C4790;
import p430.AbstractC5103;
import ʼⁱ.ᴵˊ;
import ʼⁱ.ᵔʾ;
import ˉᵎ.ⁱˊ;

/* renamed from: ʼﾞ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1230 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public Intent f4762;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C1232 f4763;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public C1243 f4764;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final LinkedHashMap f4765;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final ReentrantLock f4766;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final Object f4767;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final C1242 f4768;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final C4790 f4769;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String[] f4770;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final AbstractC1219 f4771;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final ᵔʾ f4772;

    /* JADX WARN: Type inference failed for: r2v5, types: [ʼﾞ.ᵔᵢ] */
    public C1230(AbstractC1219 abstractC1219, LinkedHashMap linkedHashMap, LinkedHashMap linkedHashMap2, String... strArr) {
        this.f4771 = abstractC1219;
        this.f4770 = strArr;
        C1232 c1232 = new C1232(abstractC1219, linkedHashMap, linkedHashMap2, strArr, abstractC1219.f4722, new ᴵˊ(1, this, C1230.class, "notifyInvalidatedObservers", "notifyInvalidatedObservers(Ljava/util/Set;)V", 0, 0, 1));
        this.f4763 = c1232;
        this.f4765 = new LinkedHashMap();
        this.f4766 = new ReentrantLock();
        this.f4772 = new ᵔʾ(this);
        final int i = 0;
        this.f4768 = new InterfaceC4104(this) { // from class: ʼﾞ.ᵔᵢ

            /* renamed from: ᴵˊ, reason: contains not printable characters */
            public final /* synthetic */ C1230 f4822;

            {
                this.f4822 = this;
            }

            @Override // p329.InterfaceC4104
            /* renamed from: ʽ */
            public final Object mo716() {
                switch (i) {
                    case 0:
                        this.f4822.getClass();
                        return C0907.f3832;
                    default:
                        C1230 c1230 = this.f4822;
                        return Boolean.valueOf(!c1230.f4771.m3760() || c1230.f4771.m3764());
                }
            }
        };
        this.f4769 = new C4790(abstractC1219);
        this.f4767 = new Object();
        final int i2 = 1;
        c1232.f4781 = new InterfaceC4104(this) { // from class: ʼﾞ.ᵔᵢ

            /* renamed from: ᴵˊ, reason: contains not printable characters */
            public final /* synthetic */ C1230 f4822;

            {
                this.f4822 = this;
            }

            @Override // p329.InterfaceC4104
            /* renamed from: ʽ */
            public final Object mo716() {
                switch (i2) {
                    case 0:
                        this.f4822.getClass();
                        return C0907.f3832;
                    default:
                        C1230 c1230 = this.f4822;
                        return Boolean.valueOf(!c1230.f4771.m3760() || c1230.f4771.m3764());
                }
            }
        };
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m3799(AbstractC1200 abstractC1200) {
        ReentrantLock reentrantLock = this.f4766;
        reentrantLock.lock();
        try {
            C1226 c1226 = (C1226) this.f4765.remove(abstractC1200);
            if (c1226 != null) {
                if (this.f4763.f4783.m1129(c1226.f4739)) {
                    ⁱˊ.ᵎˊ(new C1209(this, null, 1));
                }
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final Object m3800(AbstractC3906 abstractC3906) {
        Object m3809;
        AbstractC1219 abstractC1219 = this.f4771;
        return ((!abstractC1219.m3760() || abstractC1219.m3764()) && (m3809 = this.f4763.m3809(abstractC3906)) == EnumC4532.f16960) ? m3809 : C0907.f3832;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C1229 m3801(String[] strArr, boolean z, InterfaceC4106 interfaceC4106) {
        this.f4763.m3808(strArr);
        C4790 c4790 = this.f4769;
        return new C1229((AbstractC1219) c4790.f18036, c4790, z, strArr, interfaceC4106);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean m3802(AbstractC1200 abstractC1200) {
        LinkedHashMap linkedHashMap = this.f4765;
        String[] strArr = abstractC1200.f4642;
        C1232 c1232 = this.f4763;
        C0913 m3808 = c1232.m3808(strArr);
        String[] strArr2 = (String[]) m3808.f3836;
        int[] iArr = (int[]) m3808.f3837;
        C1226 c1226 = new C1226(abstractC1200, iArr, strArr2);
        ReentrantLock reentrantLock = this.f4766;
        reentrantLock.lock();
        try {
            C1226 c12262 = linkedHashMap.containsKey(abstractC1200) ? (C1226) AbstractC5103.m10043(linkedHashMap, abstractC1200) : (C1226) linkedHashMap.put(abstractC1200, c1226);
            reentrantLock.unlock();
            return c12262 == null && c1232.f4783.m1135(iArr);
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }
}

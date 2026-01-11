package androidx.lifecycle;

import android.os.Looper;
import androidx.leanback.widget.RunnableC0142;
import java.util.Map;
import p028.C1118;
import p137.AbstractC2305;
import p322.C3958;
import p322.C3959;
import p365.C4455;
import p365.C4456;
import p365.C4460;

/* renamed from: androidx.lifecycle.ʽʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0161 {

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static final Object f1038 = new Object();

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public boolean f1039;

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f1040;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final RunnableC0142 f1041;

    /* renamed from: ˈ, reason: contains not printable characters */
    public boolean f1042;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public volatile Object f1043;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public int f1044;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public boolean f1045;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C4460 f1046;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Object f1047;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public volatile Object f1048;

    public AbstractC0161() {
        this.f1047 = new Object();
        this.f1046 = new C4460();
        this.f1040 = 0;
        Object obj = f1038;
        this.f1048 = obj;
        this.f1041 = new RunnableC0142(2, this);
        this.f1043 = obj;
        this.f1044 = -1;
    }

    public AbstractC0161(int i) {
        C3958 c3958 = C3959.f15268;
        this.f1047 = new Object();
        this.f1046 = new C4460();
        this.f1040 = 0;
        this.f1048 = f1038;
        this.f1041 = new RunnableC0142(2, this);
        this.f1043 = c3958;
        this.f1044 = 0;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m680(String str) {
        C1118.m3545().f4374.getClass();
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            throw new IllegalStateException(AbstractC2305.m5378("Cannot invoke ", str, " on a background thread"));
        }
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public void m681(Object obj) {
        boolean z;
        synchronized (this.f1047) {
            z = this.f1048 == f1038;
            this.f1048 = obj;
        }
        if (z) {
            C1118.m3545().m3546(this.f1041);
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m682(AbstractC0192 abstractC0192) {
        if (this.f1045) {
            this.f1039 = true;
            return;
        }
        this.f1045 = true;
        do {
            this.f1039 = false;
            if (abstractC0192 != null) {
                m689(abstractC0192);
                abstractC0192 = null;
            } else {
                C4460 c4460 = this.f1046;
                c4460.getClass();
                C4456 c4456 = new C4456(c4460);
                c4460.f16685.put(c4456, Boolean.FALSE);
                while (c4456.hasNext()) {
                    m689((AbstractC0192) ((Map.Entry) c4456.next()).getValue());
                    if (this.f1039) {
                        break;
                    }
                }
            }
        } while (this.f1039);
        this.f1045 = false;
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public void m683(InterfaceC0187 interfaceC0187) {
        m680("removeObserver");
        AbstractC0192 abstractC0192 = (AbstractC0192) this.f1046.mo9007(interfaceC0187);
        if (abstractC0192 == null) {
            return;
        }
        abstractC0192.mo694();
        abstractC0192.m725(false);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final Object m684() {
        Object obj = this.f1043;
        if (obj != f1038) {
            return obj;
        }
        return null;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public void m685(InterfaceC0162 interfaceC0162, InterfaceC0187 interfaceC0187) {
        Object obj;
        m680("observe");
        if (interfaceC0162.mo691().f1076 == EnumC0199.f1101) {
            return;
        }
        C0163 c0163 = new C0163(this, interfaceC0162, interfaceC0187);
        C4460 c4460 = this.f1046;
        C4455 mo9008 = c4460.mo9008(interfaceC0187);
        if (mo9008 != null) {
            obj = mo9008.f16677;
        } else {
            C4455 c4455 = new C4455(interfaceC0187, c0163);
            c4460.f16687++;
            C4455 c44552 = c4460.f16688;
            if (c44552 == null) {
                c4460.f16686 = c4455;
                c4460.f16688 = c4455;
            } else {
                c44552.f16674 = c4455;
                c4455.f16676 = c44552;
                c4460.f16688 = c4455;
            }
            obj = null;
        }
        AbstractC0192 abstractC0192 = (AbstractC0192) obj;
        if (abstractC0192 != null && !abstractC0192.mo692(interfaceC0162)) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (abstractC0192 != null) {
            return;
        }
        interfaceC0162.mo691().m714(c0163);
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public void m686(Object obj) {
        m680("setValue");
        this.f1044++;
        this.f1043 = obj;
        m682(null);
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public void mo687() {
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public void mo688() {
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m689(AbstractC0192 abstractC0192) {
        if (abstractC0192.f1091) {
            if (!abstractC0192.mo693()) {
                abstractC0192.m725(false);
                return;
            }
            int i = abstractC0192.f1088;
            int i2 = this.f1044;
            if (i >= i2) {
                return;
            }
            abstractC0192.f1088 = i2;
            abstractC0192.f1089.mo701(this.f1043);
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m690(InterfaceC0187 interfaceC0187) {
        Object obj;
        m680("observeForever");
        AbstractC0192 abstractC0192 = new AbstractC0192(this, interfaceC0187);
        C4460 c4460 = this.f1046;
        C4455 mo9008 = c4460.mo9008(interfaceC0187);
        if (mo9008 != null) {
            obj = mo9008.f16677;
        } else {
            C4455 c4455 = new C4455(interfaceC0187, abstractC0192);
            c4460.f16687++;
            C4455 c44552 = c4460.f16688;
            if (c44552 == null) {
                c4460.f16686 = c4455;
                c4460.f16688 = c4455;
            } else {
                c44552.f16674 = c4455;
                c4455.f16676 = c44552;
                c4460.f16688 = c4455;
            }
            obj = null;
        }
        AbstractC0192 abstractC01922 = (AbstractC0192) obj;
        if (abstractC01922 instanceof C0163) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (abstractC01922 != null) {
            return;
        }
        abstractC0192.m725(true);
    }
}

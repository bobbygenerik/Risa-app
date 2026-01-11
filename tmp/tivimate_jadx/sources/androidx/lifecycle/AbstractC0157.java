package androidx.lifecycle;

import android.os.Bundle;
import androidx.leanback.widget.ˉˆ;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;
import p013.C0910;
import p013.C0913;
import p026.AbstractC1078;
import p026.C1081;
import p091.C1842;
import p126.C2134;
import p126.InterfaceC2136;
import p126.InterfaceC2139;
import p152.AbstractC2443;
import p153.AbstractC2478;
import p204.C2920;
import p324.AbstractC3999;
import p324.AbstractC4028;
import p324.C4054;
import p333.C4204;
import p333.InterfaceC4202;
import p333.InterfaceC4203;
import p391.C4641;

/* renamed from: androidx.lifecycle.ʼˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0157 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final ˋⁱ.ﾞᴵ f1033 = new Object();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final ـˎ.ˈ f1032 = new ـˎ.ˈ(1);

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final ٴﾞ.ˆʾ f1029 = new ٴﾞ.ˆʾ(1);

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final ﹳˋ.ʼˎ f1030 = new ﹳˋ.ʼˎ(19);

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final ﹳˋ.ʼˎ f1031 = new ﹳˋ.ʼˎ(1);

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C0159 m672(InterfaceC0162 interfaceC0162) {
        C0184 mo691 = interfaceC0162.mo691();
        ˉˆ r0 = mo691.f1081;
        while (true) {
            C0159 c0159 = (C0159) ((AtomicReference) r0.ᴵˊ).get();
            if (c0159 != null) {
                return c0159;
            }
            C4054 m8166 = AbstractC3999.m8166();
            C1842 c1842 = AbstractC4028.f15408;
            C0159 c01592 = new C0159(mo691, com.bumptech.glide.ʽ.ˏי(m8166, AbstractC2478.f9460.f14442));
            AtomicReference atomicReference = (AtomicReference) r0.ᴵˊ;
            while (!atomicReference.compareAndSet(null, c01592)) {
                if (atomicReference.get() != null) {
                    break;
                }
            }
            C1842 c18422 = AbstractC4028.f15408;
            AbstractC3999.m8168(c01592, AbstractC2478.f9460.f14442, new ˉˆ(c01592, (InterfaceC2136) null, 0), 2);
            return c01592;
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C0173 m673(InterfaceC0191 interfaceC0191) {
        return (C0173) new ˏˆ.ﹳٴ(interfaceC0191.mo724(), new ˊˋ(0), interfaceC0191 instanceof InterfaceC0158 ? ((InterfaceC0158) interfaceC0191).mo677() : C1081.f4235).ᵢˏ(AbstractC2443.m5561(C0173.class), "androidx.lifecycle.internal.SavedStateHandlesVM");
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final C2920 m674(AbstractC0196 abstractC0196) {
        C2920 c2920;
        synchronized (f1030) {
            c2920 = (C2920) abstractC0196.m729("androidx.lifecycle.viewmodel.internal.ViewModelCoroutineScope.JOB_KEY");
            if (c2920 == null) {
                InterfaceC2139 interfaceC2139 = C2134.f8324;
                try {
                    C1842 c1842 = AbstractC4028.f15408;
                    interfaceC2139 = AbstractC2478.f9460.f14442;
                } catch (IllegalStateException | C0910 unused) {
                }
                C2920 c29202 = new C2920(interfaceC2139.mo3421(AbstractC3999.m8166()));
                abstractC0196.m727("androidx.lifecycle.viewmodel.internal.ViewModelCoroutineScope.JOB_KEY", c29202);
                c2920 = c29202;
            }
        }
        return c2920;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final void m675(InterfaceC4203 interfaceC4203) {
        EnumC0199 enumC0199 = interfaceC4203.mo691().f1076;
        if (enumC0199 != EnumC0199.f1104 && enumC0199 != EnumC0199.f1100) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (interfaceC4203.mo3852().m6840() == null) {
            C0206 c0206 = new C0206(interfaceC4203.mo3852(), (InterfaceC0191) interfaceC4203);
            interfaceC4203.mo3852().m6832("androidx.lifecycle.internal.SavedStateHandlesProvider", c0206);
            interfaceC4203.mo691().m714(new C4204(2, c0206));
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C0181 m676(AbstractC1078 abstractC1078) {
        C0181 c0181;
        InterfaceC4203 interfaceC4203 = (InterfaceC4203) abstractC1078.mo3424(f1033);
        if (interfaceC4203 == null) {
            throw new IllegalArgumentException("CreationExtras must have a value by `SAVED_STATE_REGISTRY_OWNER_KEY`");
        }
        InterfaceC0191 interfaceC0191 = (InterfaceC0191) abstractC1078.mo3424(f1032);
        if (interfaceC0191 == null) {
            throw new IllegalArgumentException("CreationExtras must have a value by `VIEW_MODEL_STORE_OWNER_KEY`");
        }
        Bundle bundle = (Bundle) abstractC1078.mo3424(f1029);
        String str = (String) abstractC1078.mo3424(f1031);
        if (str == null) {
            throw new IllegalArgumentException("CreationExtras must have a value by `VIEW_MODEL_KEY`");
        }
        InterfaceC4202 m6840 = interfaceC4203.mo3852().m6840();
        Bundle bundle2 = null;
        C0206 c0206 = m6840 instanceof C0206 ? (C0206) m6840 : null;
        if (c0206 == null) {
            throw new IllegalStateException("enableSavedStateHandles() wasn't called prior to createSavedStateHandle() call");
        }
        C0173 m673 = m673(interfaceC0191);
        C0181 c01812 = (C0181) m673.f1063.get(str);
        if (c01812 != null) {
            return c01812;
        }
        c0206.m737();
        Bundle bundle3 = c0206.f1117;
        if (bundle3 != null && bundle3.containsKey(str)) {
            Bundle bundle4 = bundle3.getBundle(str);
            if (bundle4 == null) {
                bundle4 = ˉᵎ.ⁱˊ.ﹳٴ((C0913[]) Arrays.copyOf(new C0913[0], 0));
            }
            bundle3.remove(str);
            if (bundle3.isEmpty()) {
                c0206.f1117 = null;
            }
            bundle2 = bundle4;
        }
        if (bundle2 != null) {
            bundle = bundle2;
        }
        if (bundle == null) {
            c0181 = new C0181();
        } else {
            bundle.setClassLoader(C0181.class.getClassLoader());
            C4641 c4641 = new C4641(bundle.size());
            for (String str2 : bundle.keySet()) {
                c4641.put(str2, bundle.get(str2));
            }
            c0181 = new C0181(c4641.m9212());
        }
        m673.f1063.put(str, c0181);
        return c0181;
    }
}

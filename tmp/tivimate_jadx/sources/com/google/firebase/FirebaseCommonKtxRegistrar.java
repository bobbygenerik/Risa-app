package com.google.firebase;

import androidx.annotation.Keep;
import com.google.firebase.components.ComponentRegistrar;
import java.util.List;
import java.util.concurrent.Executor;
import p145.C2406;
import p180.InterfaceC2749;
import p180.InterfaceC2750;
import p180.InterfaceC2751;
import p180.InterfaceC2752;
import p212.C2982;
import p212.C2988;
import p212.C2994;
import p212.C2995;
import p324.AbstractC4017;
import p430.AbstractC5106;

@Keep
/* loaded from: classes.dex */
public final class FirebaseCommonKtxRegistrar implements ComponentRegistrar {
    @Override // com.google.firebase.components.ComponentRegistrar
    public List<C2994> getComponents() {
        C2995 m6521 = C2994.m6521(new C2988(InterfaceC2752.class, AbstractC4017.class));
        m6521.m6525(new C2982(new C2988(InterfaceC2752.class, Executor.class), 1, 0));
        m6521.f11428 = C2406.f9300;
        C2994 m6524 = m6521.m6524();
        C2995 m65212 = C2994.m6521(new C2988(InterfaceC2749.class, AbstractC4017.class));
        m65212.m6525(new C2982(new C2988(InterfaceC2749.class, Executor.class), 1, 0));
        m65212.f11428 = C2406.f9298;
        C2994 m65242 = m65212.m6524();
        C2995 m65213 = C2994.m6521(new C2988(InterfaceC2751.class, AbstractC4017.class));
        m65213.m6525(new C2982(new C2988(InterfaceC2751.class, Executor.class), 1, 0));
        m65213.f11428 = C2406.f9299;
        C2994 m65243 = m65213.m6524();
        C2995 m65214 = C2994.m6521(new C2988(InterfaceC2750.class, AbstractC4017.class));
        m65214.m6525(new C2982(new C2988(InterfaceC2750.class, Executor.class), 1, 0));
        m65214.f11428 = C2406.f9301;
        return AbstractC5106.m10045(m6524, m65242, m65243, m65214.m6524());
    }
}

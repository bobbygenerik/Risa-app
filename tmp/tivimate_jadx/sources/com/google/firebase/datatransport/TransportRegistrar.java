package com.google.firebase.datatransport;

import android.content.Context;
import androidx.annotation.Keep;
import com.google.firebase.components.ComponentRegistrar;
import java.util.Arrays;
import java.util.List;
import p014.InterfaceC0923;
import p014.InterfaceC0924;
import p139.C2357;
import p212.C2982;
import p212.C2988;
import p212.C2994;
import p212.C2995;
import p212.InterfaceC2984;
import p287.C3588;
import p318.InterfaceC3918;
import ʻʿ.ᵔﹳ;
import ﹳˋ.ٴﹶ;

@Keep
/* loaded from: classes.dex */
public class TransportRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-transport";

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ InterfaceC3918 lambda$getComponents$0(InterfaceC2984 interfaceC2984) {
        C2357.m5443((Context) interfaceC2984.mo6516(Context.class));
        return C2357.m5444().m5445(C3588.f14024);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ InterfaceC3918 lambda$getComponents$1(InterfaceC2984 interfaceC2984) {
        C2357.m5443((Context) interfaceC2984.mo6516(Context.class));
        return C2357.m5444().m5445(C3588.f14024);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ InterfaceC3918 lambda$getComponents$2(InterfaceC2984 interfaceC2984) {
        C2357.m5443((Context) interfaceC2984.mo6516(Context.class));
        return C2357.m5444().m5445(C3588.f14023);
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<C2994> getComponents() {
        C2995 m6522 = C2994.m6522(InterfaceC3918.class);
        m6522.f11427 = "fire-transport";
        m6522.m6525(C2982.m6510(Context.class));
        m6522.f11428 = new ᵔﹳ(2);
        C2994 m6524 = m6522.m6524();
        C2995 m6521 = C2994.m6521(new C2988(InterfaceC0924.class, InterfaceC3918.class));
        m6521.m6525(C2982.m6510(Context.class));
        m6521.f11428 = new ᵔﹳ(3);
        C2994 m65242 = m6521.m6524();
        C2995 m65212 = C2994.m6521(new C2988(InterfaceC0923.class, InterfaceC3918.class));
        m65212.m6525(C2982.m6510(Context.class));
        m65212.f11428 = new ᵔﹳ(4);
        return Arrays.asList(m6524, m65242, m65212.m6524(), ٴﹶ.ʼˎ("fire-transport", "19.0.0"));
    }
}

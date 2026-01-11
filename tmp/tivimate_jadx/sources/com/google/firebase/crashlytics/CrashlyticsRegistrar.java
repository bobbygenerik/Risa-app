package com.google.firebase.crashlytics;

import com.google.firebase.components.ComponentRegistrar;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import p038.InterfaceC1280;
import p107.InterfaceC1940;
import p144.C2396;
import p144.C2400;
import p144.EnumC2397;
import p145.C2405;
import p180.InterfaceC2749;
import p180.InterfaceC2751;
import p180.InterfaceC2752;
import p212.C2982;
import p212.C2988;
import p212.C2994;
import p212.C2995;
import p226.InterfaceC3069;
import p252.C3311;
import p283.C3569;
import p436.C5158;
import ᵎˉ.ⁱˊ;
import ﹳˋ.ٴﹶ;

/* loaded from: classes.dex */
public class CrashlyticsRegistrar implements ComponentRegistrar {

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final /* synthetic */ int f3091 = 0;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2988 f3094 = new C2988(InterfaceC2752.class, ExecutorService.class);

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C2988 f3093 = new C2988(InterfaceC2751.class, ExecutorService.class);

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C2988 f3092 = new C2988(InterfaceC2749.class, ExecutorService.class);

    static {
        Map map = C2396.f9257;
        EnumC2397 enumC2397 = EnumC2397.f9260;
        if (map.containsKey(enumC2397)) {
            String str = "Dependency " + enumC2397 + " already added.";
            return;
        }
        map.put(enumC2397, new C2400(new C5158(true)));
        String str2 = "Dependency to " + enumC2397 + " added.";
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public final List getComponents() {
        C2995 m6522 = C2994.m6522(ⁱˊ.class);
        m6522.f11427 = "fire-cls";
        m6522.m6525(C2982.m6510(C2405.class));
        m6522.m6525(C2982.m6510(InterfaceC1280.class));
        m6522.m6525(new C2982(this.f3094, 1, 0));
        m6522.m6525(new C2982(this.f3093, 1, 0));
        m6522.m6525(new C2982(this.f3092, 1, 0));
        m6522.m6525(new C2982(0, 2, C3311.class));
        m6522.m6525(new C2982(0, 2, InterfaceC1940.class));
        m6522.m6525(new C2982(0, 2, InterfaceC3069.class));
        m6522.f11428 = new C3569(7, this);
        m6522.m6523();
        return Arrays.asList(m6522.m6524(), ٴﹶ.ʼˎ("fire-cls", "20.0.0"));
    }
}

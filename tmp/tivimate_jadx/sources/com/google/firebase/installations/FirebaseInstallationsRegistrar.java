package com.google.firebase.installations;

import androidx.annotation.Keep;
import com.google.firebase.components.ComponentRegistrar;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import p003.C0787;
import p038.C1279;
import p038.InterfaceC1280;
import p145.C2405;
import p180.InterfaceC2751;
import p180.InterfaceC2752;
import p212.C2982;
import p212.C2988;
import p212.C2994;
import p212.C2995;
import p212.InterfaceC2984;
import p221.ExecutorC3040;
import p268.InterfaceC3467;
import ʻʿ.ᵔﹳ;
import ـˎ.ˈ;
import ﹳˋ.ٴﹶ;

@Keep
/* loaded from: classes.dex */
public class FirebaseInstallationsRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-installations";

    /* JADX INFO: Access modifiers changed from: private */
    public static InterfaceC1280 lambda$getComponents$0(InterfaceC2984 interfaceC2984) {
        return new C1279((C2405) interfaceC2984.mo6516(C2405.class), interfaceC2984.mo6514(InterfaceC3467.class), (ExecutorService) interfaceC2984.mo6511(new C2988(InterfaceC2752.class, ExecutorService.class)), new ExecutorC3040((Executor) interfaceC2984.mo6511(new C2988(InterfaceC2751.class, Executor.class))));
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<C2994> getComponents() {
        C2995 m6522 = C2994.m6522(InterfaceC1280.class);
        m6522.f11427 = "fire-installations";
        m6522.m6525(C2982.m6510(C2405.class));
        m6522.m6525(new C2982(0, 1, InterfaceC3467.class));
        m6522.m6525(new C2982(new C2988(InterfaceC2752.class, ExecutorService.class), 1, 0));
        m6522.m6525(new C2982(new C2988(InterfaceC2751.class, Executor.class), 1, 0));
        m6522.f11428 = new ᵔﹳ(20);
        C2994 m6524 = m6522.m6524();
        ˈ r2 = new ˈ(0);
        C2995 m65222 = C2994.m6522(ˈ.class);
        m65222.f11424 = 1;
        m65222.f11428 = new C0787(r2);
        return Arrays.asList(m6524, m65222.m6524(), ٴﹶ.ʼˎ("fire-installations", "18.0.0"));
    }
}

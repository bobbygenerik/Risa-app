package com.google.firebase.analytics.connector.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import com.google.android.gms.internal.measurement.C0248;
import com.google.firebase.components.ComponentRegistrar;
import java.util.Arrays;
import java.util.List;
import p107.C1939;
import p107.InterfaceC1940;
import p145.C2405;
import p181.InterfaceC2753;
import p212.C2982;
import p212.C2985;
import p212.C2994;
import p212.C2995;
import p212.InterfaceC2984;
import p296.AbstractC3659;
import ˋⁱ.ﾞᴵ;
import ﹳˋ.ٴﹶ;

@Keep
/* loaded from: classes.dex */
public class AnalyticsConnectorRegistrar implements ComponentRegistrar {
    /* JADX INFO: Access modifiers changed from: private */
    public static InterfaceC1940 lambda$getComponents$0(InterfaceC2984 interfaceC2984) {
        C2405 c2405 = (C2405) interfaceC2984.mo6516(C2405.class);
        Context context = (Context) interfaceC2984.mo6516(Context.class);
        InterfaceC2753 interfaceC2753 = (InterfaceC2753) interfaceC2984.mo6516(InterfaceC2753.class);
        AbstractC3659.m7687(c2405);
        AbstractC3659.m7687(context);
        AbstractC3659.m7687(interfaceC2753);
        AbstractC3659.m7687(context.getApplicationContext());
        if (C1939.f7700 == null) {
            synchronized (C1939.class) {
                try {
                    if (C1939.f7700 == null) {
                        Bundle bundle = new Bundle(1);
                        c2405.m5512();
                        if ("[DEFAULT]".equals(c2405.f9295)) {
                            ((C2985) interfaceC2753).m6517();
                            bundle.putBoolean("dataCollectionDefaultEnabled", c2405.m5511());
                        }
                        C1939.f7700 = new C1939(C0248.m1196(context, bundle).f1736);
                    }
                } finally {
                }
            }
        }
        return C1939.f7700;
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    @Keep
    @SuppressLint({"MissingPermission"})
    public List<C2994> getComponents() {
        C2995 m6522 = C2994.m6522(InterfaceC1940.class);
        m6522.m6525(C2982.m6510(C2405.class));
        m6522.m6525(C2982.m6510(Context.class));
        m6522.m6525(C2982.m6510(InterfaceC2753.class));
        m6522.f11428 = ﾞᴵ.ᴵˊ;
        m6522.m6523();
        return Arrays.asList(m6522.m6524(), ٴﹶ.ʼˎ("fire-analytics", "23.0.0"));
    }
}

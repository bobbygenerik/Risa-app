package com.google.firebase.sessions;

import android.content.Context;
import androidx.annotation.Keep;
import androidx.leanback.widget.ʻٴ;
import androidx.leanback.widget.ˉˆ;
import com.google.firebase.components.ComponentRegistrar;
import com.parse.ٴʼ;
import java.util.List;
import p038.InterfaceC1280;
import p062.AbstractC1564;
import p062.C1536;
import p062.C1540;
import p062.C1550;
import p062.C1551;
import p062.C1560;
import p062.C1577;
import p062.C1581;
import p062.C1590;
import p062.InterfaceC1585;
import p074.InterfaceC1650;
import p075.C1652;
import p126.InterfaceC2139;
import p145.C2405;
import p180.InterfaceC2751;
import p180.InterfaceC2752;
import p183.C2760;
import p212.C2982;
import p212.C2988;
import p212.C2994;
import p212.C2995;
import p212.InterfaceC2984;
import p318.InterfaceC3918;
import p324.AbstractC4017;
import p404.C4790;
import p430.AbstractC5106;
import p462.C5419;
import p462.InterfaceC5417;
import ˏˆ.ﹳٴ;
import ﹳˋ.ٴﹶ;
import ﹳי.ʽ;

@Keep
/* loaded from: classes.dex */
public final class FirebaseSessionsRegistrar implements ComponentRegistrar {

    @Deprecated
    public static final String LIBRARY_NAME = "fire-sessions";
    private static final C1540 Companion = new Object();
    private static final C2988 appContext = C2988.m6519(Context.class);
    private static final C2988 firebaseApp = C2988.m6519(C2405.class);
    private static final C2988 firebaseInstallationsApi = C2988.m6519(InterfaceC1280.class);
    private static final C2988 backgroundDispatcher = new C2988(InterfaceC2752.class, AbstractC4017.class);
    private static final C2988 blockingDispatcher = new C2988(InterfaceC2751.class, AbstractC4017.class);
    private static final C2988 transportFactory = C2988.m6519(InterfaceC3918.class);
    private static final C2988 firebaseSessionsComponent = C2988.m6519(InterfaceC1585.class);

    public static final C1581 getComponents$lambda$0(InterfaceC2984 interfaceC2984) {
        return (C1581) ((C1536) ((InterfaceC1585) interfaceC2984.mo6511(firebaseSessionsComponent))).f6029.get();
    }

    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Object, ʾˈ.ᵔﹳ, ʾˈ.ʼˎ] */
    public static final InterfaceC1585 getComponents$lambda$1(InterfaceC2984 interfaceC2984) {
        Context context = (Context) interfaceC2984.mo6511(appContext);
        InterfaceC2139 interfaceC2139 = (InterfaceC2139) interfaceC2984.mo6511(backgroundDispatcher);
        InterfaceC2139 interfaceC21392 = (InterfaceC2139) interfaceC2984.mo6511(blockingDispatcher);
        C2405 c2405 = (C2405) interfaceC2984.mo6511(firebaseApp);
        InterfaceC1280 interfaceC1280 = (InterfaceC1280) interfaceC2984.mo6511(firebaseInstallationsApi);
        InterfaceC1650 mo6515 = interfaceC2984.mo6515(transportFactory);
        ?? obj = new Object();
        obj.f6041 = C1652.m4512(c2405);
        C1652 m4512 = C1652.m4512(context);
        obj.f6040 = m4512;
        obj.f6030 = C5419.m10849(new C1590(m4512, 1));
        obj.f6032 = C5419.m10849(AbstractC1564.f6118);
        obj.f6035 = C1652.m4512(interfaceC1280);
        obj.f6043 = C5419.m10849(new C1590(obj.f6041, 0));
        C1652 m45122 = C1652.m4512(interfaceC21392);
        obj.f6037 = m45122;
        obj.f6039 = C5419.m10849(new C1550(obj.f6043, m45122));
        obj.f6028 = C1652.m4512(interfaceC2139);
        obj.f6031 = C5419.m10849(new C1551(obj.f6030, C5419.m10849(new ʻٴ(obj.f6032, obj.f6035, obj.f6043, obj.f6039, C5419.m10849(new ٴʼ(obj.f6028, obj.f6032, C5419.m10849(new C4790(obj.f6040, obj.f6037, 10, false)), 18)), 12)), 1));
        InterfaceC5417 m10849 = C5419.m10849(AbstractC1564.f6117);
        obj.f6036 = m10849;
        obj.f6042 = C5419.m10849(new C1551(obj.f6032, m10849, 0));
        obj.f6033 = C5419.m10849(new ʻٴ(obj.f6041, obj.f6035, obj.f6031, C5419.m10849(new ʽ(C1652.m4512(mo6515))), obj.f6028, 3));
        obj.f6038 = C5419.m10849(new ˑי.ʽ(obj.f6040, obj.f6037, C5419.m10849(new C1577(obj.f6042, 0))));
        InterfaceC5417 m108492 = C5419.m10849(new C2760(obj.f6031, obj.f6042, obj.f6033, obj.f6032, obj.f6038, C5419.m10849(new C1550(obj.f6040, obj.f6036)), obj.f6028, 1));
        obj.f6034 = m108492;
        obj.f6029 = C5419.m10849(new ﹳٴ(obj.f6041, obj.f6031, obj.f6028, C5419.m10849(new ˉˆ(12, m108492)), 8));
        return obj;
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<C2994> getComponents() {
        C2995 m6522 = C2994.m6522(C1581.class);
        m6522.f11427 = "fire-sessions";
        m6522.m6525(C2982.m6509(firebaseSessionsComponent));
        m6522.f11428 = new C1560(0);
        m6522.m6523();
        C2994 m6524 = m6522.m6524();
        C2995 m65222 = C2994.m6522(InterfaceC1585.class);
        m65222.f11427 = "fire-sessions-component";
        m65222.m6525(C2982.m6509(appContext));
        m65222.m6525(C2982.m6509(backgroundDispatcher));
        m65222.m6525(C2982.m6509(blockingDispatcher));
        m65222.m6525(C2982.m6509(firebaseApp));
        m65222.m6525(C2982.m6509(firebaseInstallationsApi));
        m65222.m6525(new C2982(transportFactory, 1, 1));
        m65222.f11428 = new C1560(1);
        return AbstractC5106.m10045(m6524, m65222.m6524(), ٴﹶ.ʼˎ("fire-sessions", "3.0.0"));
    }
}

package p027;

import ar.tvplayer.core.data.api.parse.ˈ;
import ar.tvplayer.core.domain.ʻٴ;
import java.util.ArrayList;
import p229.C3125;
import p238.InterfaceC3206;
import p255.C3368;
import p360.AbstractC4368;
import p360.C4372;

/* renamed from: ʼٴ.ʻٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C1082 implements InterfaceC3206 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ Object f4236;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f4237;

    public /* synthetic */ C1082(int i, Object obj) {
        this.f4237 = i;
        this.f4236 = obj;
    }

    @Override // p238.InterfaceC3206
    public final void accept(Object obj) {
        switch (this.f4237) {
            case 0:
                ArrayList arrayList = new ArrayList();
                new ArrayList();
                C1085 c1085 = new C1085(arrayList);
                ((InterfaceC1114) this.f4236).m3526((C1115) obj, c1085);
                return;
            case 1:
                ((ˈ) this.f4236).getClass();
                boolean z = ʻٴ.ﹳٴ;
                return;
            case 2:
                C4372 c4372 = (C4372) obj;
                if (c4372 == null) {
                    c4372 = new C4372(-3);
                }
                ((C3125) this.f4236).m6824(c4372);
                return;
            default:
                C4372 c43722 = (C4372) obj;
                synchronized (AbstractC4368.f16217) {
                    try {
                        C3368 c3368 = AbstractC4368.f16218;
                        ArrayList arrayList2 = (ArrayList) c3368.get((String) this.f4236);
                        if (arrayList2 == null) {
                            return;
                        }
                        c3368.remove((String) this.f4236);
                        for (int i = 0; i < arrayList2.size(); i++) {
                            ((InterfaceC3206) arrayList2.get(i)).accept(c43722);
                        }
                        return;
                    } finally {
                    }
                }
        }
    }
}

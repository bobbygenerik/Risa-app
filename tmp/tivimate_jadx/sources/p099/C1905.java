package p099;

import java.util.Map;
import p085.InterfaceC1731;
import p085.InterfaceC1732;
import p118.C1996;

/* renamed from: ˆˉ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C1905 implements InterfaceC1731 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f7620;

    @Override // p085.InterfaceC1735
    /* renamed from: ﹳٴ */
    public final void mo4342(Object obj, Object obj2) {
        switch (this.f7620) {
            case 0:
                throw new RuntimeException("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
            case 1:
                Map.Entry entry = (Map.Entry) obj;
                InterfaceC1732 interfaceC1732 = (InterfaceC1732) obj2;
                interfaceC1732.mo4680(C1996.f7855, entry.getKey());
                interfaceC1732.mo4680(C1996.f7856, entry.getValue());
                return;
            default:
                throw new RuntimeException("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
        }
    }
}

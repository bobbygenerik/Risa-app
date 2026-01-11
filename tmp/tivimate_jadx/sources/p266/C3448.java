package p266;

import java.util.Map;
import p095.InterfaceC1883;

/* renamed from: ـˊ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C3448 implements InterfaceC1883 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f13548;

    @Override // p095.InterfaceC1883
    public final boolean apply(Object obj) {
        switch (this.f13548) {
            case 0:
                return ((Map.Entry) obj).getKey() != null;
            default:
                return ((String) obj) != null;
        }
    }
}

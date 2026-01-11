package p029;

import java.util.Iterator;
import p013.InterfaceC0920;
import p435.C5153;

/* renamed from: ʼᴵ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1125 implements InterfaceC1130 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final InterfaceC0920 f4388;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Object f4389;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f4390;

    public /* synthetic */ C1125(Object obj, InterfaceC0920 interfaceC0920, int i) {
        this.f4390 = i;
        this.f4389 = obj;
        this.f4388 = interfaceC0920;
    }

    @Override // p029.InterfaceC1130
    public final Iterator iterator() {
        switch (this.f4390) {
            case 0:
                return new C1122(this);
            default:
                return new C5153(this);
        }
    }
}

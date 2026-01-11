package p029;

import java.util.Iterator;
import p152.C2457;
import p329.InterfaceC4104;
import p386.InterfaceC4615;
import p435.C5153;

/* renamed from: ʼᴵ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1120 implements Iterable, InterfaceC4615 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f4376;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Object f4377;

    public /* synthetic */ C1120(int i, Object obj) {
        this.f4376 = i;
        this.f4377 = obj;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        switch (this.f4376) {
            case 0:
                return new C5153((C1125) this.f4377);
            case 1:
                return new C2457(0, (Object[]) this.f4377);
            default:
                return new C1128((Iterator) ((InterfaceC4104) this.f4377).mo716());
        }
    }
}

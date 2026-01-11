package p000;

import android.util.Pair;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
import p003.C0779;
import p305.C3733;
import p305.InterfaceC3718;
import p392.C4674;
import p395.C4715;
import p420.C4987;

/* renamed from: ʻʻ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0761 implements Runnable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ Object f3143;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f3144;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ Object f3145;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ int f3146;

    public /* synthetic */ RunnableC0761(Object obj, int i, Object obj2, int i2) {
        this.f3144 = i2;
        this.f3143 = obj;
        this.f3146 = i;
        this.f3145 = obj2;
    }

    public /* synthetic */ RunnableC0761(Object obj, Object obj2, int i, int i2) {
        this.f3144 = i2;
        this.f3143 = obj;
        this.f3145 = obj2;
        this.f3146 = i;
    }

    /* JADX WARN: Type inference failed for: r2v8, types: [ⁱᴵ.ˆʾ, java.lang.Object] */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3144) {
            case 0:
                ((InterfaceC0756) ((C0754) this.f3143).f3117).m2760(this.f3146, this.f3145);
                return;
            case 1:
                CopyOnWriteArraySet copyOnWriteArraySet = (CopyOnWriteArraySet) this.f3143;
                InterfaceC3718 interfaceC3718 = (InterfaceC3718) this.f3145;
                Iterator it = copyOnWriteArraySet.iterator();
                while (it.hasNext()) {
                    C3733 c3733 = (C3733) it.next();
                    if (!c3733.f14536) {
                        int i = this.f3146;
                        if (i != -1) {
                            c3733.f14537.ⁱˊ(i);
                        }
                        c3733.f14535 = true;
                        interfaceC3718.mo2801(c3733.f14538);
                    }
                }
                return;
            case 2:
                C4674 c4674 = (C4674) this.f3143;
                Pair pair = (Pair) this.f3145;
                ((C0779) c4674.f17527.f10680).mo2827(((Integer) pair.first).intValue(), (C4987) pair.second, this.f3146);
                return;
            default:
                C4715 c4715 = (C4715) this.f3143;
                this.f3145.mo2827(c4715.f17810, c4715.f17809, this.f3146);
                return;
        }
    }
}

package p420;

import android.os.Handler;
import java.util.HashMap;
import java.util.Iterator;
import p003.C0783;
import p055.AbstractC1445;
import p266.InterfaceC3457;
import p305.AbstractC3731;

/* renamed from: ﹳᵢ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4948 extends AbstractC4990 {

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final HashMap f18416 = new HashMap();

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public InterfaceC3457 f18417;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public Handler f18418;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public abstract void mo9745(Object obj, AbstractC4990 abstractC4990, AbstractC1445 abstractC1445);

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public long mo9746(long j, Object obj) {
        return j;
    }

    @Override // p420.AbstractC4990
    /* renamed from: ʾᵎ */
    public void mo5098() {
        HashMap hashMap = this.f18416;
        for (C4939 c4939 : hashMap.values()) {
            InterfaceC4975 interfaceC4975 = c4939.f18402;
            C4985 c4985 = c4939.f18400;
            interfaceC4975.mo9801(c4939.f18401);
            interfaceC4975.mo9796(c4985);
            interfaceC4975.mo9798(c4985);
        }
        hashMap.clear();
    }

    @Override // p420.InterfaceC4975
    /* renamed from: ˈ */
    public void mo5099() {
        Iterator it = this.f18416.values().iterator();
        while (it.hasNext()) {
            ((C4939) it.next()).f18402.mo5099();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [ﹳᵢ.ᵎﹶ, ﹳᵢ.ʾˋ] */
    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final void m9747(final Integer num, InterfaceC4975 interfaceC4975) {
        HashMap hashMap = this.f18416;
        AbstractC3731.m7849(!hashMap.containsKey(num));
        ?? r1 = new InterfaceC4944() { // from class: ﹳᵢ.ᵎﹶ
            @Override // p420.InterfaceC4944
            /* renamed from: ﹳٴ */
            public final void mo9405(AbstractC4990 abstractC4990, AbstractC1445 abstractC1445) {
                AbstractC4948.this.mo9745(num, abstractC4990, abstractC1445);
            }
        };
        C4985 c4985 = new C4985(this, num);
        hashMap.put(num, new C4939(interfaceC4975, r1, c4985));
        Handler handler = this.f18418;
        handler.getClass();
        interfaceC4975.mo9800(handler, c4985);
        Handler handler2 = this.f18418;
        handler2.getClass();
        interfaceC4975.mo9803(handler2, c4985);
        InterfaceC3457 interfaceC3457 = this.f18417;
        C0783 c0783 = this.f18641;
        AbstractC3731.m7868(c0783);
        interfaceC4975.mo9802(r1, interfaceC3457, c0783);
        if (this.f18642.isEmpty()) {
            interfaceC4975.mo9799(r1);
        }
    }

    @Override // p420.AbstractC4990
    /* renamed from: יـ, reason: contains not printable characters */
    public final void mo9748() {
        for (C4939 c4939 : this.f18416.values()) {
            c4939.f18402.mo9797(c4939.f18401);
        }
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int mo9749(int i, Object obj) {
        return i;
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public abstract C4987 mo9750(Object obj, C4987 c4987);

    @Override // p420.AbstractC4990
    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final void mo9751() {
        for (C4939 c4939 : this.f18416.values()) {
            c4939.f18402.mo9799(c4939.f18401);
        }
    }
}

package p391;

import java.util.Iterator;
import java.util.NoSuchElementException;
import p124.AbstractC2128;
import p386.InterfaceC4615;

/* renamed from: ⁱˏ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4635 extends AbstractC2128 implements Iterator, InterfaceC4615 {

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ int f17313;

    public C4635(C4641 c4641, int i) {
        this.f17313 = i;
        this.f8314 = c4641;
        this.f8315 = -1;
        this.f8312 = c4641.f17335;
        m5089();
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.f17313) {
            case 0:
                m5091();
                int i = this.f8313;
                C4641 c4641 = (C4641) this.f8314;
                if (i >= c4641.f17336) {
                    throw new NoSuchElementException();
                }
                this.f8313 = i + 1;
                this.f8315 = i;
                C4636 c4636 = new C4636(c4641, i);
                m5089();
                return c4636;
            case 1:
                m5091();
                int i2 = this.f8313;
                C4641 c46412 = (C4641) this.f8314;
                if (i2 >= c46412.f17336) {
                    throw new NoSuchElementException();
                }
                this.f8313 = i2 + 1;
                this.f8315 = i2;
                Object obj = c46412.f17332[i2];
                m5089();
                return obj;
            default:
                m5091();
                int i3 = this.f8313;
                C4641 c46413 = (C4641) this.f8314;
                if (i3 >= c46413.f17336) {
                    throw new NoSuchElementException();
                }
                this.f8313 = i3 + 1;
                this.f8315 = i3;
                Object obj2 = c46413.f17339[i3];
                m5089();
                return obj2;
        }
    }
}

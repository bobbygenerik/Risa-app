package p052;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* renamed from: ʽᴵ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1424 extends AbstractC1430 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C1428 f5570 = new C1428(2);

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ int f5571;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final AbstractC1430 f5572;

    public C1424(AbstractC1430 abstractC1430, int i) {
        this.f5571 = i;
        this.f5572 = abstractC1430;
    }

    public final String toString() {
        return this.f5572 + ".collection()";
    }

    @Override // p052.AbstractC1430
    /* renamed from: ˑﹳ */
    public final void mo4119(AbstractC1429 abstractC1429, Object obj) {
        switch (this.f5571) {
            case 0:
                abstractC1429.mo4177();
                Iterator it = ((Collection) obj).iterator();
                while (it.hasNext()) {
                    this.f5572.mo4119(abstractC1429, it.next());
                }
                ((C1425) abstractC1429).m4185(1, 2, ']');
                return;
            default:
                abstractC1429.mo4177();
                Iterator it2 = ((Collection) obj).iterator();
                while (it2.hasNext()) {
                    this.f5572.mo4119(abstractC1429, it2.next());
                }
                ((C1425) abstractC1429).m4185(1, 2, ']');
                return;
        }
    }

    @Override // p052.AbstractC1430
    /* renamed from: ⁱˊ */
    public final Object mo4120(AbstractC1413 abstractC1413) {
        switch (this.f5571) {
            case 0:
                Collection m4175 = m4175();
                abstractC1413.mo4122();
                while (abstractC1413.mo4125()) {
                    ((ArrayList) m4175).add(this.f5572.mo4120(abstractC1413));
                }
                abstractC1413.mo4130();
                return m4175;
            default:
                Collection m41752 = m4175();
                abstractC1413.mo4122();
                while (abstractC1413.mo4125()) {
                    m41752.add(this.f5572.mo4120(abstractC1413));
                }
                abstractC1413.mo4130();
                return m41752;
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final Collection m4175() {
        switch (this.f5571) {
            case 0:
                return new ArrayList();
            default:
                return new LinkedHashSet();
        }
    }
}

package p036;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import p013.C0907;
import p152.AbstractC2452;
import p229.AbstractC3111;
import p229.C3081;
import p229.C3085;
import p229.C3096;
import p229.C3131;
import p229.C3133;
import p329.InterfaceC4106;
import p430.AbstractC5099;
import p430.C5109;
import ˉˑ.ʽ;

/* renamed from: ʽ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1257 extends AbstractC2452 implements InterfaceC4106 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ C1254 f4879;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ int f4880;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1257(C1254 c1254, int i) {
        super(1);
        this.f4880 = i;
        this.f4879 = c1254;
    }

    @Override // p329.InterfaceC4106
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Object mo3844(Object obj) {
        Object obj2;
        Object obj3;
        switch (this.f4880) {
            case 0:
                C1254 c1254 = this.f4879;
                C5109 c5109 = c1254.f4870;
                ListIterator listIterator = c5109.listIterator(c5109.mo9193());
                while (true) {
                    if (listIterator.hasPrevious()) {
                        obj2 = listIterator.previous();
                        if (((C3131) obj2).f11965) {
                        }
                    } else {
                        obj2 = null;
                    }
                }
                C3131 c3131 = (C3131) obj2;
                c1254.f4866 = c3131;
                if (c3131 != null) {
                    C3085 c3085 = c3131.f11963;
                    if (C3085.m6654(3)) {
                        String str = "handleOnBackStarted. PREDICTIVE_BACK = true fragment manager " + c3085;
                    }
                    c3085.m6665();
                    c3085.m6657(new C3096(c3085), false);
                }
                return C0907.f3832;
            default:
                C1267 c1267 = (C1267) obj;
                C1254 c12542 = this.f4879;
                C3131 c31312 = c12542.f4866;
                if (c31312 == null) {
                    C5109 c51092 = c12542.f4870;
                    ListIterator listIterator2 = c51092.listIterator(c51092.mo9193());
                    while (true) {
                        if (listIterator2.hasPrevious()) {
                            obj3 = listIterator2.previous();
                            if (((C3131) obj3).f11965) {
                            }
                        } else {
                            obj3 = null;
                        }
                    }
                    c31312 = (C3131) obj3;
                }
                if (c31312 != null) {
                    C3085 c30852 = c31312.f11963;
                    if (C3085.m6654(2)) {
                        String str2 = "handleOnBackProgressed. PREDICTIVE_BACK = true fragment manager " + c30852;
                    }
                    if (c30852.f11756 != null) {
                        int i = 0;
                        Iterator it = c30852.m6715(new ArrayList(Collections.singletonList(c30852.f11756)), 0, 1).iterator();
                        while (it.hasNext()) {
                            C3133 c3133 = (C3133) it.next();
                            c3133.getClass();
                            if (C3085.m6654(2)) {
                                String str3 = "SpecialEffectsController: Processing Progress " + c1267.f4920;
                            }
                            ArrayList arrayList = c3133.f11971;
                            ArrayList arrayList2 = new ArrayList();
                            int size = arrayList.size();
                            int i2 = 0;
                            while (i2 < size) {
                                Object obj4 = arrayList.get(i2);
                                i2++;
                                AbstractC5099.m10033(((C3081) obj4).f11705, arrayList2);
                            }
                            List m10020 = AbstractC5099.m10020(AbstractC5099.m10031(arrayList2));
                            int size2 = m10020.size();
                            for (int i3 = 0; i3 < size2; i3++) {
                                ((AbstractC3111) m10020.get(i3)).mo6638(c1267);
                            }
                        }
                        ArrayList arrayList3 = c30852.f11736;
                        int size3 = arrayList3.size();
                        while (i < size3) {
                            Object obj5 = arrayList3.get(i);
                            i++;
                            ((ʽ) obj5).getClass();
                        }
                    }
                }
                return C0907.f3832;
        }
    }
}

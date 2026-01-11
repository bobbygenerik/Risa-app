package p420;

import androidx.media3.exoplayer.source.MergingMediaSource$IllegalMergeException;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import p017.AbstractC0993;
import p017.AbstractC1004;
import p017.C0944;
import p017.C0956;
import p017.C0963;
import p017.C0982;
import p017.C0989;
import p055.AbstractC1445;
import p055.C1450;
import p055.C1452;
import p055.C1468;
import p055.C1473;
import p055.C1480;
import p055.C1482;
import p055.C1491;
import p266.InterfaceC3457;
import p305.AbstractC3712;
import p364.C4443;
import p366.C4472;

/* renamed from: ﹳᵢ.ᵎˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4978 extends AbstractC4948 {

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public static final C1480 f18570;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final AbstractC1445[] f18571;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public final C4472 f18572;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public MergingMediaSource$IllegalMergeException f18573;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public long[][] f18574;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public int f18575;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final InterfaceC4975[] f18576;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final ArrayList f18577;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public final ArrayList f18578;

    /* JADX WARN: Type inference failed for: r4v0, types: [ʽⁱ.ʻٴ, ʽⁱ.ʽﹳ] */
    static {
        C1468 c1468 = new C1468();
        C0982 c0982 = AbstractC0993.f3977;
        C0956 c0956 = C0956.f3901;
        List list = Collections.EMPTY_LIST;
        C0956 c09562 = C0956.f3901;
        C1473 c1473 = new C1473();
        f18570 = new C1480("MergingMediaSource", new C1450(c1468), null, new C1452(c1473), C1482.f5805, C1491.f5888);
    }

    public C4978(InterfaceC4975... interfaceC4975Arr) {
        C4472 c4472 = new C4472(5);
        this.f18576 = interfaceC4975Arr;
        this.f18572 = c4472;
        this.f18578 = new ArrayList(Arrays.asList(interfaceC4975Arr));
        this.f18575 = -1;
        this.f18577 = new ArrayList(interfaceC4975Arr.length);
        for (int i = 0; i < interfaceC4975Arr.length; i++) {
            this.f18577.add(new ArrayList());
        }
        this.f18571 = new AbstractC1445[interfaceC4975Arr.length];
        this.f18574 = new long[0];
        new HashMap();
        AbstractC1004.m3282(8, "expectedKeys");
        AbstractC1004.m3282(2, "expectedValuesPerKey");
        new C0989(C0944.m3209(8)).f3969 = new C0963();
    }

    /* JADX WARN: Type inference failed for: r7v2, types: [androidx.media3.exoplayer.source.MergingMediaSource$IllegalMergeException, java.io.IOException] */
    @Override // p420.AbstractC4948
    /* renamed from: ʽʽ */
    public final void mo9745(Object obj, AbstractC4990 abstractC4990, AbstractC1445 abstractC1445) {
        Integer num = (Integer) obj;
        if (this.f18573 != null) {
            return;
        }
        if (this.f18575 == -1) {
            this.f18575 = abstractC1445.mo4227();
        } else if (abstractC1445.mo4227() != this.f18575) {
            this.f18573 = new IOException();
            return;
        }
        int length = this.f18574.length;
        AbstractC1445[] abstractC1445Arr = this.f18571;
        if (length == 0) {
            this.f18574 = (long[][]) Array.newInstance((Class<?>) Long.TYPE, this.f18575, abstractC1445Arr.length);
        }
        ArrayList arrayList = this.f18578;
        arrayList.remove(abstractC4990);
        abstractC1445Arr[num.intValue()] = abstractC1445;
        if (arrayList.isEmpty()) {
            m9840(abstractC1445Arr[0]);
        }
    }

    @Override // p420.AbstractC4948, p420.AbstractC4990
    /* renamed from: ʾᵎ */
    public final void mo5098() {
        super.mo5098();
        Arrays.fill(this.f18571, (Object) null);
        this.f18575 = -1;
        this.f18573 = null;
        ArrayList arrayList = this.f18578;
        arrayList.clear();
        Collections.addAll(arrayList, this.f18576);
    }

    @Override // p420.AbstractC4948, p420.InterfaceC4975
    /* renamed from: ˈ */
    public final void mo5099() {
        MergingMediaSource$IllegalMergeException mergingMediaSource$IllegalMergeException = this.f18573;
        if (mergingMediaSource$IllegalMergeException != null) {
            throw mergingMediaSource$IllegalMergeException;
        }
        super.mo5099();
    }

    @Override // p420.AbstractC4990
    /* renamed from: ˏי */
    public final void mo5100(InterfaceC3457 interfaceC3457) {
        this.f18417 = interfaceC3457;
        this.f18418 = AbstractC3712.m7759(null);
        int i = 0;
        while (true) {
            InterfaceC4975[] interfaceC4975Arr = this.f18576;
            if (i >= interfaceC4975Arr.length) {
                return;
            }
            m9747(Integer.valueOf(i), interfaceC4975Arr[i]);
            i++;
        }
    }

    @Override // p420.InterfaceC4975
    /* renamed from: ˑﹳ */
    public final void mo5101(InterfaceC4945 interfaceC4945) {
        C4980 c4980 = (C4980) interfaceC4945;
        int i = 0;
        while (true) {
            InterfaceC4975[] interfaceC4975Arr = this.f18576;
            if (i >= interfaceC4975Arr.length) {
                return;
            }
            List list = (List) this.f18577.get(i);
            InterfaceC4945[] interfaceC4945Arr = c4980.f18583;
            boolean[] zArr = c4980.f18589;
            InterfaceC4945 interfaceC49452 = zArr[i] ? ((C4963) interfaceC4945Arr[i]).f18490 : interfaceC4945Arr[i];
            int i2 = 0;
            while (true) {
                if (i2 >= list.size()) {
                    break;
                }
                if (((C4969) list.get(i2)).f18512.equals(interfaceC49452)) {
                    list.remove(i2);
                    break;
                }
                i2++;
            }
            InterfaceC4975 interfaceC4975 = interfaceC4975Arr[i];
            InterfaceC4945[] interfaceC4945Arr2 = c4980.f18583;
            interfaceC4975.mo5101(zArr[i] ? ((C4963) interfaceC4945Arr2[i]).f18490 : interfaceC4945Arr2[i]);
            i++;
        }
    }

    @Override // p420.InterfaceC4975
    /* renamed from: ᵔʾ */
    public final void mo5102(C1480 c1480) {
        this.f18576[0].mo5102(c1480);
    }

    @Override // p420.AbstractC4948
    /* renamed from: ᵢˏ */
    public final C4987 mo9750(Object obj, C4987 c4987) {
        int intValue = ((Integer) obj).intValue();
        ArrayList arrayList = this.f18577;
        List list = (List) arrayList.get(intValue);
        for (int i = 0; i < list.size(); i++) {
            if (((C4969) list.get(i)).f18513.equals(c4987)) {
                return ((C4969) ((List) arrayList.get(0)).get(i)).f18513;
            }
        }
        return null;
    }

    @Override // p420.InterfaceC4975
    /* renamed from: ⁱˊ */
    public final InterfaceC4945 mo5104(C4987 c4987, C4443 c4443, long j) {
        InterfaceC4975[] interfaceC4975Arr = this.f18576;
        int length = interfaceC4975Arr.length;
        InterfaceC4945[] interfaceC4945Arr = new InterfaceC4945[length];
        AbstractC1445[] abstractC1445Arr = this.f18571;
        int mo4228 = abstractC1445Arr[0].mo4228(c4987.f18631);
        for (int i = 0; i < length; i++) {
            C4987 m9839 = c4987.m9839(abstractC1445Arr[i].mo4230(mo4228));
            interfaceC4945Arr[i] = interfaceC4975Arr[i].mo5104(m9839, c4443, j - this.f18574[mo4228][i]);
            ((List) this.f18577.get(i)).add(new C4969(m9839, interfaceC4945Arr[i]));
        }
        return new C4980(this.f18572, this.f18574[mo4228], interfaceC4945Arr);
    }

    @Override // p420.InterfaceC4975
    /* renamed from: ﹳٴ */
    public final C1480 mo5105() {
        InterfaceC4975[] interfaceC4975Arr = this.f18576;
        return interfaceC4975Arr.length > 0 ? interfaceC4975Arr[0].mo5105() : f18570;
    }
}

package p420;

import androidx.media3.exoplayer.source.ClippingMediaSource$IllegalClippingException;
import java.util.ArrayList;
import p055.AbstractC1445;
import p055.C1466;
import p305.AbstractC3731;
import p364.C4443;

/* renamed from: ﹳᵢ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4993 extends AbstractC4960 {

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public long f18648;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final boolean f18649;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public final C1466 f18650;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public long f18651;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public ClippingMediaSource$IllegalClippingException f18652;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public C4965 f18653;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final long f18654;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public final ArrayList f18655;

    public C4993(C4950 c4950) {
        super(c4950.f18423);
        this.f18654 = c4950.f18422;
        this.f18649 = c4950.f18420;
        this.f18655 = new ArrayList();
        this.f18650 = new C1466();
    }

    @Override // p420.AbstractC4948, p420.AbstractC4990
    /* renamed from: ʾᵎ */
    public final void mo5098() {
        super.mo5098();
        this.f18652 = null;
        this.f18653 = null;
    }

    @Override // p420.AbstractC4948, p420.InterfaceC4975
    /* renamed from: ˈ */
    public final void mo5099() {
        ClippingMediaSource$IllegalClippingException clippingMediaSource$IllegalClippingException = this.f18652;
        if (clippingMediaSource$IllegalClippingException != null) {
            throw clippingMediaSource$IllegalClippingException;
        }
        super.mo5099();
    }

    @Override // p420.AbstractC4960
    /* renamed from: ˊʻ */
    public final void mo9736(AbstractC1445 abstractC1445) {
        if (this.f18652 != null) {
            return;
        }
        m9842(abstractC1445);
    }

    @Override // p420.InterfaceC4975
    /* renamed from: ˑﹳ */
    public final void mo5101(InterfaceC4945 interfaceC4945) {
        ArrayList arrayList = this.f18655;
        AbstractC3731.m7857(arrayList.remove(interfaceC4945));
        this.f18442.mo5101(((C4941) interfaceC4945).f18405);
        if (arrayList.isEmpty()) {
            C4965 c4965 = this.f18653;
            c4965.getClass();
            m9842(c4965.f18403);
        }
    }

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final void m9842(AbstractC1445 abstractC1445) {
        long j;
        C1466 c1466 = this.f18650;
        abstractC1445.m4226(0, c1466);
        long j2 = c1466.f5729;
        C4965 c4965 = this.f18653;
        long j3 = this.f18654;
        ArrayList arrayList = this.f18655;
        if (c4965 == null || arrayList.isEmpty()) {
            this.f18651 = j2;
            this.f18648 = j3 != Long.MIN_VALUE ? j2 + j3 : Long.MIN_VALUE;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                C4941 c4941 = (C4941) arrayList.get(i);
                long j4 = this.f18651;
                long j5 = this.f18648;
                c4941.f18410 = j4;
                c4941.f18407 = j5;
            }
            j = 0;
        } else {
            j = this.f18651 - j2;
            j3 = j3 == Long.MIN_VALUE ? Long.MIN_VALUE : this.f18648 - j2;
        }
        try {
            C4965 c49652 = new C4965(abstractC1445, j, j3);
            this.f18653 = c49652;
            m9840(c49652);
        } catch (ClippingMediaSource$IllegalClippingException e) {
            this.f18652 = e;
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                ((C4941) arrayList.get(i2)).f18408 = this.f18652;
            }
        }
    }

    @Override // p420.InterfaceC4975
    /* renamed from: ⁱˊ */
    public final InterfaceC4945 mo5104(C4987 c4987, C4443 c4443, long j) {
        C4941 c4941 = new C4941(this.f18442.mo5104(c4987, c4443, j), this.f18649, this.f18651, this.f18648);
        this.f18655.add(c4941);
        return c4941;
    }
}

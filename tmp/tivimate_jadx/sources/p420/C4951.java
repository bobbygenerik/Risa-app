package p420;

import java.io.IOException;
import p262.C3433;
import p364.C4441;
import p364.HandlerC4439;
import p421.C4996;

/* renamed from: ﹳᵢ.ˈʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4951 implements InterfaceC4956 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f18424;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C4961 f18425;

    public C4951(C4961 c4961, int i) {
        this.f18425 = c4961;
        this.f18424 = i;
    }

    @Override // p420.InterfaceC4956
    /* renamed from: ʽ */
    public final void mo3459() {
        int i = this.f18424;
        C4961 c4961 = this.f18425;
        c4961.f18466[i].m9830();
        C4441 c4441 = c4961.f18481;
        int m3145 = c4961.f18455.m3145(c4961.f18463);
        IOException iOException = c4441.f16593;
        if (iOException != null) {
            throw iOException;
        }
        HandlerC4439 handlerC4439 = c4441.f16595;
        if (handlerC4439 != null) {
            if (m3145 == Integer.MIN_VALUE) {
                m3145 = handlerC4439.f16581;
            }
            IOException iOException2 = handlerC4439.f16588;
            if (iOException2 != null && handlerC4439.f16584 > m3145) {
                throw iOException2;
            }
        }
    }

    @Override // p420.InterfaceC4956
    /* renamed from: ᵔᵢ */
    public final int mo3472(C3433 c3433, C4996 c4996, int i) {
        C4961 c4961 = this.f18425;
        if (c4961.m9784()) {
            return -3;
        }
        int i2 = this.f18424;
        c4961.m9785(i2);
        int m9808 = c4961.f18466[i2].m9808(c3433, c4996, i, c4961.f18470);
        if (m9808 == -3) {
            c4961.m9779(i2);
        }
        return m9808;
    }

    @Override // p420.InterfaceC4956
    /* renamed from: ᵔﹳ */
    public final int mo3473(long j) {
        C4961 c4961 = this.f18425;
        if (c4961.m9784()) {
            return 0;
        }
        int i = this.f18424;
        c4961.m9785(i);
        C4976 c4976 = c4961.f18466[i];
        int m9804 = c4976.m9804(c4961.f18470, j);
        c4976.m9825(m9804);
        if (m9804 == 0) {
            c4961.m9779(i);
        }
        return m9804;
    }

    @Override // p420.InterfaceC4956
    /* renamed from: ﹳٴ */
    public final boolean mo3475() {
        C4961 c4961 = this.f18425;
        return !c4961.m9784() && c4961.f18466[this.f18424].m9811(c4961.f18470);
    }
}

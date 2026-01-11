package p407;

import java.io.IOException;
import p210.C2975;
import p262.C3433;
import p453.AbstractC5372;

/* renamed from: ﹳˈ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4837 extends AbstractC5372 {

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public short f18137;

    @Override // p453.AbstractC5372
    /* renamed from: ٴʼ */
    public final void mo9635(C3433 c3433) {
        C2975 c2975 = (C2975) c3433.f13456;
        super.mo9635(c3433);
        int ordinal = this.f20468.ordinal();
        if (ordinal == 12) {
            this.f18137 = (short) c2975.readUnsignedShort();
            c2975.readUnsignedShort();
            c3433.m7336(this.f20470 - 20);
        } else if (ordinal == 13) {
            c3433.m7336(this.f20470 - 16);
        } else {
            throw new IOException("Invalid PDU type: " + this.f20468);
        }
    }
}

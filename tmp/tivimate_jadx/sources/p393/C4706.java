package p393;

import java.io.IOException;
import p013.C0907;
import p152.C2448;
import p164.C2586;
import p164.InterfaceC2592;
import p329.InterfaceC4087;

/* renamed from: ⁱٴ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C4706 implements InterfaceC4087 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ C2448 f17790;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f17791 = 1;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ C2448 f17792;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C2448 f17793;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC2592 f17794;

    public /* synthetic */ C4706(C2448 c2448, C2586 c2586, C2448 c24482, C2448 c24483) {
        this.f17793 = c2448;
        this.f17794 = c2586;
        this.f17790 = c24482;
        this.f17792 = c24483;
    }

    public /* synthetic */ C4706(InterfaceC2592 interfaceC2592, C2448 c2448, C2448 c24482, C2448 c24483) {
        this.f17794 = interfaceC2592;
        this.f17793 = c2448;
        this.f17790 = c24482;
        this.f17792 = c24483;
    }

    @Override // p329.InterfaceC4087
    /* renamed from: ʼˎ */
    public final Object mo3749(Object obj, Object obj2) {
        switch (this.f17791) {
            case 0:
                int intValue = ((Integer) obj).intValue();
                long longValue = ((Long) obj2).longValue();
                if (intValue == 21589) {
                    if (longValue < 1) {
                        throw new IOException("bad zip: extended timestamp extra too short");
                    }
                    InterfaceC2592 interfaceC2592 = this.f17794;
                    byte readByte = interfaceC2592.readByte();
                    boolean z = (readByte & 1) == 1;
                    boolean z2 = (readByte & 2) == 2;
                    boolean z3 = (readByte & 4) == 4;
                    long j = z ? 5L : 1L;
                    if (z2) {
                        j += 4;
                    }
                    if (z3) {
                        j += 4;
                    }
                    if (longValue < j) {
                        throw new IOException("bad zip: extended timestamp extra too short");
                    }
                    if (z) {
                        this.f17793.f9409 = Integer.valueOf(interfaceC2592.mo5801());
                    }
                    if (z2) {
                        this.f17790.f9409 = Integer.valueOf(interfaceC2592.mo5801());
                    }
                    if (z3) {
                        this.f17792.f9409 = Integer.valueOf(interfaceC2592.mo5801());
                    }
                }
                return C0907.f3832;
            default:
                C2586 c2586 = (C2586) this.f17794;
                int intValue2 = ((Integer) obj).intValue();
                long longValue2 = ((Long) obj2).longValue();
                if (intValue2 == 1) {
                    C2448 c2448 = this.f17793;
                    if (c2448.f9409 != null) {
                        throw new IOException("bad zip: NTFS extra attribute tag 0x0001 repeated");
                    }
                    if (longValue2 != 24) {
                        throw new IOException("bad zip: NTFS extra attribute tag 0x0001 size != 24");
                    }
                    c2448.f9409 = Long.valueOf(c2586.m5806());
                    this.f17790.f9409 = Long.valueOf(c2586.m5806());
                    this.f17792.f9409 = Long.valueOf(c2586.m5806());
                }
                return C0907.f3832;
        }
    }
}

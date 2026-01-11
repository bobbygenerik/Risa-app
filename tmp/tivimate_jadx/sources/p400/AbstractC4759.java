package p400;

import java.rmi.UnmarshalException;
import p092.EnumC1852;
import p092.InterfaceC1851;
import p210.C2975;
import p262.C3433;

/* renamed from: ⁱﾞ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4759 implements InterfaceC1851 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public C4757 f17972;

    @Override // p092.InterfaceC1851
    /* renamed from: ʽ */
    public final void mo4784(C3433 c3433) {
    }

    @Override // p092.InterfaceC1851
    /* renamed from: ⁱˊ */
    public final void mo4785(C3433 c3433) {
        C4757 c4757 = this.f17972;
        if (c4757 != null) {
            c3433.m7324(c4757);
        }
    }

    /* JADX WARN: Type inference failed for: r6v7, types: [ⁱﾞ.ˈ, java.lang.Object] */
    @Override // p092.InterfaceC1851
    /* renamed from: ﹳٴ */
    public final void mo4786(C3433 c3433) {
        c3433.m7333(EnumC1852.FOUR);
        C2975 c2975 = (C2975) c3433.f13456;
        int readInt = c2975.readInt();
        if (readInt != 1) {
            throw new UnmarshalException(String.format("Expected info level %d, got: %d", 1, Integer.valueOf(readInt)));
        }
        int readInt2 = c2975.readInt();
        if (readInt2 != readInt) {
            throw new UnmarshalException(String.format("Expected info level %d to match enum level, got: %d", Integer.valueOf(readInt), Integer.valueOf(readInt2)));
        }
        if (c2975.readInt() != 0) {
            this.f17972 = new Object();
        } else {
            this.f17972 = null;
        }
    }
}

package p335;

import java.io.File;
import p031.C1144;
import p185.C2765;
import p191.C2875;
import p208.InterfaceC2947;
import p383.C4579;
import p383.C4586;
import p383.C4593;
import p383.C4601;
import p383.InterfaceC4578;

/* renamed from: ᵎʼ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4208 implements InterfaceC4578 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Object f15654;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f15655;

    public /* synthetic */ C4208(int i, Object obj) {
        this.f15655 = i;
        this.f15654 = obj;
    }

    @Override // p383.InterfaceC4578
    /* renamed from: ⁱˊ */
    public final boolean mo4899(Object obj) {
        switch (this.f15655) {
            case 0:
                return true;
            case 1:
                return true;
            case 2:
                return obj.toString().startsWith("data:image");
            default:
                return true;
        }
    }

    @Override // p383.InterfaceC4578
    /* renamed from: ﹳٴ */
    public final C4586 mo4900(Object obj, int i, int i2, C1144 c1144) {
        switch (this.f15655) {
            case 0:
                C4593 c4593 = (C4593) obj;
                return new C4586(c4593, new C4210((InterfaceC2947) this.f15654, c4593));
            case 1:
                byte[] bArr = (byte[]) obj;
                return new C4586(new C2765(bArr), new C4601(bArr, 1, (C4579) this.f15654));
            case 2:
                return new C4586(new C2765(obj), new C2875(1, obj.toString(), (C4579) this.f15654));
            default:
                File file = (File) obj;
                return new C4586(new C2765(file), new C2875(2, file, (C4579) this.f15654));
        }
    }
}

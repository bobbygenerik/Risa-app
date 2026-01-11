package p366;

import android.graphics.ImageDecoder;
import java.io.InputStream;
import java.nio.ByteBuffer;
import p031.C1144;
import p031.InterfaceC1139;
import p080.InterfaceC1710;
import p087.AbstractC1748;
import p138.C2353;

/* renamed from: ᵔﹶ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4494 implements InterfaceC1139 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C2353 f16846;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f16847;

    public C4494(int i) {
        this.f16847 = i;
        switch (i) {
            case 1:
                this.f16846 = new C2353();
                return;
            default:
                this.f16846 = new C2353();
                return;
        }
    }

    @Override // p031.InterfaceC1139
    /* renamed from: ⁱˊ */
    public final InterfaceC1710 mo3568(Object obj, int i, int i2, C1144 c1144) {
        switch (this.f16847) {
            case 0:
                return this.f16846.m5439(ImageDecoder.createSource((ByteBuffer) obj), i, i2, c1144);
            default:
                return this.f16846.m5439(ImageDecoder.createSource(AbstractC1748.m4709((InputStream) obj)), i, i2, c1144);
        }
    }

    @Override // p031.InterfaceC1139
    /* renamed from: ﹳٴ */
    public final /* bridge */ /* synthetic */ boolean mo3569(Object obj, C1144 c1144) {
        switch (this.f16847) {
            case 0:
                return true;
            default:
                return true;
        }
    }
}

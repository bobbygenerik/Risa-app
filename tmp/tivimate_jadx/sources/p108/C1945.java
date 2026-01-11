package p108;

import com.bumptech.glide.load.data.C0227;
import java.util.ArrayDeque;
import p031.C1143;
import p031.C1144;
import p383.C4585;
import p383.C4586;
import p383.C4593;
import p383.C4594;
import p383.InterfaceC4578;
import ᐧﹳ.ʽ;

/* renamed from: ˆᴵ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1945 implements InterfaceC4578 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C1143 f7720 = C1143.m3576(2500, "com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout");

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ʽ f7721;

    public C1945(ʽ r1) {
        this.f7721 = r1;
    }

    @Override // p383.InterfaceC4578
    /* renamed from: ⁱˊ */
    public final /* bridge */ /* synthetic */ boolean mo4899(Object obj) {
        return true;
    }

    @Override // p383.InterfaceC4578
    /* renamed from: ﹳٴ */
    public final C4586 mo4900(Object obj, int i, int i2, C1144 c1144) {
        C4593 c4593 = (C4593) obj;
        ʽ r4 = this.f7721;
        if (r4 != null) {
            C4585 c4585 = (C4585) r4.ᴵˊ;
            C4594 m9139 = C4594.m9139(c4593);
            Object m4691 = c4585.m4691(m9139);
            ArrayDeque arrayDeque = C4594.f17110;
            synchronized (arrayDeque) {
                arrayDeque.offer(m9139);
            }
            C4593 c45932 = (C4593) m4691;
            if (c45932 == null) {
                c4585.m4689(C4594.m9139(c4593), c4593);
            } else {
                c4593 = c45932;
            }
        }
        return new C4586(c4593, new C0227(c4593, ((Integer) c1144.m3577(f7720)).intValue()));
    }
}

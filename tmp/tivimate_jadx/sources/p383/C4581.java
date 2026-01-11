package p383;

import android.net.Uri;
import com.bumptech.glide.load.data.AbstractC0225;
import com.bumptech.glide.load.data.C0226;
import com.bumptech.glide.load.data.InterfaceC0220;
import j$.util.DesugarCollections;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import p031.C1144;
import p185.C2765;

/* renamed from: ⁱʼ.ʾˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4581 implements InterfaceC4578 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final Set f17073 = DesugarCollections.unmodifiableSet(new HashSet(Arrays.asList("file", "content", "android.resource")));

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Object f17074;

    public C4581(C4597 c4597) {
        this.f17074 = c4597;
    }

    @Override // p383.InterfaceC4578
    /* renamed from: ⁱˊ */
    public final boolean mo4899(Object obj) {
        return f17073.contains(((Uri) obj).getScheme());
    }

    @Override // p383.InterfaceC4578
    /* renamed from: ﹳٴ */
    public final C4586 mo4900(Object obj, int i, int i2, C1144 c1144) {
        InterfaceC0220 c0226;
        Uri uri = (Uri) obj;
        C2765 c2765 = new C2765(uri);
        C4597 c4597 = (C4597) this.f17074;
        switch (c4597.f17114) {
            case 0:
                c0226 = new C0226(c4597.f17113, uri, 0);
                break;
            case 1:
                c0226 = new C0226(c4597.f17113, uri, 1);
                break;
            default:
                c0226 = new AbstractC0225(1, uri, c4597.f17113);
                break;
        }
        return new C4586(c2765, c0226);
    }
}

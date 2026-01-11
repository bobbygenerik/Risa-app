package p108;

import android.content.Context;
import android.net.Uri;
import p031.C1144;
import p185.C2765;
import p191.C2875;
import p191.C2876;
import p366.C4475;
import p383.C4586;
import p383.C4601;
import p383.InterfaceC4578;
import ﹳٴ.ﹳٴ;

/* renamed from: ˆᴵ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1941 implements InterfaceC4578 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Context f7703;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f7704;

    public C1941(Context context, int i) {
        this.f7704 = i;
        switch (i) {
            case 1:
                this.f7703 = context.getApplicationContext();
                return;
            case 2:
                this.f7703 = context;
                return;
            default:
                this.f7703 = context.getApplicationContext();
                return;
        }
    }

    @Override // p383.InterfaceC4578
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean mo4899(Object obj) {
        switch (this.f7704) {
            case 0:
                Uri uri = (Uri) obj;
                return ﹳٴ.ʽʽ(uri) && !uri.getPathSegments().contains("video");
            case 1:
                Uri uri2 = (Uri) obj;
                return ﹳٴ.ʽʽ(uri2) && uri2.getPathSegments().contains("video");
            default:
                return ﹳٴ.ʽʽ((Uri) obj);
        }
    }

    @Override // p383.InterfaceC4578
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C4586 mo4900(Object obj, int i, int i2, C1144 c1144) {
        Long l;
        switch (this.f7704) {
            case 0:
                Uri uri = (Uri) obj;
                if (i == Integer.MIN_VALUE || i2 == Integer.MIN_VALUE || i > 512 || i2 > 384) {
                    return null;
                }
                C2765 c2765 = new C2765(uri);
                Context context = this.f7703;
                return new C4586(c2765, C2875.m6374(context, uri, new C2876(context.getContentResolver(), 0)));
            case 1:
                Uri uri2 = (Uri) obj;
                if (i == Integer.MIN_VALUE || i2 == Integer.MIN_VALUE || i > 512 || i2 > 384 || (l = (Long) c1144.m3577(C4475.f16748)) == null || l.longValue() != -1) {
                    return null;
                }
                C2765 c27652 = new C2765(uri2);
                Context context2 = this.f7703;
                return new C4586(c27652, C2875.m6374(context2, uri2, new C2876(context2.getContentResolver(), 1)));
            default:
                Uri uri3 = (Uri) obj;
                return new C4586(new C2765(uri3), new C4601(this.f7703, 0, uri3));
        }
    }
}

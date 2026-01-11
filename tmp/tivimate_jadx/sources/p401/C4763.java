package p401;

import android.graphics.Typeface;
import p143.AbstractC2392;
import ᴵˋ.ˊʻ;

/* renamed from: ﹳ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4763 extends AbstractC2392 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final /* synthetic */ C4762 f17993;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final /* synthetic */ ˊʻ f17994;

    public C4763(C4762 c4762, ˊʻ r2) {
        this.f17993 = c4762;
        this.f17994 = r2;
    }

    @Override // p143.AbstractC2392
    /* renamed from: ʼˎ */
    public final void mo5307(int i) {
        this.f17993.f17987 = true;
        this.f17994.ˈٴ(i);
    }

    @Override // p143.AbstractC2392
    /* renamed from: ˆʾ */
    public final void mo5308(Typeface typeface) {
        C4762 c4762 = this.f17993;
        c4762.f17978 = Typeface.create(typeface, c4762.f17981);
        c4762.f17987 = true;
        this.f17994.ᴵᵔ(c4762.f17978, false);
    }
}

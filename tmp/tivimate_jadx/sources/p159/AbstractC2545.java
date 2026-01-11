package p159;

import android.support.v4.media.session.ⁱˊ;
import p034.InterfaceC1195;
import p417.InterfaceC4930;

/* renamed from: ˊˎ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2545 implements InterfaceC4930 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public boolean f9650;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final InterfaceC1195 f9651;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final String f9652;

    public AbstractC2545(InterfaceC1195 interfaceC1195, String str) {
        this.f9651 = interfaceC1195;
        this.f9652 = str;
    }

    @Override // p417.InterfaceC4930
    /* renamed from: ʼˈ */
    public final boolean mo3390() {
        return getLong(0) != 0;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m5699() {
        if (this.f9650) {
            ⁱˊ.ʻٴ(21, "statement is closed");
            throw null;
        }
    }
}

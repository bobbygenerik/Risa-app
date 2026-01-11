package p110;

import android.graphics.Typeface;
import com.google.android.material.chip.Chip;
import p129.C2180;
import p129.InterfaceC2187;
import ᴵˋ.ˊʻ;

/* renamed from: ˆᵢ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1951 extends ˊʻ {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ int f7732;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final /* synthetic */ Object f7733;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1951(int i, Object obj) {
        super(19);
        this.f7732 = i;
        this.f7733 = obj;
    }

    /* renamed from: ʼˈ, reason: contains not printable characters */
    private final void m4906(int i) {
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final void m4907(int i) {
        switch (this.f7732) {
            case 0:
                return;
            default:
                C2180 c2180 = (C2180) this.f7733;
                c2180.f8551 = true;
                InterfaceC2187 interfaceC2187 = (InterfaceC2187) c2180.f8552.get();
                if (interfaceC2187 != null) {
                    C1953 c1953 = (C1953) interfaceC2187;
                    c1953.m4935();
                    c1953.invalidateSelf();
                    return;
                }
                return;
        }
    }

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final void m4908(Typeface typeface, boolean z) {
        switch (this.f7732) {
            case 0:
                Chip chip = (Chip) this.f7733;
                C1953 c1953 = chip.f2681;
                chip.setText(c1953.f7761 ? c1953.f7777 : chip.getText());
                chip.requestLayout();
                chip.invalidate();
                return;
            default:
                if (z) {
                    return;
                }
                C2180 c2180 = (C2180) this.f7733;
                c2180.f8551 = true;
                InterfaceC2187 interfaceC2187 = (InterfaceC2187) c2180.f8552.get();
                if (interfaceC2187 != null) {
                    C1953 c19532 = (C1953) interfaceC2187;
                    c19532.m4935();
                    c19532.invalidateSelf();
                    return;
                }
                return;
        }
    }
}

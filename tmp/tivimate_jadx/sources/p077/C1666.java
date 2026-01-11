package p077;

import android.os.Bundle;
import androidx.lifecycle.EnumC0174;
import androidx.lifecycle.EnumC0199;
import androidx.lifecycle.InterfaceC0162;
import androidx.lifecycle.InterfaceC0183;
import java.util.LinkedHashMap;
import p333.InterfaceC4203;
import יˋ.ˈ;
import ᵎˉ.ⁱˊ;

/* renamed from: ʿʻ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1666 {

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public boolean f6772;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public boolean f6773;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final ˈ f6775;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC4203 f6776;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public Bundle f6777;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final ⁱˊ f6770 = new Object();

    /* renamed from: ˈ, reason: contains not printable characters */
    public final LinkedHashMap f6771 = new LinkedHashMap();

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public boolean f6774 = true;

    /* JADX WARN: Type inference failed for: r1v1, types: [ᵎˉ.ⁱˊ, java.lang.Object] */
    public C1666(InterfaceC4203 interfaceC4203, ˈ r2) {
        this.f6776 = interfaceC4203;
        this.f6775 = r2;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m4552() {
        InterfaceC4203 interfaceC4203 = this.f6776;
        if (interfaceC4203.mo691().f1076 != EnumC0199.f1104) {
            throw new IllegalStateException("Restarter must be created only during owner's initialization stage");
        }
        if (this.f6772) {
            throw new IllegalStateException("SavedStateRegistry was already attached.");
        }
        this.f6775.ʽ();
        interfaceC4203.mo691().m714(new InterfaceC0183() { // from class: ʿʻ.ﹳٴ
            @Override // androidx.lifecycle.InterfaceC0183
            /* renamed from: ᵎﹶ */
            public final void mo679(InterfaceC0162 interfaceC0162, EnumC0174 enumC0174) {
                EnumC0174 enumC01742 = EnumC0174.ON_START;
                C1666 c1666 = C1666.this;
                if (enumC0174 == enumC01742) {
                    c1666.f6774 = true;
                } else if (enumC0174 == EnumC0174.ON_STOP) {
                    c1666.f6774 = false;
                }
            }
        });
        this.f6772 = true;
    }
}

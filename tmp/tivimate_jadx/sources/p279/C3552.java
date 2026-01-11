package p279;

import androidx.lifecycle.C0184;
import androidx.lifecycle.EnumC0174;
import androidx.lifecycle.EnumC0199;
import androidx.lifecycle.InterfaceC0162;
import androidx.lifecycle.InterfaceC0176;
import androidx.lifecycle.InterfaceC0179;
import java.util.ArrayList;
import java.util.HashSet;
import p087.AbstractC1746;

/* renamed from: ٴʽ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3552 implements InterfaceC3550, InterfaceC0179 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final HashSet f13898 = new HashSet();

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C0184 f13899;

    public C3552(C0184 c0184) {
        this.f13899 = c0184;
        c0184.m714(this);
    }

    @InterfaceC0176(EnumC0174.ON_DESTROY)
    public void onDestroy(InterfaceC0162 interfaceC0162) {
        ArrayList m4700 = AbstractC1746.m4700(this.f13898);
        int size = m4700.size();
        int i = 0;
        while (i < size) {
            Object obj = m4700.get(i);
            i++;
            ((InterfaceC3540) obj).mo1163();
        }
        interfaceC0162.mo691().m715(this);
    }

    @InterfaceC0176(EnumC0174.ON_START)
    public void onStart(InterfaceC0162 interfaceC0162) {
        ArrayList m4700 = AbstractC1746.m4700(this.f13898);
        int size = m4700.size();
        int i = 0;
        while (i < size) {
            Object obj = m4700.get(i);
            i++;
            ((InterfaceC3540) obj).mo1160();
        }
    }

    @InterfaceC0176(EnumC0174.ON_STOP)
    public void onStop(InterfaceC0162 interfaceC0162) {
        ArrayList m4700 = AbstractC1746.m4700(this.f13898);
        int size = m4700.size();
        int i = 0;
        while (i < size) {
            Object obj = m4700.get(i);
            i++;
            ((InterfaceC3540) obj).mo1159();
        }
    }

    @Override // p279.InterfaceC3550
    /* renamed from: ʽ */
    public final void mo7497(InterfaceC3540 interfaceC3540) {
        this.f13898.remove(interfaceC3540);
    }

    @Override // p279.InterfaceC3550
    /* renamed from: ˑﹳ */
    public final void mo7498(InterfaceC3540 interfaceC3540) {
        this.f13898.add(interfaceC3540);
        EnumC0199 enumC0199 = this.f13899.f1076;
        if (enumC0199 == EnumC0199.f1101) {
            interfaceC3540.mo1163();
        } else if (enumC0199.m733(EnumC0199.f1102)) {
            interfaceC3540.mo1160();
        } else {
            interfaceC3540.mo1159();
        }
    }
}

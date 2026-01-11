package p279;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
import p066.InterfaceC1616;
import p087.AbstractC1746;

/* renamed from: ٴʽ.ˏי, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3547 implements InterfaceC3540 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Set f13894 = Collections.newSetFromMap(new WeakHashMap());

    @Override // p279.InterfaceC3540
    /* renamed from: ʽ */
    public final void mo1159() {
        ArrayList m4700 = AbstractC1746.m4700(this.f13894);
        int size = m4700.size();
        int i = 0;
        while (i < size) {
            Object obj = m4700.get(i);
            i++;
            ((InterfaceC1616) obj).mo1159();
        }
    }

    @Override // p279.InterfaceC3540
    /* renamed from: ˆʾ */
    public final void mo1160() {
        ArrayList m4700 = AbstractC1746.m4700(this.f13894);
        int size = m4700.size();
        int i = 0;
        while (i < size) {
            Object obj = m4700.get(i);
            i++;
            ((InterfaceC1616) obj).mo1160();
        }
    }

    @Override // p279.InterfaceC3540
    /* renamed from: ٴﹶ */
    public final void mo1163() {
        ArrayList m4700 = AbstractC1746.m4700(this.f13894);
        int size = m4700.size();
        int i = 0;
        while (i < size) {
            Object obj = m4700.get(i);
            i++;
            ((InterfaceC1616) obj).mo1163();
        }
    }
}
